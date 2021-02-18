#!/bin/bash
docker run -d --name jenkins -e JAVA_OPTS=-Dpermissive-script-security.enabled=true -p 8080:8080 -p 50000:50000 -v $(pwd)/jenkins_home:/var/jenkins_home jenkins/jenkins:2.263.3
