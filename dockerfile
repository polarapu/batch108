FROM redhat/ubi9
MAINTAINER "Prasad Polarapu"
RUN touch /opt/file1
RUN mkdir /opt/dir1
RUN yum install git -y
RUN touch /opt/file1
RUN git config --global user.name "Prasad"
RUN git config --global user.email "prasad@gmail.com"
RUN yum install wget -y
WORKDIR /opt
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.39/bin/apache-tomcat-10.1.39.tar.gz
RUN tar -xvf apache-tomcat-10.1.39.tar.gz
EXPOSE 8082
#ENV export JAVA_HOME=/path
#ENTRYPOINT git --version
RUN yum install java -y
RUN yum install maven -y
RUN git clone https://github.com/polarapu/maven-project1.git
WORKDIR /opt/maven-project1
#RUN mvn clean install
#ENTRYPOINT ["java" "-jar" "target/devops108.war"
CMD git --version
