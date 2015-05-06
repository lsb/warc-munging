#!/bin/sh
gzip -cd | grep -Eae '(^WARC-Target-URI|href)' | sed 's/^WARC-Target-URI: /WARC-Target-URI"/' | tr "'\r >" "\"\n" | grep -Eae '^(WARC-Target-URI|href)' | awk -F '"' '$1 == "WARC-Target-URI" { targeturi=$2 } ; $1 == "href=" { print targeturi, $2 }' | gzip -c
