FROM cryoflamer/nynja_docker

ARG ssh_prv_key
ARG ssh_pub_key

USER root
#RUN apt-get install -y openssh-server
USER ubuntu
RUN mkdir -p /home/ubuntu/.ssh && \
    chmod 0700 /home/ubuntu/.ssh && \
    ssh-keyscan github.com > /home/ubuntu/.ssh/known_hosts
##RUN mad
#RUN cd ~ && mkdir depot && cd depot
#RUN ssh
##TODO set permission keys
#RUN git clone git@github.com:NYNJA-MC/server.git && mad dep com pla && make start