# Linux Related Knowledge

Various solutions and use-cases working with Linux.

### [<img src="https://gitlab.gnome.org/uploads/-/system/group/avatar/8/gnomelogo.png?height=24" height="24px" alt="Dconf Editor"> Dconf Editor](https://wiki.gnome.org/Apps/DconfEditor)

Viewer and editor of applications internal settings

#### Custom Dconf configs

Action when double-click on a running app. Suggested value: '**quit**' / default: 'launch':

`/org/gnome/shell/extensions/dash-to-dock/middle-click-action`

Action when click on a running app. Suggested value: '**minimize**' / default: 'focus-or-previews':

`/org/gnome/shell/extensions/dash-to-dock/click-action`

Action when scrolling a dock. Suggested value: '**do-nothing**' / default: 'switch-workspace':

`/org/gnome/shell/extensions/dash-to-dock/scroll-action`

## Enable Quick Preview

Click on the file and hit Space to preview it.

`sudo apt install gnome-sushi`

## Fix Long Shutdown Time

Change shutdown default timeout: open `/etc/systemd/system.conf` & change **_#DefaultTimeoutStopSec=90s_** to **_DefaultTimeoutStopSec=5s_**

## [Microsoft fonts for Linux](https://packages.debian.org/buster/ttf-mscorefonts-installer)

Installer for Microsoft TrueType core fonts (Arial, Courier New, Georgia, Times New Roman, Trebuchet, Verdana, etc) to
be available in other apps.

`sudo apt-get install ttf-mscorefonts-installer`

## [<img src="https://www.docker.com/favicon.ico" height="24px" alt="Docker"> Docker Engine](https://docs.docker.com/engine/install/ubuntu/) on Ubuntu

Develop faster. Run anywhere.
[Docker Engine post-installation steps](https://docs.docker.com/engine/install/linux-postinstall/)

## [<img src="https://lando.dev/favicon-32x32.png" height="24px" alt="Lando"> Lando](https://lando.dev/download) install

Coding at lightspeed.

Set channel + [Make the "unsupported docker" warning less obtrusive](https://github.com/lando/lando/issues/3511#issuecomment-1904519771):

Open `~/.lando/config.yml` & add / modify:

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

Prerequisite (zsh, curl / wget, git):

`sudo apt install zsh curl wget git ruby`

Basic [Installation](https://github.com/ohmyzsh/ohmyzsh#basic-installation): Pick **curl** method

## [<img src="https://spaceship-prompt.sh/assets/favicon.ico" height="24px" alt="Spaceship Prompt"> Spaceship Prompt](https://spaceship-prompt.sh/)

Minimalistic, powerful and extremely customizable ZSH prompt.

Basic [Installation](https://github.com/spaceship-prompt/spaceship-prompt#-installation) & update steps. Pick manual for **Oh-My-Zsh**

## [<img src="https://user-images.githubusercontent.com/139536/30827652-08e9b684-a265-11e7-95fb-50cbd2fb7c0d.png" height="24px" alt="SCM Breeze"> SCM Breeze](https://github.com/scmbreeze/scm_breeze)

Set of shell scripts (for bash and zsh) that enhance your interaction with git.

Basic [Installation](https://github.com/scmbreeze/scm_breeze#installation) steps.

**Update** SCM Breeze: `update_scm_breeze`

#### Git global config

`git config --global push.autoSetupRemote true`

`git config --global push.default current`

`git config --global core.editor "subl --wait"`

`git config --global user.email "may@domain.com"`

`git config --global user.name "Firstname Lastname"`
