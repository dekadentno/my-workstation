#!/bin/bash

if [ ! -f /usr/share/applications/signal-desktop.desktop.bak ]; then
    sudo cp /usr/share/applications/signal-desktop.desktop /usr/share/applications/signal-desktop.desktop.bak
fi

sudo sed -i 's|Exec=/opt/Signal/signal-desktop --no-sandbox %U|Exec=/opt/Signal/signal-desktop --use-tray-icon --no-sandbox %U|g' /usr/share/applications/signal-desktop.desktop

if pgrep -x "signal-desktop" > /dev/null
then
    killall signal-desktop && /opt/Signal/signal-desktop --use-tray-icon --no-sandbox %U &
fi
