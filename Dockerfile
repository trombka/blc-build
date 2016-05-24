FROM maven:3.2-jdk-7

ADD https://github.com/BroadleafCommerce/BroadleafCommerce/archive/broadleaf-4.0.5-GA.tar.gz .
RUN mkdir -p /usr/src/app
RUN tar -xf broadleaf-4.0.5-GA.tar.gz -C /usr/src/app
WORKDIR /usr/src/app/BroadleafCommerce-broadleaf-4.0.5-GA
RUN mvn install
