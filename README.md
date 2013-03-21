mac_update
==========

Script for changing MAC addreses on boot for OSX 10.8

Move com.rasebo.changemac.plist to /Library/LaunchDaemons and change the owner to root:wheel. 
Run launchctl load -w /Library/LaunchDaemons/com.rasebo.changemac.plist && launchctl start com.rasebo.changemac

Create /usr/local/scripts and move mac_change.sh into that folder. 
Edit the variables in mac_change.sh to match your system.
