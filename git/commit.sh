#!/usr/bin/env bash

echo "commit for $1"
echo $1 \
| grep -v "__jb_\w\w\w__" \
| grep -o "${GOPATH}src/github\.com/wzdxt/[^/]*" \
| xargs -I {} sh -c "git -C {} add . ; git -C {} commit -m 'auto save' ; git push origin head"

