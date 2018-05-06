#!/bin/sh
cd `dirname $0`
CURRENT_DIR=`pwd`
USER_NAME=`whoami`
LAUNCH_AGENT_DIR=/Users/${USER_NAME}/Library/LaunchAgents

ln -s ${CURRENT_DIR}/system.environment.plist ${LAUNCH_AGENT_DIR}/system.environment.plist
ln -s ${CURRENT_DIR}/exec.sh ${LAUNCH_AGENT_DIR}/exec.sh

cd $LAUNCH_AGENT_DIR
launchctl unload system.environment.plist
launchctl load system.environment.plist
