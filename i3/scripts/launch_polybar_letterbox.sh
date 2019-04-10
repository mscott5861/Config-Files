#!/usr/bin/env bash
killall polybar
(sleep 2; polybar top1 -r) &
(sleep 2; polybar bottom1 -r) &
