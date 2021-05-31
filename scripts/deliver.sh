HOST=192.168.0.110
TOMCAT_HOME=/home/cwlee/tomcat

scp "my-app-1.0-SNAPSHOT.jar" cwlee@${HOST}:${TOMCAT_HOME}
