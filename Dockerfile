FROM python:3.9.13
# Image from dockerhub
EXPOSE 8000 
# Expose the port 8000 in which our application runs
RUN apt update
RUN apt install -y git
RUN apt install git-lfs
# Install git

# ARG test=test12
ENV PORT=8000

RUN echo "The ARG variable value is $PORT"

RUN pip install --upgrade pip
# Upgrade pip
WORKDIR /app 
# Make /app as a working directory in the container
COPY . .
# copy main.py from host, to docker container in app
RUN apt install -y xvfb
# RUN sudo pacman -S chromium  && \
#     cp /usr/bin/chromedriver /tmp/chromedriver

RUN pip install -r requirements.txt 

CMD ["flask", "--app","main","run"]