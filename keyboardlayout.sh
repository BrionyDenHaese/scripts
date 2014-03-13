#!/bin/bash


echo 'KEYTABLE="be-latin1"'>/etc/sysconfig/keyboard
echo 'MODEL="pc105"'>>/etc/sysconfig/keyboard
echo 'LAYOUT="nl"'>>/etc/sysconfig/keyboard
echo 'KEYBOARDTYPE="pc"'>>/etc/sysconfig/keyboard

shutdown -r now
