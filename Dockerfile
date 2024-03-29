FROM openjdk:11-jre

ARG SHINYPROXY_VERSION=2.6.1

RUN mkdir -p /opt/shinyproxy/
RUN wget https://www.shinyproxy.io/downloads/shinyproxy-${SHINYPROXY_VERSION}.jar -O /opt/shinyproxy/shinyproxy.jar

WORKDIR /opt/shinyproxy/
CMD ["java", "-jar", "shinyproxy.jar"]
