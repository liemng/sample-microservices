#!/bin/sh

echo "********************************************************"
echo "Starting Subscription Server with Configuration Service: $CONFIGSERVER_URI";
echo "********************************************************"
java -Dspring.cloud.config.uri=$CONFIGSERVER_URI                       \
     -Dspring.profiles.active=$PROFILE                                 \
     -Dspring.cloud.stream.kafka.binder.zkNodes=$KAFKASERVER_URI       \
     -Dspring.cloud.stream.kafka.binder.brokers=$ZKSERVER_URI          \
     -jar /usr/local/subscriptionservice/@project.build.finalName@.jar
