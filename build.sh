#!/bin/sh

# Building WCFSetup.tar.gz

cd ./com.woltlab.wcf/templates/
tar -cf ../templates.tar *
cd ../
tar -cf ../wcfsetup/install/packages/com.woltlab.wcf.tar * --exclude=templates
rm templates.tar
cd ../wcfsetup
tar -czf ../WCFSetup.tar.gz install setup
rm install/packages/com.woltlab.wcf.tar