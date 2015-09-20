#!/bin/bash

rm -f configdrive.iso
mkdir -p /tmp/new-drive/openstack/latest
cp user_data /tmp/new-drive/openstack/latest/user_data
if [ "$(uname)" = 'Darwin' ]; then
	hdiutil makehybrid -iso -joliet -default-volume-name config-2 -o configdrive.iso /tmp/new-drive
elif [ "$(uname)" = 'Linux' ]; then
	mkisofs -R -V config-2 -o configdrive.iso /tmp/new-drive
fi

rm -r /tmp/new-drive

