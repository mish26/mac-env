#!/bin/sh
cd `dirname $0`
CURRENT_DIR=`pwd`
LAUNCH_AGENT_DIR=~/Library/LaunchAgents

ln -s ${CURRENT_DIR}/system.environment.plist ${LAUNCH_AGENT_DIR}/system.environment.plist
ln -s ${CURRENT_DIR}/exec.sh ${LAUNCH_AGENT_DIR}/exec.sh

cd $LAUNCH_AGENT_DIR
launchctl unload system.environment.plist
launchctl load system.environment.plist

# finderの上部に、絶対pathを表示する
defaults write com.apple.finder _FXShowPosixPathInTitle -boolean true
killall Finder
