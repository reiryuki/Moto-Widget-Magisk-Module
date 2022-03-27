PKG="com.motorola.launcher3
     com.motorola.timeweatherwidget
     com.motorola.motosignature.app
     com.motorola.android.providers.settings"
for PKGS in $PKG; do
  rm -rf /data/user/*/$PKGS/cache/*
done


