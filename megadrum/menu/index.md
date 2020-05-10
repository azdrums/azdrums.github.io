---
title: "General info about MegaDrum Menu"
cards: "cards-megadrum"
---
When MegaDrum starts it first shows a copyright info for a couple of seconds:
```
<MegaDrum.info >
<(c)D.Skachkov >
```
and after that switches into a "VU meters" mode and shows two rows of 16 blocks:
```
_______________
_______________
```
The top left block shows HiHat pedal position. The bottom left block shows Kick
activity. The rest of the top blocks show hit levels on Head/Bow channels.
The rest of the bottom blocks show hit levels on Rim/Edge channels.
If you set 'Big VU Meter' to Yes then the whole top raw of blocks will show HiHat
pedal position and the whole bottom raw will show hit levels from all channels.

Press any key to enter the Menu. After you entered the Menu you can navigate
between settings with keys LEFT/RIGHT. Once you navigated to a desired setting
you can change it by pressing keys UP/DOWN.

First two screens of Menu are informational rather configurations settings.
The first shows copyright info and the second shows Firmware version and the
Atmega's crystal frequency, e.g. "20110417 20MHz". While on the first screen you
can change LCD contrast by pressing UP/DOWN.

MegaDrum autmatically exits the Menu after 10 seconds of inactivity. You can
force MegaDrum to quit the Menu by quickly pressing and releasing the HiHat pedal.

If your MegaDrum also has rotary encoders, you can use them to navigate or
change config values. The left encoder is used for navigating the menu and the
right encoder is used for changing config values. You can also use a
"single encoder" operation mode if your left encoder has a built-in
LEFT key (button). In the "single encoder" operation mode the left encoder can
be used both for navigating the menu and changing config values.
The "single encoder" operation mode is enabled/disabled by pressing keys
LEFT and RIGHT simultaneously. When the "single encoder" operation mode is
disabled (default) the menu shows standard "filled up/down arrows" in the bottom
rightmost LCD character block. When the "single encoder" operation mode is
enabled the menu shows  "empty left/right arrows" if the encoder is in
the LEFT/RIGHT mode or "empty UP/DOWN arrows" if the encoder is in
the UP/DOWN mode. When the "single encoder" operation mode is enabled, switching
between LEFT/RIGHT and UP/DOWN modes is toggled by pressing the left encoder's
built-in button.
