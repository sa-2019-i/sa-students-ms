FROM javergarav/tomee

COPY env/tomee.xml conf/tomee.xml
COPY env/server.xml conf/server.xml

CMD mvn -f pom.xml package 

COPY target/students-ms.war webapps/students-ms.war

EXPOSE 3001
