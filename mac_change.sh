#!/bin/bash
# iface0, iface1, etc. - iface system names. Leave iface1(2,3,4,etc) blank if you don't want to spoof the mac for the other ifaces
# company_id is the OUI that defines what what device you will look like on the network

iface0='en0'
iface1='en2'
iface2=''

#### first interface
company_id0='00:04:6B'
random0=`dd bs=1 count=3 if=/dev/random 2>/dev/null | hexdump -v -e '/1 ":%02X"'`
ifconfig ${iface0} 'link' ${company_id0}${random0}
#### end set first interface

### check if the second interface is defined above. If it is, generate & set a new mac for it
if [ -n "$iface1" ]; then
    company_id1='00:1D:FE'
    random1=`dd bs=1 count=3 if=/dev/random 2>/dev/null | hexdump -v -e '/1 ":%02X"'`
    ifconfig ${iface1} 'link' ${company_id1}${random1}
fi
### end second iface

### check if the third interface is defined above. If it is, generate & set a new mac for it
if [ -n "$ifacei2" ]; then
    company_id2='00:1D:FE'
    random2=`dd bs=1 count=3 if=/dev/random 2>/dev/null | hexdump -v -e '/1 ":%02X"'`
    ifconfig ${iface2} 'link' ${company_id2}${random2}
fi
### end third iface

# Copy the second or third iface block for extra ifaces. Don't forget to edit the variables.
