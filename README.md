# Cisco Webex Flatpak

## Description

> fork of [chrispoupart/flatpak-com.cisco.Webex](https://github.com/chrispoupart/flatpak-com.cisco.Webex)

[Webex](https://www.webex.com/) is Cisco's unified communication platform.

This project attempts to repackage the Linux package (`.deb`) as a Flatpak so that it can be used on any modern Linux distro.

## Building

In order to build this package, you will need the following:

1. Follow the [Building your first flatpak](https://docs.flatpak.org/en/latest/first-build.html) guide to make sure that you have the required setup on your computer.
1. Make sure that you have the base flatpak installed. You can see which ones
   are required in the top of the `com.cisco.Webex.yaml` file.
1. Run and install your build: `flatpak-builder build com.cisco.Webex.yaml --install --force-clean --user`

## Known Issues

- Cisco does not version their webex packages and download URL is constant. This means that periodically, the build will fail due to checksum mismatches, though new release is tracked hourly by Github Actions.

- WebCam does not work with HD option enabled.
