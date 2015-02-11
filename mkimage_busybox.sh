#!/bin/sh

bash ./busybox-static /tmp/rootfs
tar -czf /tmp/rootfs.tgz -C /tmp/rootfs/ .
cat /tmp/rootfs.tgz | docker import - busybox32
rm -r /tmp/rootfs.tgz
