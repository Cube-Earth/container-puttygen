#!/bin/sh
echo "$1" > /tmp/passphrase
dd of=/tmp/sshkey
puttygen /tmp/sshkey -o /tmp/sshkey.ppk --old-passphrase /tmp/passphrase --new-passphrase /tmp/passphrase
cat /tmp/sshkey.ppk

#mount -t tmpfs -o size=5m tmpfs /mnt/ramdisk

