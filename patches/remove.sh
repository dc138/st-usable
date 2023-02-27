#!/bin/bash

cd "$(dirname "$0")"/..

ls patches/*.diff | tac | while read f; do
  patch -p1 -R < $f
done;
