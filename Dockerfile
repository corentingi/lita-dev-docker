FROM ruby

VOLUME ["/lita"]

# Install redis-server, change prompt color and install the lita gem
RUN apt-get update && apt-get install -y vim less redis-server
RUN echo 'PS1='\''${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]# '\''' >> /root/.bashrc
RUN gem install lita

WORKDIR /lita

CMD ["/bin/bash", "-c" , "service redis-server start && /bin/bash"]
