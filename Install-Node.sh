#!/bin/bash
# Original version written by Richard Stanley (audstanley)

PICHIP=$(uname -m);
MAJOR_NODEJS_VERSION=v12
if [ "$EUID" -ne 0 ]
        then echo "You need to install as root by using sudo ./Install-Node.sh";
        exit
else LINKTONODE=$(curl -sG https://nodejs.org/dist/latest-${MAJOR_NODEJS_VERSION}.x/ | awk '{print $2}' | grep -P 'href=\"node-'${MAJOR_NODEJS_VERSION}'\.\d{1,}\.\d{1,}-linux-'$PICHIP'\.tar\.gz' | sed 's/href="//' | sed 's/<\/a>//' | sed 's/">.*//');
# curl -G https://nodejs.org/dist/latest-v11.x/ | awk '{print $2}' | grep -P 'href=\"node-v11\.\d{1,}\.\d{1,}-linux-armv10l\.tar\.gz' | sed 's/href="//' | sed 's/<\/a>//' | sed 's/">.*//'
NODEFOLDER=$(echo $LINKTONODE | sed 's/.tar.gz/\//');
#Next, Creates directory for downloads, and downloads node 8.x
cd ~/ && mkdir tempNode && cd tempNode && wget https://nodejs.org/dist/latest-${MAJOR_NODEJS_VERSION}.x/$LINKTONODE;
tar -xzf $LINKTONODE;

# Remove the tar after downloading
rm $LINKTONODE;

# Remove older version of node:
rm -R -f /opt/nodejs/;

# Remove symlinks
rm /usr/bin/node /usr/sbin/node /sbin/node /sbin/node /usr/local/bin/node /usr/bin/npm /usr/sbin/npm /sbin/npm /usr/local/bin/npm 2> /dev/null;

# Copy Node over to the appropriate folder.
mv ~/tempNode/$NODEFOLDER /opt/nodejs/;

# Remove the nodeJs tar we downloaded.
rm -R -f ~/tempNode/$LINKTONODE/;

#Create symlinks to node && npm
update-alternatives --install "/usr/bin/node" "node" "/opt/nodejs/bin/node" 1
update-alternatives --install "/usr/bin/npm" "npm" "/opt/nodejs/bin/npm" 1
rm -R -f /root/tempNode/;

# Get the python installer (for specific versions):
cd /bin/;
rm node-install;
wget https://raw.githubusercontent.com/meech-ward/NodeJs-Raspberry-Pi/master/node-install;
chmod +x node-install;

