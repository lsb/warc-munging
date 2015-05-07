#!/bin/sh
wget --quiet --output-document=- https://aws-publicdatasets.s3.amazonaws.com/common-crawl/crawl-data/CC-MAIN-2015-11/warc.paths.gz | gzip -cd | sed 's_^_https://aws-publicdatasets.s3.amazonaws.com/_' | sort
