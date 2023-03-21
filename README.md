# Wireguard gui python (WGP)

Wireguard client for Linux users, wrote in Python 3.

## Installation

### Script

You can use the `install.sh` script.

```
$ git clone https://github.com/gary113/wireguard-gui-python.git
$ cd wireguard-gui-python
$ chmod +x install.sh
$ ./install.sh
```

It will:

1. Install systems requirements from `system-requirements.txt`.
2. Install Python requirements from `requirements.txt`.
3. Copy the project folder to `/opt/wireguard-gui-python`.
4. Copy wgp.desktop to the user's desktop.

*Feel free to modify the script as you need.*

### Manual

1. Install requirements indicated in `system-requirements.txt` with your system's package managger and `requirements.txt` with pip.
2. Copy the project directory wherever you want.

## Usage

### How to run

#### Desktop file

If you used the install script, you will have a desktop file on your desktop. Just double-click it, it will ask you for your sudo password (In some systems, you will need to allow the desktop file to run before using it).

![desktop file](/screenshots/desktop-file.png "Desktop file")

#### Manual

Run wgp executing `wgp.py` **with admin privileges**:
```
$ cd wireguard-gui-python
$ sudo python wgp.py
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
