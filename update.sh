#!/bin/sh

set -e

if [ $# -eq 0 ] ; then
	echo "Usage: ./update.sh <apex tag or branch>"
	exit
fi

export VERSION=$1

# cd to the current directory so the script can be run from anywhere.
cd `dirname $0`

# Update the certificates.
echo "Updating certificates..."
./certs/update.sh

echo "Fetching and building apex $VERSION..."
curl -L -o apex https://github.com/apex/apex/releases/download/$VERSION/apex_linux_amd64
chmod +x apex

echo "Done."
