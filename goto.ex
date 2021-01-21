#!/usr/bin/expect

set SERVER_NAME [lindex $argv 0]
set IP [lindex $argv 1]
set PORT [lindex $argv 2]
set USER_NAME [lindex $argv 3]
set PASSWORD [lindex $argv 4]

spawn ssh -p $PORT $USER_NAME@$IP

trap {
    set rows [stty rows]
    set cols [stty columns]
    stty rows $rows columns $cols < $spawn_out(slave,name)
} WINCH

expect {
    -timeout 300
    "*assword" { send "$PASSWORD\r\n"; exp_continue ; sleep 3; }
    "yes/no" { send \"yes\n\"; exp_continue; }
    "Last*" {
        puts "\n登录成功\n";
        send "PROMPT_COMMAND='echo -ne \"\\033]0;$SERVER_NAME \\007\"' \r";
        send "clear\r";
    }
    timeout { puts "Expect was timeout."; return }
}

interact
