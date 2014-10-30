mysqld_safe --defaults-file=/etc/my.cnf &


for i in `seq 1 20`;
do
  mysqladmin ping
  if [ $? -eq 0 ]; then
    break
  fi
  sleep 1
done

mysql -e "GRANT ALL PRIVILEGES ON *.* TO root@'%' WITH GRANT OPTION"

wait
