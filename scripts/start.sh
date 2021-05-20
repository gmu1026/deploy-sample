#!/usr/bin/env bash
ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH)
source ${ABSDIR}/profile.sh

REPOSITORY=/home/ec2-user/deploy-sample
PROJECT_NAME=deploy-sample

echo "애플리케이션 배포"
JAR_NAME=$(ls -tr $REPOSITORY/*.jar | tail -n 1)

echo "JAR NAME: $JAR_NAME"

chmod +x $JAR_NAME

IDLE_PROFILE=$(find_idle_profile)

echo "$JAR_NAME 을 profile=$IDLE_PROFILE 로 실행"
nohup java -jar -Dspring.profiles.active=$IDLE_PROFILE $JAR_NAME > $REPOSITORY/nohup.out 2>&1 &
