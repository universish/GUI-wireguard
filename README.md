# GUI-wireguard
Wireguard interface, integrated with wireguard-tools for RPM-based distributions.

The goal is to make a wireguard interface for RPM-based operating systems, especially for fedora 40 and derivative distributions, almalinux workstation, rockylinux workstation, etc. In terms of running functions, the Wireguard program on Windows will support all the functions in the graphical interface when opened. We will use the same image as this one.

We will overcome the lack of rpm packages that are not released on git platforms. There are many gui for Wireguard on git platforms. But all of them are released as .deb for debian-derived distributions. 

Development will be done with Rust. Interface will be created with QT. qmetaobject  (a connector for Rust and Qt) will be used. 
______________________________________________________________________________________________________________

 I would also like to make a criticism here. For some reason, open source and free software developers are developing applications with graphical interfaces for windows OS, but for linux they leave us to CLI. It is up to us to remedy this deficiency. 

______________________________________________________________________________________________________________

Here are the URLs of the project resources to which the project is linked:
* https://github.com/WireGuard/wireguard-linux
* https://github.com/WireGuard/wireguard-tools

  Example of targeted functions and interface view:
![wireguardwindows-4199201628](https://github.com/user-attachments/assets/bac2dd8f-c18d-4b9e-a706-878055807514)




Wireguard client for Linux users, wrote in Python 3.

## Installation

### Script

You can use the `install.sh` script.

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/gary113/wireguard-gui-python/master/install.sh)"
```

It will:

1. Clone this repository to `/opt/wireguard-gui-python`.
2. Install systems requirements from `system-requirements.txt`.
3. Install Python requirements from `requirements.txt` in a virtual environment.
4. Copy wgp.desktop to /usr/share/applications (Applications menu).

*Feel free to modify the script as you need.*

### Manual

1. Install requirements indicated in `system-requirements.txt` with your system's package managger and `requirements.txt` with pip.
2. Copy the project directory wherever you want.
3. Run with run.sh script or wgp.desktop located in resources folder, after update project directory.

## Usage

### How to run

#### Desktop file

If you used the install script, you will have a desktop file on your applications menu. Just click it, it will ask you for your sudo password.

![desktop file](/screenshots/desktop-file.png "Desktop file")

#### Manual

Run wgp executing `run.sh` **with admin privileges**:
```
$ cd wireguard-gui-python
$ sudo ./run.sh
```

### About the usage

- This client is similar to the Windows client.
- It reads configurations from `/etc/wireguard`.
- You can modify certain configurations using the `.env` file.
- You can perform the following actions:
  - Add Wireguard interfaces.
  - Delete interfaces (Delete files in `/etc/wireguard`).
  - Export interfaces to a zip file.
  - Import interfaces from a zip file.
  - Activate/deactivate Wireguard interfaces.
  - Edit Wireguard configuration files (roll back configuration if not valid).

### Screenshots

- Config files:

![wireguard config files](/screenshots/client-configs.png "Client config files")

- Wireguard logs:

![wireguard logs](/screenshots/client-logs.png "Client logs")

- Tray menu:

![tray menu](/screenshots/tray-menu.png "Tray menu")

### License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
