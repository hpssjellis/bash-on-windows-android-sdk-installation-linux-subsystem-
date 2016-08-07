#!/bin/bash  


echo "Now Gradle"

gradle_version=2.9

sudo mkdir /home/ubuntu/workspace/gradle
wget -N http://downloads.gradle.org/distributions/gradle-${gradle_version}-all.zip
unzip -oq ./gradle-${gradle_version}-all.zip -d /home/ubuntu/workspace/gradle
ln -sfnv gradle-${gradle_version} /home/ubuntu/workspace/gradle/gradle-${gradle_version}

echo "exporting the Path to my .profile file so other terminals have the path"

printf "\nexport GRADLE_USER_HOME=/home/ubuntu/workspace/gradle/gradle-$gradle_version\nexport PATH=\$PATH:\$GRADLE_USER_HOME/bin"  >> ~/.profile


echo "exporting the path so that the next command works"


export GRADLE_USER_HOME=/home/ubuntu/workspace/gradle/gradle-$gradle_version
export PATH=$PATH:$GRADLE_USER_HOME/bin


#printf "export GRADLE_HOME=/home/ubuntu/workspace/gradle/latest\nexport PATH=\$PATH:\$GRADLE_HOME/bin" > /etc/profile.d/gradle.sh
#. /etc/profile.d/gradle.sh
hash -r ; sync
# check installation

echo "setup gradle"

gradle
echo "see if it worked"
gradle -v

rm gradle-2.9-all.zip

echo "-----------------------All Setup-------------------------"
echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"
echo "Now the fun part, Lets make the Hello World App for both Ant and Gradle"





./a00-auto-ant-gradle.sh

echo "Now lets start Apache"

./a04-restart-webserver.sh


