#!/usr/bin/expect

spawn sftp download@SAST-LPAD.verizon.com
expect "Are you sure you want to continue connecting (yes/no)?"
send "yes\n"
expect "password:"
send "download\n"
expect "sftp>"
send "cd /Fortify_20.2\n"
expect "sftp>"
send " get fortify.license\n"
expect "sftp>"
send "get Fortify_SCA_and_Apps_20.2.4_linux_x64.run\n"
expect "sftp>"
send "get server.properties\n"
expect "sftp>"
send "get keys.zip\n"
expect "sftp>"
send "exit\n"
interact
