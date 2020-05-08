#!/bin/bash

VMName="!!!ENTER VM NAME HERE!!!"

echo "Bios:"
BiosReleaseDate=`sudo dmidecode -t0 | grep Date  | cut -d: -f2`
echo $BiosReleaseDate
BiosVendor=`sudo dmidecode -t0 | grep Vendor  | cut -d: -f2`
echo $BiosVendor
BiosVersion=`sudo dmidecode -t0 | grep Version | cut -d: -f2`
echo $BiosVersion
echo ""
echo "System:"
SysManufacturer=`sudo dmidecode -t1 | grep Manufacturer | cut -d: -f2`
echo $SysManufacturer
SysModel=`sudo dmidecode -t1 | grep Name | cut -d: -f2`
echo $SysModel
echo ""
echo "BaseBoard:"
BaseManufacturer=`sudo dmidecode -t2 | grep Manufacturer | cut -d: -f2`
echo $BaseManufacturer
BaseName=`sudo dmidecode -t2 | grep Name | cut -d: -f2`
echo $BaseName
BaseVersion=`sudo dmidecode -t2 | grep Version | cut -d: -f2`
echo $BaseVersion

var0=`shuf -i1-32760 -n1`
var1=`shuf -i1-32760 -n1`
var2=`shuf -i1-32760 -n1`
var3=`shuf -i1-32760 -n1`
var4=`shuf -i1-32760 -n1`
var5=`shuf -i1-32760 -n1`

vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemVendor" "string:$SysManufacturer"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemProduct" "string:$SysModel"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemVersion" "<empty>"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemSerial" "string:$var0"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemSKU" "string:$var1"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemFamily" "<empty>"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemUuid" "d18cce0e-44f9-4a74-808c-ff8ff99889da"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSVendor" "string:$BiosVendor"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSVersion" "string:$BiosVersion"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSReleaseDate" "string:$BiosReleaseDate"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardVendor" "string:$BaseManufacturer"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardProduct" "string:$BaseName"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardVersion" "string:$BaseVersion"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardSerial" "string:$var4"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardAssetTag" "string:$var5"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardLocInChass" "<empty>"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardBoardType" "10"
