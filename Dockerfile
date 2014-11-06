FROM ubuntu:14.04
MAINTAINER Hanfei Shen <qqshfox@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV CUDA_REPO_VERSION 6.5-14
RUN apt-get update && apt-get install -y wget && \
    wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_${CUDA_REPO_VERSION}_amd64.deb && \
    dpkg -i cuda-repo-ubuntu1404_${CUDA_REPO_VERSION}_amd64.deb && \
    apt-get update && apt-get install -y cuda-toolkit-6-5 && \
    rm -rf cuda-repo-ubuntu1404_${CUDA_REPO_VERSION}_amd64.deb && \
    apt-get purge -y wget && apt-get autoremove -y
