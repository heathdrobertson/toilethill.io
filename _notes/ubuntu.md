---
title: "Ubuntu/Server"
permalink: /notes/ubuntu
excerpt: "Ubuntu Desktip & Server Notes"
toc_label: "Ubunut TOC"
header:
    teaser: /assets/images/nodejs_teaser_image.png
    overlay_color: "#616261"
---

# Ubuntu Server
- [Basic Linux Commands You Should Know](https://linuxhandbook.com/linux-commands/)

## File Server

### Samab Set-up Information
- [How To.. ](https://help.ubuntu.com/community/How%20to%20Create%20a%20Network%20Share%20Via%20Samba%20Via%20CLI%20%28Command-line%20interface/Linux%20Terminal%29%20-%20Uncomplicated,%20Simple%20and%20Brief%20Way!)

### External Hard Drive
- [Mounting](https://help.ubuntu.com/community/Mount/USB)

## Print Server

### Printer Set-up Information
- [LinuxBabe Setup Instructions](https://www.linuxbabe.com/ubuntu/set-up-cups-print-server-ubuntu-bonjour-ipp-samba-airprint)
- Add your username to `lpamdin` group.
```bash
sudo usermod -a -G lpadmin <username>
```
- Web Interface `https://<server-ip>:631/`
- [Cups CLI Admin](https://www.cups.org/doc/admin.html)


## Commands

- Installed Package Information:
```bash
$ apt list <package-name>
$ apt-cache policy <package-name>
$ jdpkg -s <package-name>
```
- Drive Information:
```bash
$ df -h
$ fdisk -l
$ sfdisk -l
$ lsblk
```
- Manage Disk Partitions On a System:
```bash
$ sudo cfdisk <disk-path>
```
- USB Device Info:
```bash
$ lsusb
```
