# Steamlink Launcher for Kodi

Plugin for [Kodi](https://kodi.tv/) to launch [Steamlink](https://steamcommunity.com/app/353380/discussions/6/2806204039992195182/).

## Requirements

* Raspbian >=9 already installed.

* Install `kodi` package:

  ```shell
  sudo apt-get update
  sudo apt-get install -y kodi
  ```

* Systemd service unit is being installed to start `kodi-standalone` service:

  ```bash
  cat <<EOF | sudo tee /etc/systemd/system/kodi.service
  [Unit]
  Description = Kodi Media Center
  After = systemd-user-sessions.service network.target sound.target

  [Service]
  User = pi
  Group = pi
  Type = simple
  ExecStart = /usr/bin/kodi-standalone

  [Install]
  WantedBy = multi-user.target
  EOF
  ```

* Install [steamlink](https://steamcommunity.com/app/353380/discussions/0/1743353164093954254) debian package with:

  ```shell
  sudo apt-get update
  sudo apt-get install -y steamlink
  ```

## Plugin installation

* Log into ssh on your Kodi installation.

* Download the [zip](https://github.com/tobnap/kodi-steamlink-launcher/releases) of the launcher and install it via Kodi (*Extension → Install from Zip file*). You must **allow untrusted sources** in system settings prior to this.

## Acknowledgement

```plain
Steam Copyright 2003-2018 Valve Corp. All rights reserved. Use of Steam Link software is subject to the Steam Subscriber Agreement, https://store.steampowered.com/subscriber_agreement/.
```

## Inspiration

* [grimlokason/osmc-steamlink](https://gitlab.com/grimlokason/osmc-steamlink) - scripting logic
* [swetoast/steamlink-launcher](https://github.com/swetoast/steamlink-launcher) - addon resources

## License

Steamlink Launcher for Kodi is licensed under GPLv2, see `LICENSE.txt`.
