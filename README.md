Internet Monitor
================
A simple internet monitor designed for my Raspberry Pi. It pings
Google's and Cloudflare's DNS services and logs dropped packets
and ping times. It saves all data in an archive for later analysis
and also serves a webpage on port 8000 of the raspbery pi's ip 
address -- something like `192.168.0.56:8000`. You can visit this
on your local lan. It's super lightweight and uses `awk` for parsing
the output of the ping command and forming the output files.

Install by running [install.sh](install.sh). This adds a new user that
will own all the files and own the cron jobs. Look at the data by 
logging into that user with

```
sudo su - inet_mon
```

Everything will be in the home directory of that user. Finally, uninstall
by running [uninstall.sh](uninstall.sh).
