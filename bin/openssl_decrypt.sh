#!/bin/bash

if [[ -z $1 || -z $2 || -z $3 ]]; then
  echo "Usage: $0 [input_file] [output_file] [password]"
  exit 1
fi

IN_FILE=$1
OUT_FILE=$2
PASSWORD=$3

openssl enc -base64 -d -aes-256-cbc -nosalt -pass pass:$PASSWORD -in $IN_FILE -out $OUT_FILE
