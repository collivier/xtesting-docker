#!/bin/bash

curl -k -fsSLo /usr/share/jenkins/jenkins-cli.jar $JENKINS_URL/jnlpJars/jenkins-cli.jar
java -jar /usr/share/jenkins/jenkins-cli.jar -auth ${JENKINS_AUTH} -s $JENKINS_URL create-node ${JENKINS_SLAVE_NAME:-xtesting} << EOF
<slave><launcher class='hudson.slaves.JNLPLauncher' /><mode>NORMAL</mode><numExecutors>2</numExecutors><remoteFS>/var/jenkins_home</remoteFS></slave>
EOF
java -jar /usr/share/jenkins/agent.jar -jnlpUrl $JENKINS_URL/computer/${JENKINS_SLAVE_NAME:-xtesting}/slave-agent.jnlp -jnlpCredentials ${JENKINS_AUTH}
