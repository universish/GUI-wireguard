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
