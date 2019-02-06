FROM jenkins/slave

LABEL Description="This is a base image, which allows connecting Jenkins agents via JNLP protocols" Vendor="Jenkins project" Version="3.27"

COPY apache-jmeter-5.0 /home/jenkins/apache-jmeter-5.0

COPY jenkins-slave /usr/local/bin/jenkins-slave

ENTRYPOINT ["jenkins-slave"]
