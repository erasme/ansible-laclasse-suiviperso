# Install mysql & redis server
sudo apt-get -qq update
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password foobar'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password foobar'
sudo apt-get -yqq install mysql-server mysql-client redis-server

# Write /root/.my.cnf for passwordless DB access
cat << END > /root/.my.cnf
[client]
user=root
pass=foobar
END
