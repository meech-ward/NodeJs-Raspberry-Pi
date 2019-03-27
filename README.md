
![Node Ascii Art](Node-Pi-ASCII.png)

# NodeJs-Raspberry-Pi

## Latest NodeJS Install

This is a simple shell script that will install NodeJs v10.x.  The "Latest version" of NodeJs version of 10.x in the raspberry pi on every version of raspberry pis (zero|1|2|3) This also happens to work on a Beaglebone and other ARM6 or ARM7 linux computers.<p>

>First, you will need to install the latest version of NodeJs on your pi by going into you Raspberry Pi zero|1|2|3's terminal, and running: <p>

```sh
wget -O - https://raw.githubusercontent.com/meech-ward/NodeJs-Raspberry-Pi/master/Install-Node.sh | sudo bash
node -v
exit
```
<p>

## Specific Version of NodeJs

Once you have run the initial installer, you can install different versions at any time by opening a new terminal and typing:
```sh
sudo node-install -v 4.9.1; # if you want to be specific
```
or
```sh
sudo node-install -v 4;
# then you will get prompted with which 
# specific version of 4 you wish to install
```
or
```sh
sudo node-install -v 5;
# then you will get prompted with which 
# specific version of 5 you wish to install
```
or
```sh
sudo node-install -v 6;
# then you will get prompted with which 
# specific version of 6 you wish to install
```
or
```sh
sudo node-install -v 7;
# then you will get prompted with which 
# specific version of 7 you wish to install
```
or
```sh
sudo node-install -v 8;
# then you will get prompted with which 
# specific version of 8 you wish to install
```
or
```sh
sudo node-install -v 9;
# then you will get prompted with which 
# specific version of 9 you wish to install
```
or
```sh
sudo node-install -v 10;
# then you will get prompted with which 
# specific version of 10 you wish to install
```

or
```sh
sudo node-install -v 11;
# then you will get prompted with which 
# specific version of 10 you wish to install
```

Please note that this will work for **EVERY raspberry pi**.

If you have installed any *global* npm modules, and change your systems version of nodejs with **node-install** then **node-install** will reinstall your npm modules for you.

The original version of this was written by [audstanley](audstanley/NodeJs-Raspberry-Pi).
