FROM ubuntu:24.04

RUN apt update  
RUN apt install python3 python3-pip python3-venv -y
RUN apt install -y mesa-common-dev libgl1-mesa-dev libglu1-mesa-dev
RUN python3 -m venv /root/venv

RUN chmod -R o+rwx /root

RUN echo "source /root/venv/bin/activate" >> /etc/bash.bashrc

ENV __NV_PRIME_RENDER_OFFLOAD=1
ENV __GLX_VENDOR_LIBRARY_NAME=nvidia
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all

CMD ["sleep", "infinity"]