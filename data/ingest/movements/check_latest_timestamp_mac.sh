#!/usr/bin/env bash
# @rmoff 2 August 2019

kafkacat -b localhost:9092 -t networkrail_TRAIN_MVT_X -o-1 -c1 -C | jq '.header.msg_queue_timestamp' | sed -e 's/"//g' | sed -e 's/000$//g' | xargs -Ifoo date -j -f %s foo
