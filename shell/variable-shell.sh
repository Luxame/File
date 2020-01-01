#!/bin/bash
first_pid=$(ps aux | grep docker | grep -v grep | awk '{print $2; exit}')
second_pid=$(ps aux | grep docker | grep -v grep | awk '{print $2; exit}')

