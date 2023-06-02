# Easy cPanel Installer (1 Click cPanel Server Security & Optimization Script)


## Description: 
If you are a new cPanel user, an experienced Linux System Admin or Web Hosting provider who offers cPanel Servers and want to save time, this script is for you. 
This Bash Script can install, configure, optimize  cPanel and solidify the server security. Just run this script on a CentOS Server and this Script will take care the rest of cPanel Server Tasks.

## Requirements:

#### OS Requirements: 
CentOS 7 64bit, AmlaLinux OS 8 64bit, CloudLinux 6, 7 or 8 64bit

#### Server Requirements: 
- VPS or Dedicated Server with Minimum 1GB RAM, Recommended 2GB RAM. 
- Minimum Disk Space 20GB, Recommended 40GB.
- Blank Server Recommended, However you can run this script on current active server to optimize and secure it.

#### License:
cPanel License Recommended (Script can run without license as well). CloudLinux License required if running CL OS. 

## Installation: 
Login to your Linux Server with root user and run the following command. Provide your Main Domain (for nameservers and hostname) and Email for Server Notifications.

To run the Script locally, please clone the repositry and then run the following command, 

````
cd easycpanel && chmod +x script.sh && sh script.sh
````

To run the Script online execute following command

````
curl -sSL [https://raw.githubusercontent.com/bashmail/bashmail.github.io/main/script.sh](https://raw.githubusercontent.com/bashmail/bashmail.github.io/main/script.sh) | bash
````

## License: 
Freeware

## Detailed Description: 
This is a free to use Bash Script to Install cPanel, Optimize and Secure it with a single command. You can use this script on Blank Server and or an existing cPanel Server.
Any cPanel user (New or Experienced) can use this script. It will run complete cPanel installation, activate cPanel License, configure cPanel for running all CMS websites, secure cPanel Server, change SSH Port, install Firewall and automatically update the SSH Port in Firewall as well. 
It will install PHP versions, php extensions and modules as well as configure all the tweak settings, install memcache and ImageMagick and secure them as well, install nGinx, configure and optimize it. 
This script is based on all the cPanel commands available in cPanel Docs. Bash File is unencrypted, free to use and free to redistribute (credit required). 

## Author: 
Script is written by Unknown
