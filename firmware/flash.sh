#!/bin/bash

# Bazel передаст пути к файлам через аргументы
PICOTOOL=$1
FIRMWARE=$2

echo "flash ${FIRMWARE}"

$PICOTOOL load $FIRMWARE -f -x
