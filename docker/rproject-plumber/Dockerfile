FROM jiripetrlik/rproject:latest

ENV APPLICATION /app/default-app.R 

RUN Rscript -e 'install.packages("plumber")'

EXPOSE 80
VOLUME /app

ADD docker/rproject-plumber/scripts/* /app/

CMD [ "Rscript", "/app/run-plumber.R" ]
