uninstall_apps() {
    if ! command -v adb &> /dev/null; then
        echo "ADB is not installed. Please install ADB and try again."
        exit 1
    fi

    if ! adb devices | grep -q 'device$'; then
        echo "Connect your cellphone to your computer"
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
        "com.google.android.apps.wellbeing"
        "com.google.android.calendar"
        "com.google.android.gm"
        "com.google.android.gms.location.history"
        "com.google.android.marvin.talkback"
        "com.google.android.projection.gearhead"
        "com.google.android.syncadapters.contacts"
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

    read -p "Are you sure you want to uninstall ${#apps[@]} apps? (y/n): " -n 1 -r
    echo    
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Aborting uninstallation."
        exit 1
    fi

    for app in "${apps[@]}"; do
        echo "Uninstalling $app..."
        if adb shell pm uninstall -k --user 0 "$app"; then
            echo "Done"
        else
            echo "Failed to uninstall $app"
        fi
    done

    echo "Apps uninstalled."
}

uninstall_apps
