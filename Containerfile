From ubuntu

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y git python3-pip python3-dev libasound2-dev libjack-dev fluidsynth && rm -rf /var/lib/apt/lists/*
WORKDIR /root
RUN git clone https://github.com/jpetazzo/griode.git
WORKDIR /root/griode
RUN pip3 install --user -r requirements.txt
RUN cd soundfonts; ./download-soundfonts.sh;

ENTRYPOINT /root/griode/griode.py
