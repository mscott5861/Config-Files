#!/usr/bin/env bash
killall polybar
(sleep 2; polybar base1sway -r) &
(sleep 2; polybar base2sway -r) &
