#!/bin/bash

pids=$(pgrep vlc)
[ -n "$pids" ] && kill -9 $pids