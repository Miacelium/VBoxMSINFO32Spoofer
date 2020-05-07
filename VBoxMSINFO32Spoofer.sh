#!/bin/bash

VMName="!!!ENTER VM NAME HERE!!!"

var0=`shuf -i1-32760 -n1`
var1=`shuf -i1-32760 -n1`
var2=`shuf -i1-32760 -n1`
var3=`shuf -i1-32760 -n1`
var4=`shuf -i1-32760 -n1`
var5=`shuf -i1-32760 -n1`

vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemVendor" "HP"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemProduct" "ENVY dv7"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemVersion" "<empty>"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemSerial" "string:$var0"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemSKU" "string:$var1"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemFamily" "<empty>"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiSystemUuid" "d18cce0e-44f9-4a74-808c-ff8ff99889da"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSVendor" "HP"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSVersion" "string:$var2"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSReleaseDate" "02/18/2016"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardVendor" "HP"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardProduct" "ENVY dv7"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardVersion" "string:$var3"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardSerial" "string:$var4"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardAssetTag" "string:$var5"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardLocInChass" "<empty>"
vboxmanage setextradata "$VMName" "VBoxInternal/Devices/pcbios/0/Config/DmiBoardBoardType" "10"
