#!/bin/sh

set -e

export DEVICE=T00I
export VENDOR=asus
./../../$VENDOR/cvtlp-common/setup-makefiles.sh $@
