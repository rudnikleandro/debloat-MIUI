# Debloat Script for Unnecessary Programs in Xiaomi Phones
This script is designed to help you debloat unnecessary applications from your Android device using adb (Android Debug Bridge). Follow the instructions below to configure your phone and computer.

Phone Configuration:
Enable Developer Mode
Go to your phone's settings, find About phone, and tap Build number 7 times to enable Developer Mode.

Enable USB Debugging
In Developer Mode settings, enable the following options:

"USB Debugging"
"USB Debugging (Security Config.)"
"USB apps"

## Computer Configuration (RHEL-based systems)
1. Install adb
Open a terminal and run:

```sudo dnf install adb```

2. Update your system
Run the following commands to ensure your system is up to date:

```sudo dnf update```

3. Verify adb connection
Connect your phone to your computer via USB and run:

```adb devices```

Your phone should appear in the list of connected devices. If prompted on your phone, allow USB debugging.

4. Access the device shell
To access your phone's shell, run:

```sudo adb shell```

## Computer Configuration (Ubuntu-based systems)
1. Install adb
Run the following command to install adb on Ubuntu:

```sudo apt install adb```

2. Update your system
Run:

```sudo apt update```
```sudo apt upgrade```

3. Verify adb connection
Connect your phone and check the connection by running:

```adb devices```
```sudo adb shell```


