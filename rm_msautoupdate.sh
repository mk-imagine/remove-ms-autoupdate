#!/bin/bash

if [ -d /Library/Application\ Support/Microsoft/MAU2.0/Microsoft\ AutoUpdate.app ]; then
    rm -rf /Library/Application\ Support/Microsoft/MAU2.0/Microsoft\ AutoUpdate.app
    echo "REMOVED Microsoft AutoUpdate.app"; then
else
    echo "Microsoft AutoUpdate.app NOT REMOVED; not found"
fi

if [ -f /Library/LaunchAgents/com.microsoft.update.agent.plist ]; then
    rm -f /Library/LaunchAgents/com.microsoft.update.agent.plist
    echo "REMOVED com.microsoft.update.agent.plist"; then
else
    echo "com.microsoft.update.agent.plist NOT REMOVED; not found"
fi

if [ -f /Library/LaunchDaemons/com.microsoft.autoupdate.helper.plist ]; then
    rm -f /Library/LaunchDaemons/com.microsoft.autoupdate.helper.plist
    echo "REMOVED com.microsoft.autoupdate.helper.plist from LaunchDaemons"; then
else
    echo "com.microsoft.autoupdate.helper.plist NOT REMOVED; not found"
fi

if [ -f /Library/PrivilegedHelperTools/com.microsoft.autoupdate.helper.plist ]; then
    rm -f /Library/PrivilegedHelperTools/com.microsoft.autoupdate.helper.plist
    echo "REMOVED com.microsoft.autoupdate.helper.plist from PrivilegedHelperTools"; then
else
    echo "com.microsoft.autoupdate.helper.plist NOT REMOVED; not found"
fi