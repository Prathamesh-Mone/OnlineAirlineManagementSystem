# Instructions for Setup

> Steps given below are for installation and setup of this project on Ubuntu 18.04 or 20.04 system only. 

## Installing __apache2__ 
For installing apache2 web-server, run the following command from your terminal.
```
sudo apt install apache2
```

## Installing __mysql-server__
For installing mysql-server, run the following command from your terminal.

```shell
sudo apt install mysql-server
```

Now for configuring the mysql-server run log into the mysql terminal utlility using this command.

```shell
sudo mysql -u root
```

For configuring the mysql-server run the following commands. Here, __user_name__ is new user that will be created in mysql, for which the password will be setup as __<new_password>__ that you enter in command.

```sql
CREATE USER 'user_name'@'localhost' IDENTIFIED BY '<new_password>';
GRANT ALL PRIVILEGES ON *.* TO 'user_name'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit
```

To verify the setup is correct, run this command, then enter above setup password and check if login is successful.

```shell
sudo mysql -u user_name -p
```

## Installing __php and related modules__
For installing php and related libraries, run the following commands in your terminal one by one.

```shell
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt install php7.4 libapache2-mod-php7.4 php7.4-curl php7.4-intl php7.4-zip php7.4-soap php7.4-xml php7.4-gd php7.4-mbstring php7.4-bcmath php7.4-common php7.4-xml php7.4-mysqli
```

To start apache2 working with php, run the commands below.
```shell
sudo a2enmod php7.4
sudo a2enmod rewrite
sudo service apache2 restart
```

## Installing __phpmyadmin__
For installing phpmyadmin, follow the steps as it is on the link given below.<br>
[Install phpmyadmin](https://magefan.com/blog/how-to-install-phpmyadmin,"https://magefan.com/blog/how-to-install-phpmyadmin")

## Installing __xampp__ on Linux
Download the executable for xampp from here.<br>
[Download xampp](https://www.apachefriends.org/index.html, "https://www.apachefriends.org/index.html")

For installing xampp follow the steps given on this link. <br>
[Install xampp](https://phoenixnap.com/kb/how-to-install-xampp-on-ubuntu,"https://phoenixnap.com/kb/how-to-install-xampp-on-ubuntu")

Once all the above installations are complete in same order we are ready to do the setup.

## Setup
From your terminal, enter the directory where this project is cloned. Then run the following shell script by using the command given below.

```shell
./script.sh
```

Then, run the following commands to start the lampp service.
> You have to run these three commands to start the lampp service whenever you reboot your system.

```shell
sudo service apache2 stop
sudo service mysql stop
sudo service /opt/lampp/lampp start
```

Now go to your browser and access localhost/phpmyadmin. There in databases, import the sql file from the cloned priject named __"database1.sql"__.
Once this file is imported without any errors, your system is ready to go!
Access this link from your browser to view the index page of Online Airline Management System.<br>
[Online Airline Management System](http://localhost/OnlineAirlineManagementSystem/, "http://localhost/OnlineAirlineManagementSystem/")
