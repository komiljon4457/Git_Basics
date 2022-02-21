
# TASK 2: WORKING WITH AWS CLOUD
> Practice using web servers(Nginx, Apache)
>> Connect EC2 instances with ssh

## LINK TO THE RESULTING PAGE
[LINK TO MY WEBSITE](http://175.41.179.60/).

## Steps
* Created two EC2 instances: one with Ubuntu server 20.04, another with Amazon Linux.
* Opened ports: 22, 80 in both of them.
* Checked connection between two instances with ping command
* Added public key of the instances to authorized keys of one another.
* Installed NGINX on my ubuntu instance. And created file with OS info, Disk usage, Memory usage and Running processes.
* Then I registered a domain and created nginx config for that domain in `/etc/nginx/sites-available` path and created softlink in `/etc/nginx/sites-enabled`.

