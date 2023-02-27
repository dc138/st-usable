#!/bin/bash

cd "$(dirname "$0")"/..

for f in patches/*.diff; do
  patch -p1 < $f
done;
