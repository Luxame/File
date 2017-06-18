# java install 
yum install java -y

# jenkins stable install
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y

# start jenkins and check status
systemctl start jenkins
systemctl status jenkins

# setting firewall and check firewall
firewall-cmd --add-port=8080/tcp --permanent
firewall-cmd --reload
firewall-cmd --list-all

# find jenkins login password
cat /var/lib/jenkins/secrets/initialAdminPassword

# install git
yum install git -y