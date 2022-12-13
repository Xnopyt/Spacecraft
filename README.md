# Spacecraft-NX-MOD

- Resolved "NO SD" issues on Mariko (for some Samsung/Kingston cards)
- Power off by holding power for 3 seconds while on "NO SD" screen
- Boot to OFW by holding down VOL + (works with/without SD card)
  - Usage: Hold down VOL +, then press POWER. Release VOL + when modchip LED turns off or the logo shows up.
- Glitching behaviour from HWFLY-NX merged in
- Resolved staircasing text issue when debugging over serial
- Support for HWFLY-Toolbox

- Atmosphere-NX Updater
  - Place `package3` and `stratosphere.romfs` in the root directory (preferably via FTP) to update at boot time, since only these 2 files cannot be replaced in HorizonOS.
  - Say farewell to the annoying procedure of entering UMS Mode, plugging into PC, replacing files, disconnecting and reboot.
- Add fail-safe/secondary payload support: `bootloader/update.bin` from Hekate
- OLED-friendly "GUI": monochrome, black background color that only shows on OLED console

## How to update firmware w/o taking it apart

- If you have flashed HWFLY-NX, you could update the firmware and built-in payload(sdloader) by using HWFLY-toolbox
- Once flashed toolbox mode can be accessed by holding both volume buttons on power up and used the same as with HWFLY-NX

## What is this?

A fully opensource SX Core / Lite compatible firmware that lets you play a Space Invaders inspired mini-game and load any payload you like.

## Does it allow me to do piracy?
No, it doesn't. You can't even boot into Horizon OS using Spacecraft-NX by itself.

## Can it boot SX OS?
No, it can't. This firmware doesn't have their DRM.

## How can i boot Horizon OS then?
To do that you need a firmware like [Atmosphère](https://github.com/Atmosphere-NX) and a bootloader like [hekate](https://github.com/CTCaer/hekate) or fusée.

## Can i run [insert payload name here]?
If the payload is updated to support patched erista or/and mariko chips: yes

If the payload is only RCM compatible: you need to ask the developer for update.

## I love this! How can i install it?
For now you can't flash Spacecraft-NX without pluging in your modchip into your pc for the first time.
* Plug in your USB dongle into the modchip.
* Plug in your micro-usb cable into the dongle.
* Plug in the other end of the cable to your Windows PC. (Linux support is work in progress. Feel free to send in a PR for OS X)
* Download the [latest release](https://github.com/Spacecraft-NX/firmware/releases).
* Unpack the archive
* Double click the flash.bat __DO NOT UNPLUG THE USB CABLE IN THE MIDDLE OF FLASHING OR YOU BRICK THE CHIP__
* Wait till it says `!!!DONE!!!`
* Copy the payload into the root of the sdcard and rename it to `payload.bin`
* On the first boot up your chip will enter into a training session, blinking yellow. This may take up to 30 minutes. (Recommended to plug in a charger)
* After the initial training the chip will blink magenta and turn green upon successful boot up.

## HELP! I got `Spacecraft-NX DFU not found!` message. 
Don't worry. Windows still installing the drivers.

Calm down and try again.
