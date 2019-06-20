#!/bin/bash
#
# Author: Angel Bonet
# 10/06/2019
#
# Stop service
echo yourAdminPassword | sudo -S launchctl unload -w /System/Library/LaunchDaemons/com.apple.smbd.plist
wait $!
# Start again service
echo yourAdminPassword | sudo -S launchctl load -w /System/Library/LaunchDaemons/com.apple.smbd.plist
wait $!
# End process, create log
echo `date` " " `whoami` " smb service restarted."
