# PhonePe Bulk Gift Card Adder Automation 🚀

A lightweight Windows Batch script that automates the tedious process of adding multiple gift cards (vouchers and PINs) to your PhonePe wallet using **ADB (Android Debug Bridge)**. Instead of typing each 16-digit alphanumeric code and PIN manually, this script reads data directly from an Excel-compatible CSV file and types/clicks them via simulated touches.

---

## 🛠️ Prerequisites

Before running the script, make sure you have the following setup on your Windows machine:

1. **Android SDK Platform-Tools (ADB):** Download the official tools from Google and ensure `adb.exe` is working.
2. **USB Debugging Enabled:** * Go to **Settings > About Phone** on your Android device.
   * Tap **Build Number** 7 times to unlock Developer Options.
   * Go to **Developer Options** and enable **USB Debugging** (Xiaomi/Oppo users must also enable *USB Debugging - Security Settings*).
3. **Connect via USB:** Ensure your phone is connected to your laptop and running `adb devices` shows your authorized device.
4. Make csv file of name vouchers.csv and keep the codes you want to add in there.
5. Keep in mind per day only 10 gvs can be added 
---

## 📂 Repository Structure

Keep these files in the exact same directory (inside your `platform-tools` folder):

```text
├── platform-tools/
│   ├── adb.exe
│   ├── phonepe.bat   <-- (Paste the script code here)
│   └── vouchers.csv  <-- (Your gift card data)
