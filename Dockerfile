FROM jenkins/jenkins:2.190.2
USER root 
RUN apt-get -y update && apt-get install -y sudo
RUN apt update && apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt update && apt install -y docker-ce
RUN usermod -aG docker jenkins
