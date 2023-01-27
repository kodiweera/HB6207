# Adding DBIC user credentials:

- On discovery:     /dartfs-hpc/rc/home/k/d29262k/bin/add_DBIC_user
- On rolando:       /afs/dbic.dartmouth.edu/DBIC/admin/bin/adduser

# Checking ZFS integroty and operation on dbic-mrinbox, commissure, wernicke

- zpool status

..This reports the health of all hard disks in the storage arrays

- zpool iostat 2

..This will show IO traffic updating every 3 seconds

- zpool import

..Mounts an unmounted zpool 

- zfs list

..Shows the state of ZFS datasets on a given zpool array

- Other import zfs commands
..- zfs snapshot
..- zfs send | zfs recv

# Checking status, starting, and stopping DICOM server

- service -e
..This shows all running services

- service dcmrcv start
..- Starts the DICOM server

- service dcmrcv stop
..- Stops the DICOM server
