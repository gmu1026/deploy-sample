#!/bin/bash
REPOSITORY=/home/ec2-user/deploy-sample
CURRENT_PID=$(pgrep -fl DeploySample | grep jar | awk '{print $1}')

if [ -z "$CURRENT_PID" ]; then
  echo "구동 중인 애플리케이션이 없습니다."
else
  kill -15 $CURRENT_PID
  sleep 5
fi

JAR_NAME=$(ls -tr $REPOSITORY/*.jar | tail -n 1)

chmod +x $JAR_NAME

nohup java -jar JAR_NAME >$REPOSITORY/nohup.out 2>&1 &