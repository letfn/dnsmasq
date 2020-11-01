FROM letfn/python

USER root

RUN apt-get update -y && apt-get install -y dnsmasq

COPY service /service

ENTRYPOINT [ "/tini", "--", "/service" ]

CMD [ "-k", "--log-facility=-" ]
