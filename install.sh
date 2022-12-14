#!/bin/sh
cp etc/udev/rules.d/70-rosemary.rules /etc/udev/rules.d/70-rosemary.rules
mkdir -p /etc/ofono/ril_subscription.d/
cp etc/ofono/ril_subscription.d/mtk.conf /etc/ofono/ril_subscription.d/mtk.conf
cp etc/ofono/main.conf /etc/ofono/main.conf
mkdir -p /etc/phosh/
cp etc/phosh/phoc.ini /etc/phosh/phoc.ini
cp etc/modules-load.d/performance.conf /etc/modules-load.d/performance.conf
cp etc/modules-load.d/connectivity.conf /etc/modules-load.d/connectivity.conf
cp etc/pulse/default.pa /etc/pulse/default.pa
mkdir -p /usr/include/pulsecore/
mkdir -p /usr/include/pulsecore/modules/
mkdir -p /usr/include/pulsecore/modules/droid/
cp usr/include/pulsecore/modules/droid/* /usr/include/pulsecore/modules/droid/
mkdir -p /usr/lib/pkgconfig/
cp usr/lib/pkgconfig/libdroid-util.c /usr/lib/pkgconfig/libdroid-util.pc
cp usr/lib/pulse-14.2/modules/* /usr/lib/pulse-14.2/modules/
cp usr/lib/droid-vendor-overlay/etc/audio_policy_configuration.xml /usr/lib/droid-vendor-overlay/etc/audio_policy_configuration.xml
mkdir -p /usr/lib/systemd/user/pulseaudio.service.d
cp usr/lib/systemd/user/pulseaudio.service.d/10-rosemary.conf /usr/lib/systemd/user/pulseaudio.service.d/10-rosemary.conf
cp etc/systemd/system/ssh-fix.service /etc/systemd/system/ssh-fix.service
cp etc/systemd/system/modules.service /etc/systemd/system/modules.service
cp etc/systemd/system/gralloc.service /etc/systemd/system/gralloc.service
cp etc/systemd/system/brightness.service /etc/systemd/system/brightness.service
cp etc/systemd/system/audiopolicy.service /etc/systemd/system/audiopolicy.service
cp etc/systemd/system/wlan.service /etc/systemd/system/wlan.service
systemctl enable ssh-fix
systemctl enable modules
systemctl enable gralloc
systemctl enable brightness
systemctl enable audiopolicy
systemctl enable wlan
