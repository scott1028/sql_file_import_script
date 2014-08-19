#/bin/bash

echo 'username: '; read user;
echo 'password: '; read password;
echo 'database: '; read db;

for entry in `ls | grep .sql | sort`
do
	echo '[Start Import] SQL file ->' $entry;
	mysql -u $user -p --password=$password $db < $entry;
	echo '[End Import]';
	echo;
done
