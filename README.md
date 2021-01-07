# test-repo

JAVA 1.8 

remove java 12 by : 
`java -version`
`sudo rm -rf /Library/Java/*`
`sudo rm -rf /Library/PreferencePanes/Java*`
`sudo rm -rf /Library/Internet\ Plug-Ins/Java*`

then install java 1.8 using 
`brew tap adoptopenjdk/openjdk`
`brew cask install adoptopenjdk8`

check java version using : 

`/usr/libexec/java_home -V`

RABBITMQ
- run the files in the folder
- https://www.cloudamqp.com/blog/2015-05-18-part1-rabbitmq-for-beginners-what-is-rabbitmq.html

MAVEN
`brew install maven`
`brew install mvnvm`

DBMDATA
- Put all the new code in a new file in queues folder
- Put the oppsite of the query below #UNDO  
- For release it will get shifted to release folder

VAGRANT
- READ: https://www.vagrantup.com/intro/getting-started/
- FOLLOW: 
- https://docs.google.com/document/d/1cSObaRonpqOX9gv8vCyaIFGqzG-DoD9fEMJTIPkGyr4/edit?ts=5d385613
- copy your local machine's public key to `~/.ssh/authorized_keys` inside vagrant 
- vagrant up 
- vagrant ssh
- vagrant halt
- http://192.168.33.102:8001/phpmyadmin/index.php?server=1&target=main.php&token=940fcc0940beed5a67a345b44bad847a

THRIFT
- https://blockdev.io/thrift-0-9-3-on-mac-os/
- cd $(brew --repo)
- cd Library/Taps/homebrew/homebrew-core/Formula/
- rm thrift.rb
- copy thrift.rb from the repo in that folder
- brew install thrift

AWSCLI
- use 
https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html
- then use 
https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html

AWK 
- echo '95 percentile : '
grep 'in.capillary.nsadmin.gateway.unicell.UnicellGatewayImpl:232 DEBUG - Http call duration' < comm-engine.log.2019-11-09-07 | awk '{print $21}' | sort -n | awk 'BEGIN{i=1} {s[i]=$1; i++;} END{print s[int(NR*0.95)]}'
- echo 'average : '
grep 'in.capillary.nsadmin.gateway.unicell.UnicellGatewayImpl:232 DEBUG - Http call duration' < comm-engine.log.2019-11-09-07 | awk '{sum+=$21} END {print sum / NR}'

.hprof
- jhat -port 7401 -J-Xmx4G dump.hprof
- http://localhost:7401/

REDIS commands through telnet
- select db_number
- keys *PATTERN*  ("start"pattern"star")
- DEL key_entry

How to create mongo admin user:
 - In Vagrant, open Mongo shell
 - Run this command:
   `db.getSiblingDB("admin").runCommand({
	`createUser: "capillary",
   `    pwd: "123",
    `   roles: [
   `             { role: "readWrite", db: "campaigns" }]})
  -Expected Response is -> {"ok": 1}
