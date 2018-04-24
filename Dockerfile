FROM cryoflamer/nynja_docker

RUN cd ~ && mkdir depot && cd depot
#TODO set keys
RUN git clone git@github.com:NYNJA-MC/server.git && mad dep com pla && make start