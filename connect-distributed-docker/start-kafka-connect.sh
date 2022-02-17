#!/bin/sh

# Strating Kafka connect

echo -e "Current file contents:\n $(cat /etc/hosts)"
echo "$DETECTED_IP $DETECTED_HOSTNAME" >> /etc/hosts
echo -e "\n\n\nUpdated file contents:\n $(cat /etc/hosts)"

#echo $BROKERS $USERNAME $GROUP
#sed -i "s/BROKERS/${BROKERS}/g" /opt/connect-distributed.properties
#sed -i "s/GROUP/${GROUP}/g" /opt/connect-distributed.properties

echo Starting Kafka connect

cd /opt/kafka_2.12-3.1.0/bin
./connect-distributed.sh /opt/connect-distributed.properties


while :
do
	sleep 20
done
