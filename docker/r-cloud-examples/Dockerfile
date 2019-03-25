FROM jiripetrlik/rproject-plumber:latest

RUN apt-get install -y apt-utils libcurl4-openssl-dev libssl-dev libxml2-dev gfortran
RUN Rscript -e 'install.packages("quantmod")'

ENV APPLICATION /app/plumber.R 
ADD R/plumber.R /app/plumber.R
