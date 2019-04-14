ARG USER_NAME
FROM ${USER_NAME}_dl

USER root
RUN apt-get update && apt-get install -y vim
RUN apt-get -y install sudo

ARG USER_NAME
ARG GID_NUMBER
ARG UID_NUMBER

RUN groupadd $USER_NAME -g $GID_NUMBER
RUN usermod -g $GID_NUMBER -u $UID_NUMBER $USER_NAME
RUN adduser $USER_NAME sudo
RUN echo "$USER_NAME:$USER_NAME" | chpasswd

## SSH
RUN apt-get install -y openssh-server

RUN mkdir /var/run/sshd
# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

### modification
RUN sed -i 's/Port 22/Port 4444/' /etc/ssh/sshd_config
RUN mkdir /home/$USER_NAME/.ssh
COPY authorized_keys /home/$USER_NAME/.ssh/authorized_keys

EXPOSE 4444
CMD ["/usr/sbin/sshd", "-D"]
WORKDIR /home/$USER_NAME
RUN mkdir /home/$USER_NAME/data

#-------#
# here add packages
USER $USER_NAME
#RUN conda install pytorch torchvision -c pytorch
#RUN pip install fcn torchfcn

USER root
