#!/usr/bin/env bash

echo $1 \
| grep -o "${GOPATH}src/github\.com/wzdxt/[^/]*" \
| xargs -I {} sh -c "git -C {} add . ; git -C {} commit -m 'auto'"




