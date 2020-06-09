#!/bin/sh
# -*- coding: utf-8 -*-


set -e

ts=$(date +%s)
echo "$INPUT_KUBECONFIG" | base64 --decode > /tmp/config-$ts
export KUBECONFIG=/tmp/config-$ts

sh -c "kubectl $*"
