# Linux Related Knowledge

Various solutions and use-cases working with Linux.

## [<img src="https://gitlab.gnome.org/uploads/-/system/group/avatar/8/gnomelogo.png?height=24" height="24px" alt="Dconf Editor"> Dconf Editor](https://wiki.gnome.org/Apps/DconfEditor)

Viewer and editor of applications internal settings

### Custom Dconf configs

- Action when double-click on a running app. Suggested value: '**quit**' / default: 'launch':

`/org/gnome/shell/extensions/dash-to-dock/middle-click-action`

- Action when click on a running app. Suggested value: '**minimize**' / default: 'focus-or-previews':

`/org/gnome/shell/extensions/dash-to-dock/click-action`

- Action when scrolling a dock. Suggested value: '**cycle-windows**' / default: 'switch-workspace':

`/org/gnome/shell/extensions/dash-to-dock/scroll-action`

## [Gnome Sushi](https://en.wikipedia.org/wiki/GNOME_sushi) - Enable Quick Preview

Click on the file and hit Space to preview it.

`sudo apt install gnome-sushi`

## Fix Long Shutdown Time

Change shutdown default timeout: open `/etc/systemd/system.conf` & change **_#DefaultTimeoutStopSec=90s_** to **_DefaultTimeoutStopSec=5s_**

## [Microsoft fonts for Linux](https://packages.debian.org/buster/ttf-mscorefonts-installer)

Installer for Microsoft TrueType core fonts (Arial, Courier New, Georgia, Times New Roman, Trebuchet, Verdana, etc) to
be available in other apps.

`sudo apt-get install ttf-mscorefonts-installer`

## [<img src="https://lando.dev/favicon-32x32.png" height="24px" alt="Lando"> Lando](https://lando.dev/download) install

Coding at lightspeed.

### <img src="https://www.docker.com/favicon.ico" height="24px" alt="Docker"> Docker Engine (required)

[Docker installation](https://docs.docker.com/engine/install/ubuntu/) + [post-installation steps](https://docs.docker.com/engine/install/linux-postinstall/)

Set channel + [Make the "unsupported docker" warning less obtrusive](https://github.com/lando/lando/issues/3511#issuecomment-1904519771): open `~/.lando/config.yml` & add / modify:

```YAML
channel: none
dockerSupportedVersions:
  engine:
    satisfies: '>22'
    tested: '>22'
```

Original config: https://github.com/lando/core/blob/main/config.yml

Download [.zshrc](https://raw.githubusercontent.com/mr-valters/gists/main/assets/.zshrc) to configure shell scripts (zsh). Place it in Your `$HOME` directory.

[**Fira Code**](https://github.com/tonsky/FiraCode): Monospaced font that render ligatures (character sequences).

`sudo apt install fonts-firacode`

## [<img src="https://ohmyz.sh/favicon.ico" height="24px" alt="Oh My ZSH!"> Oh My ZSH!](https://ohmyz.sh/)

Framework for managing your zsh configuration.

1. Prerequisite (zsh, curl / wget, git): `sudo apt install zsh curl wget git ruby`

2. [Install oh-my-zsh](https://ohmyz.sh/#install)

## [<img src="https://spaceship-prompt.sh/assets/favicon.ico" height="24px" alt="Spaceship Prompt"> Spaceship Prompt](https://spaceship-prompt.sh/)

Minimalistic, powerful and extremely customizable ZSH prompt.

Basic [Installation](https://github.com/spaceship-prompt/spaceship-prompt#-installation) & update steps. Pick manual for **Oh-My-Zsh**

## [<img src="https://user-images.githubusercontent.com/139536/30827652-08e9b684-a265-11e7-95fb-50cbd2fb7c0d.png" height="24px" alt="SCM Breeze"> SCM Breeze](https://github.com/scmbreeze/scm_breeze#installation)

Set of shell scripts (for bash and zsh) that enhance your interaction with git.
Update SCM Breeze: `update_scm_breeze`

### Git global config

Store your credentials : `git config --global credential.helper store`

Automatically set up remote tracking on push: `git config --global push.autoSetupRemote true`

Push current branch to remote with the same name: `git config --global push.default current`

Set Nano as the default editor for Git: `git config --global core.editor "nano --wait"`

Set user email for commits: `git config --global user.email "may@domain.com"`

Set user name for commits: `git config --global user.name "Firstname Lastname"`

## Ubuntu Desktop, basics

Fix common issues by reinstalling Ubuntu Desktop: `sudo apt install ubuntu-desktop`

Remove unwanted Ubuntu Desktop apps. Example: `sudo apt-get remove --auto-remove rhythmbox`

Libre office extension: [Laviešu spellcheck](https://extensions.libreoffice.org/en/extensions/show/latviesu-valodas-pareizrakstibas-parbaudes-modulis)

## [<img src="https://ffmpeg.org/favicon.ico" height="24px" alt="ffmpeg"> FFmpeg](https://ffmpeg.org/)

Create video from image with audio content:

```bash
ffmpeg -r 1 -loop 1 -i \
image.png -i \
audio.ogg -c:v libx264 -tune stillimage -c:a copy -pix_fmt yuv420p -shortest \
output.mp4
```

Turn up the video sound : `ffmpeg -i input.mp4 -af "volume=19dB" -c:v copy output.mp4 -y`

## xinput

Open `/usr/share/X11/xorg.conf.d` folder and turn off proper `MatchIsTouchscreen` values. More in [How to Disable Touchscreen in Linux](https://www.blackmoreops.com/2021/09/24/how-to-disable-touchscreen-on-ubuntu/) and [Disable touchscreen though Xorg config](https://www.blackmoreops.com/2021/09/24/how-to-disable-touchscreen-on-ubuntu/)
