#!/bin/bash
for dir in */; do
  if [ -d "$dir" ]; then
    chmod a+x "$dir"
  fi
done
