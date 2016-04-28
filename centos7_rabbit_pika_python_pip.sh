# Install erlang from rabbitMQ site
sudo yum -y install http://www.rabbitmq.com/releases/erlang/erlang-18.3-1.el7.centos.x86_64.rpm
# Download and install rabbitmq
wget http://www.rabbitmq.com/releases/rabbitmq-server/v3.6.1/rabbitmq-server-3.6.1-1.noarch.rpm
sudo yum -y install rabbitmq-server-3.6.1-1.noarch.rpm 
# start the server
sudo /etc/init.d/rabbitmq-server start
#install the web plugin
sudo rabbitmq-plugins enable rabbitmq_management
# restart rmq
sudo service rabbitmq-server restart
# add user
sudo rabbitmqctl add_user user password
# make user admin
sudo rabbitmqctl set_user_tags user administrator
#install epel repo to get python34
sudo yum install epel-release
# install python34
sudo yum -y install python34
# add pip 
cd ~ && curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python3 get-pip.py
sudo pip install pika
