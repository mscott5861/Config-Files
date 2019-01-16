#!/usr/bin/env bash
killall polybar
(sleep 2; polybar base1 -r) &
(sleep 2; polybar base2 -r) &
