
#!/bin/bash  

sudo su

wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-x64.tar.gz

mkdir /opt/jdk

tar -zxf jdk-8u5-linux-x64.tar.gz -C /opt/jdk

ls /opt/jdk

update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_05/bin/java 100

update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_05/bin/javac 100

update-alternatives --display java

update-alternatives --display javac

java -version

