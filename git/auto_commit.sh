#!/usr/bin/env bash

fswatch -x --batch-marker -e '\.git' -r $GOPATH/src/github.com/wzdxt/ \
| xargs -I {} sh -c "./commit.sh {} auto" \
#| grep -o "${GOPATH}src/github\.com/wzdxt/[^/]*" \
#| xargs -I {} sh -c "git -C {} status"

