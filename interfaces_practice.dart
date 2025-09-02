abstract class Device {
  void turnOn();
  void turnOff();
  void showStatus() {
    print("Device is working fine");
  }
}

class WifiEnabled {
  void connectToWifi(String ssid) {}
}

class BluetoothEnabled {
  void connectToBluetooth(String deviceName) {}
}

class Phone extends Device {
  @override
  void turnOff() {
    print("Device is now OFF");
  }

  @override
  void turnOn() {
    print("Device is now ON");
  }

  void makeCall(String number) {
    print('Calling ${number}...');
  }
}

class SmartPhone extends Phone implements WifiEnabled, BluetoothEnabled {
  @override
  void connectToBluetooth(String deviceName) {
    print('Connected to bluetooth device: ${deviceName}');
  }

  @override
  void connectToWifi(String ssid) {
    print('Connected to wifi: ${ssid}');
  }

  void installApp(String appName) {
    print('App installed: ${appName}');
  }
}

void main() {
  SmartPhone myPhone = SmartPhone();

  myPhone.turnOn();
  myPhone.connectToWifi("Home_Network");
  myPhone.connectToBluetooth("Wireless_Headset");
  myPhone.installApp("WhatsApp");
  myPhone.installApp("Spotify");
  myPhone.makeCall("9876543210");
  myPhone.showStatus();
  myPhone.turnOff();
}
