FROM jenkins
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y rsync
USER jenkins # drop back to the regular jenkins user - good practice
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
