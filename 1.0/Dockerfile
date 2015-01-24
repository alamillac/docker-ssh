# ssh
#
# VERSION               1.0

FROM     alamilla/base
MAINTAINER Andres F. Lamilla, "alamilla@gmail.com"

# instalacion de los paquetes necesarios
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y ssh

RUN mkdir /var/run/sshd

# se adicionan los archivos de configuracion
ADD src/ssh.sv.conf /etc/supervisor/conf.d/ssh.sv.conf
ADD src/run.sh /usr/local/bin/run.sh
ADD src/start_ssh.sh /usr/local/bin/start_ssh.sh

RUN chmod +x /usr/local/bin/*.sh

# se crea un usuario para acceder al sistema
RUN useradd -g sudo ubuntu

# se establece una password de root
RUN echo 'ubuntu:ubuntu' | chpasswd

EXPOSE 22
CMD ["/usr/local/bin/run.sh"]
