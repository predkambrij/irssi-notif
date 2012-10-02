Notifications for irssi by linux command notify-send 
====================================================

# How to use it?

First you need to install irssi and script which is saving private chat, mentions, selected channels, etc.

That computer is typically remote computer that you are all time online but that can be also local:

    # apt-get install irssi
    $ mkdir -p ~/.irssi/scripts/autorun
    $ cp repository/fnotify.pl ~/.irssi/scripts/autorun/fnotify.pl
    $ screen irssi

Computer where notify-send messages will be displayed:

    $ #install notify-send command (ubuntu)
    # apt-get install notify-osd libnotify-bin
    $ #edit file irchack.sh that fields will fit your needs:
    $ screen ./irchack.sh # if you're connecting from external network
    $ screen ./irchack.sh home # when you need to use local ip of target machine
    $ #detach screen with Ctrl+ad
    $ ssh irssiuser@target-computer -t "screen -r" # if irssi is the only screen

