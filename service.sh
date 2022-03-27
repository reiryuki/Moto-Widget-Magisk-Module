(

MODPATH=${0%/*}
API=`getprop ro.build.version.sdk`

# debug
exec 2>$MODPATH/debug.log
set -x

# wait
sleep 60

# grant
PKG=com.motorola.timeweatherwidget
pm grant $PKG android.permission.ACCESS_FINE_LOCATION
pm grant $PKG android.permission.ACCESS_COARSE_LOCATION
pm grant $PKG android.permission.ACCESS_BACKGROUND_LOCATION
if [ "$API" -gt 29 ]; then
  appops set $PKG AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
fi

# grant
PKG=com.motorola.launcher3
pm grant $PKG android.permission.READ_EXTERNAL_STORAGE
pm grant $PKG android.permission.WRITE_EXTERNAL_STORAGE
pm grant $PKG android.permission.READ_PHONE_STATE
pm grant $PKG android.permission.CALL_PHONE
if [ "$API" -gt 29 ]; then
  appops set $PKG AUTO_REVOKE_PERMISSIONS_IF_UNUSED ignore
fi

) 2>/dev/null




