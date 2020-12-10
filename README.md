# themes

Theme files for my Arch Linux setup, centered mainly around the Adapta-Nokto theme.

I made this repo so that I can quickly setup my system in case of a reinstall / shift to new laptop. I'm basically pushing my `~/.themes` folder here, so this has a lot of stuff that was written by other people. I don't mean to kang it in any way, and will try to give the original repo source (or atleast the source I downloaded it from if I cannot find the repo) so that the developers get the credit they deserve.

## What's in this repo

### Adapta-Nokto

The basic GTK3 Theme that the system follows. Uses Material design with a cyan-blue color scheme. Downloaded from the Cinnamon Themes centre.

[The original source can be found here](https://github.com/adapta-project/adapta-gtk-theme).

### GRUB2 theme

I use the `Slaze` theme from this pack. To install it, simply run

```shell
install.sh --slaze
```

and it will generate all the config files and install the theme for you. A readme (from the original repo) is present in the folder with more detailed instructions.

[The original source can be found here](https://github.com/vinceliuice/grub2-themes)

### Mailspring Material Adapted

An Adapta-Nokto based Material theme for the Mailspring mail client. You can just go to

    Mailspring -> Edit -> Install theme -> select this folder

and Mailspring will install this theme. You do not need this folder after installing. To set the theme, go to

    Mailspring -> Edit -> Change theme -> select `Material`

Maybe not the best visibility wise, but I can live with it and tbh can't find anything better or even close to this.

[The original source can be found here](https://github.com/ferlanero/mailspring-material-adapted)

### Adapta Nokto tdesktop-theme

Adapta Nokto theme for Telegram Desktop application, with a few colour corrections of my own. To install, open telegram-desktop, go to

    Settings -> Chat Settings -> Chat Backgrounds -> Choose from file and select this file.

[The original source can be found here](https://github.com/fabiom/adapta-nokto-telegram-desktop)

### MinimalX VLC

This is probably the only thing in here that is not Adapta-Nokto themed, cuz I didn't like the base VLC interface even after dressing it up in Adapta-Nokto theme. This instead gives a sleek minimal feel that really modernises VLC. To use this, go to

    VLC -> Tools -> Preferences -> Use Custom Skin -> choose this file

[No repo found for this, but I think this download link is the original source](https://www.deviantart.com/maverick07x/art/VLC-MinimalX-385698882)

### Custom Tray Icons

Since some tray icons are not supported by my icon pack of choice (given below), the `custom-icons` folder contains custom tray icons made by taking icons from the icon pack and [iconfu](https://www.iconfu.com/). Scripts for updating as well as resetting the tray icons are also included in the app specific folders, along with the old and new icons.

## Qt5 applications

Since Adapta-Nokto used here is a GTK+ theme (and I use Cinnamon with mostly Gnome apps), we need to force all Qt5 to use the GTK2 theme with the help of the _Qt5 Configurator Tool_.

- Install the `qt5ct` and `qt5-styleplugins` packages

- Add the following to `~/.profile` or `/etc/environment`

  ```
  # Qt5 configurator
  QT_QPA_PLATFORMTHEME=qt5ct
  ```

- Reboot

- run `qt5ct` and set style to `gtk2`

## Suggested themes that are not included in this repo

### Icons

Adapta suggests you go with the [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), but I personally use [Sweet Rainbow Folders](https://github.com/EliverLara/Sweet-folders) with [Candy Icons](https://github.com/EliverLara/candy-icons) cuz I like the neon aesthetics (but the [Sweet theme](https://github.com/EliverLara/Sweet) was a little too much for me)

### Cursors

[Material Cursors](https://github.com/varlesh/material-cursors), default version.

### VS Code

The `Adapted` Extension gives proper Adapta-Nokto styling

### Jetbrains IDEs

Install the `Material Theme UI` plugin, then select the `Oceanic` theme

### Firefox

You can use the [Firefox Color Plugin](https://addons.mozilla.org/en-US/firefox/addon/firefox-color/) along with [Adapta Nokto theme](https://color.firefox.com/?theme=XQAAAALUAAAAAAAAAABBKYhm849SCiazH1KEGccwS-xNVAVNrWV6_89xtxNWy3sM0X99YG7itotZ8sB9kkK0owJCyKXJNAryj9IJU_wtu72r-X3skC4prCeW-fnJweq-4xu9tLmeXj8UkSdZGnzwrWVCNr3bToa6Zufrkj2b7e0PqstuOnN1gdAzjKSHwEJvdQThz-ruhge78cW2PaG0mCwQPvE72cX8OQiA) to apply the theme to Firefox.
