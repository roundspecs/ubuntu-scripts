# Install Command Line Tools
From here: https://developer.android.com/studio#command-line-tools-only

# Install Java 17
```sh
sudo apt install openjdk-17-jre
sudo apt install openjdk-17-jdk
```

# Create a directory for the Android SDK
```sh
cd ~
mkdir Android
cd Android
mkdir cmdline-tools
cd cmdline-tools
mkdir latest
```

# Unzip and move the downloaded command line tools to the directory
```sh
cd ~/Downloads
unzip commandlinetools-linux-*_latest.zip
mv cmdline-tools/* ~/Android/cmdline-tools/latest
```

# Set the environment variable
```sh
echo 'export ANDROID=$HOME/Android' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID/cmdline-tools/latest/bin' >> ~/.bashrc
echo 'export PATH=$ANDROID/platform-tools:$PATH'
source ~/.bashrc
```

# Install the SDK
For checking all the available packages:
```sh
sdkmanager --sdk_root=$ANDROID --list
```

Then install the required packages:
N.B. The following command installs the latest version of the packages. If you want to install a specific version, you can specify it in the command.
```sh
sdkmanager --sdk_root=$ANDROID "platform-tools" "platforms;android-31" "build-tools;31.0.0" "commandlinetools;latest"
```

# Accept the licenses
```sh
sdkmanager --sdk_root=$ANDROID --licenses
```

# Install the emulator
```sh
sdkmanager --sdk_root=$ANDROID "emulator"
```

# Create an emulator
```sh
avdmanager create avd -n test -k "system-images;android-31;google_apis;x86_64"
```

# Start the emulator
```sh
emulator @test
```