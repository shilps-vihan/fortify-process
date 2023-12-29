#!/usr/bin/expect

set pass $::env(FORTIFY_PWD)
spawn sftp USWIN\\Svc-ITCODESCAN@sast-lpad.verizon.com:/LPAD/
expect {
        Password: {send "$pass\r"; exp_continue}
}

expect sftp>
send "lpwd\r"

expect sftp>
send "lls\r"

expect sftp>
send "mput *.mbs\r"

expect sftp>
send "mput *.xml\r"

expect sftp>
send "exit\r"
