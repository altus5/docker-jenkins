FROM jenkins:2.60.3

USER root

RUN apt-get update && \
  #apt-get install -y sudo && \
  #echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
  #groupadd -g 1001 docker && \
  curl -fsSL get.docker.com -o get-docker.sh && \
  sh get-docker.sh && \
  usermod -aG docker jenkins && \
  rm -rf /var/lib/apt/lists/*

USER jenkins

