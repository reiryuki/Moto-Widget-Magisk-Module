MODPATH=${0%/*}
APP="`ls $MODPATH/system/priv-app | sed 's/Moto//'`
     `ls $MODPATH/system/app | sed 's/Moto//'`"
for APPS in $APP; do
  rm -f `find /data/system/package_cache -type f -name *$APPS*`
  rm -f `find /data/dalvik-cache /data/resource-cache -type f -name *$APPS*.apk`
done
PKG=`cat $MODPATH/package.txt`
for PKGS in $PKG; do
  rm -rf /data/user*/*/$PKGS/cache/*
done


