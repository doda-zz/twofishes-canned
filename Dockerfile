FROM doda/twofishes-geocoder:base
MAINTAINER Dominik Dario <dominik@doda.co>

ADD run.sh run.sh
RUN chmod +x run.sh

EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

CMD ["./run.sh"]
