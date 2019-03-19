FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y gnupg software-properties-common

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN . /etc/os-release && add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $UBUNTU_CODENAME-cran35/"
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq r-base
