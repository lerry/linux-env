linux-env
=========

```
自用的一些linux配置，zsh，vim，hg，git

Debian 源
deb http://mirrors.sohu.com/debian/ wheezy main contrib non-free
deb-src http://mirrors.sohu.com/debian/ wheezy main contrib non-free

deb http://security.debian.org/ wheezy/updates main
deb-src http://security.debian.org/ wheezy/updates main

# wheezy-updates, previously known as 'volatile'
deb http://ftp.cn.debian.org/debian/ wheezy-updates main
deb-src http://ftp.cn.debian.org/debian/ wheezy-updates main

deb http://packages.dotdeb.org wheezy all
deb-src http://packages.dotdeb.org wheezy all

#dotdeb
wget http://www.dotdeb.org/dotdeb.gpg
cat dotdeb.gpg | apt-key add -

apt-get update&&apt-get upgrade
apt-get install vim python-setuptools ipython gcc g++ memcached python-dev sudo zsh git-core curl supervisor p7zip-full tmux libevent-dev rcconf xtail lrzsz -y
apt-get install python g++ make checkinstall build-essential libmemcached-dev zip unzip -y



apt-get install nginx redis-server php5-fpm mysql-server php5-sqlite php5-mysql php5-mcrypt libmysqld-dev -y



useradd -m lerry
lerry ALL=(ALL:ALL) NOPASSWD: ALL
su lerry
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
git clone git://github.com/lerry/linux-env.git
cd linux-env
sh install.sh

sudo chsh



easy_install tornado pygments lerrylib jinja2 torndb requests pip
easy_install distribute mysql-python gevent pylibmc redis
```
