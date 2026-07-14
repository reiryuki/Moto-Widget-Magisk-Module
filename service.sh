MODPATH=${0%/*}

# log
LOGFILE=$MODPATH/debug.log
exec 2>$LOGFILE
set -x

# var
API=`getprop ro.build.version.sdk`

# wait
until [ "`getprop sys.boot_completed`" == 1 ]; do
  sleep 10
done

# list
PKGS="`cat $MODPATH/package.txt`
       com.motorola.timeweatherwidget:another
       com.motorola.timeweatherwidget:dna_config_builder"
for PKG in $PKGS; do
  magisk --denylist rm $PKG 2>/dev/null
  magisk --sulist add $PKG 2>/dev/null
done
if magisk magiskhide sulist; then
  for PKG in $PKGS; do
    magisk magiskhide add $PKG
  done
else
  for PKG in $PKGS; do
    magisk magiskhide rm $PKG
  done
fi

# grant
PKG=com.motorola.timeweatherwidget
if appops get $PKG >/dev/null 2>&1; then
  pm grant --all-permissions $PKG
  appops set $PKG SYSTEM_ALERT_WINDOW allow
  if [ "$API" -ge 30 ]; then
    appops set $PKG AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
  fi
  if [ "$API" -ge 33 ]; then
    appops set $PKG ACCESS_RESTRICTED_SETTINGS allow
  fi
  PKGOPS=`appops get $PKG`
  UID=`grep "^$PKG " /data/system/packages.list | awk '{print $2}'`
  if [ "$UID" ] && [ "$UID" -gt 9999 ]; then
    UIDOPS=`appops get --uid "$UID"`
  fi
fi
# function
stop_log() {
SIZE=`du $LOGFILE | sed "s|$LOGFILE||g"`
if [ "$LOG" != stopped ] && [ "$SIZE" -gt 25 ]; then
  exec 2>/dev/null
  set +x
  LOG=stopped
fi
}
start_service() {
stop_log
sleep 300
am start-service $SERVICE
start_service
}
# service
SERVICE=$PKG/com.motorola.commandcenter.WidgetService
am start-service $SERVICE
start_service






