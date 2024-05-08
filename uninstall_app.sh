# Phone:
# 1 - Enable Developer Mode
# 2 - In Developer Mode, enable "USB Debbuging, "USB Debugging (Security Config.)" and "USB apps"

# Computer (RHEL):
# 1 - sudo dnf install adb
# 2 - sudo dnf update
# 3 - sudo dnf upgrade
# 4 - adb devices
# 5 - sudo adb shell

uninstall_apps() {
    adb devices >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "Connect your cellphone on your computer" 
        exit 1
    fi

    apps=(
    	"com.amazon.appmanager"
    	"com.facebook.services"
    	"com.facebook.system"
		"com.facebook.appmanager"
        "com.google.android.apps.googleassistant"
		"com.google.android.contacts"
		"com.google.android.documentsui"
		"com.google.android.googlequicksearchbox"
		"com.google.android.apps.subscriptions.red"
		"com.google.android.apps.walletnfcrel"
		"com.google.ar.lens"
		"com.google.android.apps.maps"
		"com.google.android.apps.subscriptions.red"
		"com.google.android.apps.walletnfcrel"
		"com.google.android.apps.wellbeing"
		"com.google.android.calendar"
		"com.google.android.gm"
		"com.google.android.gms.location.history"
		"com.google.android.googlequicksearchbox"
		"com.google.android.marvin.talkback"
		"com.google.android.projection.gearhead"
		"com.google.android.syncadapters.contacts"
		"com.google.android.apps.walletnfcrel"
		"com.google.ar.lens"
		"com.google.android.contacts"
		"com.mi.android.globalFileexplorer"
		"com.mi.globallayout"
		"com.miui.analytics"
		"com.miui.android.fashiongallery"
		"com.miui.backup"
		"com.miui.bugreport"
		"com.miui.cloudbackup"
		"com.miui.cloudservice"
		"com.miui.cloudservice.sysbase"
		"com.miui.face.overlay.miui"
		"com.miui.fm"
		"com.miui.fmservice"
		"com.miui.cleaner"
		"com.miui.freeform"
		"com.miui.gallery"
		"com.miui.hybrid"
		"com.miui.hybrid.accessory"
		"com.miui.mediaeditor"
		"com.miui.micloudsync"
		"com.miui.miservice"
		"com.miui.msa.global"
		"com.miui.phrase"
		"com.miui.videoplayer"
		"com.miui.yellowpage"
		"com.xiaomi.joyose"
		"com.xiaomi.micloud.sdk"
		"com.xiaomi.mipicks"
		"com.xiaomi.payment"
		"com.mi.android.globalminusscreen"
		"com.miui.face"
    )

    for app in "${apps[@]}"; do
        echo "Uninstalling $app..."
        adb shell pm uninstall -k --user 0 "$app"
        echo "Done"
    done

    echo "apps uninstalled"
}

uninstall_apps()