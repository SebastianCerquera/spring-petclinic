FROM ubuntu:16.04

RUN apt-get update && apt-get install -y build-essential software-properties-common byobu curl git htop man unzip vim wget gedit openssh-server openssh-client && rm -rf /var/lib/apt/lists/*

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && add-apt-repository -y ppa:webupd8team/java && apt-get update && apt-get install -y oracle-java8-installer maven && rm -rf /var/lib/apt/lists/* && rm -rf /var/cache/oracle-jdk8-installer

RUN cd /opt && git clone https://github.com/SebastianCerquera/spring-petclinic.git

RUN cd /opt/spring-petclinic && mvn clean install

COPY entrypoint.sh /opt/entrypoint.sh

RUN chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
 
CMD ["petclinic"]