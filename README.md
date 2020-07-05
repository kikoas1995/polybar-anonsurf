# Script: polybar-anonsurf

A small script to manage the ePrivacy state for ThinkPads.

![anonsurf](screenshot.png)


## Dependencies

* `anonsurf`, from ParrotOS. It is not tested with Kali Anonsurf.


## Configuration

In order to avoid the Zenity dialog box popping up, you have to manually edit the `/usr/bin/anonsurf` command and comment these lines:

```ini
#zenity --question --text="Do you want anonsurf to kill dangerous applications and clean some application caches?" --width 400 && kill_apps
#zenity --question --text="Do you want anonsurf to kill dangerous applications and clean some application caches?" --width 400 && kill_apps
#zenity --question --text="Do you want anonsurf to kill dangerous applications and clean some application caches?" --width 400 && kill_apps
```

## Module

```ini
[module/anonsurf]
type = custom/script
exec = /home/user/.config/polybar/polybar-scripts/anon.sh
interval = 5
click-left = /home/user/.config/polybar/polybar-scripts/anon.sh --toggle 
click-right = /home/user/.config/polybar/polybar-scripts/anon.sh --toggle 
format-underline = #70db70
```
