# test-repo

RABBITMQ
- run the files in the folder
- https://www.cloudamqp.com/blog/2015-05-18-part1-rabbitmq-for-beginners-what-is-rabbitmq.html

MAVEN
- install maven 3.5.4 not 3.6
- use mvnvm

DBMDATA
- Put all the new code in a new file in queues folder
- Put the oppsite of the query below #UNDO  
- For release it will get shifted to release folder

VAGRANT
- READ: https://www.vagrantup.com/intro/getting-started/
- FOLLOW: 
- https://docs.google.com/document/d/1cSObaRonpqOX9gv8vCyaIFGqzG-DoD9fEMJTIPkGyr4/edit?ts=5d385613
- copy your local machine's public key to
- Example of Vagrantfile : in the repo
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
echo '95 percentile : '
grep 'in.capillary.nsadmin.gateway.unicell.UnicellGatewayImpl:232 DEBUG - Http call duration' < comm-engine.log.2019-11-09-07 | awk '{print $21}' | sort -n | awk 'BEGIN{i=1} {s[i]=$1; i++;} END{print s[int(NR*0.95)]}'
echo 'average : '
grep 'in.capillary.nsadmin.gateway.unicell.UnicellGatewayImpl:232 DEBUG - Http call duration' < comm-engine.log.2019-11-09-07 | awk '{sum+=$21} END {print sum / NR}'
