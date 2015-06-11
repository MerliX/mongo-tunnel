#!/usr/bin/env bash
port=$((netstat  -atn | awk '{printf "%s\n%s\n", $4, $4}' | grep -oE '[0-9]*$'; seq 32768 61000) | sort -n | uniq -u | head -n 1)
ssh $2 -L $port:$1 -M -S /tmp/mongo-ctrl-socket-$port -fnNT && mongo localhost:$port && ssh -S /tmp/mongo-ctrl-socket-$port -O exit $2
