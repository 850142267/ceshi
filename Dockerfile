FROM harbor.jxwrd.gov.cn/jh-software/base-jre:8
MAINTAINER wuzhipeng
VOLUME /tmp
ADD target/ssodemo-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]