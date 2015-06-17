#!/usr/bin/env bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
bzr branch lp:bzr-difftools $DIR/difftools
bzr branch lp:bzr-pager $DIR/pager
bzr branch http://people.samba.org/bzr/jelmer/bzr-rewrite/trunk $DIR/rewrite
bzr branch lp:bzr-wdiff $DIR/wdiff

