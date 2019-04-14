#!/bin/sh
echo "$1" > /tmp/passphrase
dd of=/tmp/sshkey
echo "####" 1>&2
ls -l /tmp/sshkey 1>&2
echo "####" 1>&2
puttygen /tmp/sshkey -o /tmp/sshkey.ppk --old-passphrase /tmp/passphrase --new-passphrase /tmp/passphrase
cat /tmp/sshkey.ppk

#mount -t tmpfs -o size=5m tmpfs /mnt/ramdisk

