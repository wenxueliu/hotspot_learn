#!/bin/bash

#######################################
#
#  Read the README-builds.html
#
#
# Build level
#
#  release, fastdebug, or slowdebug
#
# if you want limit the cpu usage
#
#  cpulimit -P $JAVA_HOME/bin/java -l 80
#
#  more see man cpulimit
#
#######################################

unset JAVA_HOME
unset CLASSPATH

sudo apt-get -y install libX11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev
sudo apt-get -y install libcups2-dev
sudo apt-get -y install ccache
bash ./configure --enable-debug \
                --with-target-bits=64
                --with-jvm-variants=server
#--with-boot-jdk-jvmargs="-Xmx2G "
export LOG=debug
make all 2>&1

build/linux-x86_64-normal-server-fastdebug/images/j2sdk-image/bin/java -version
