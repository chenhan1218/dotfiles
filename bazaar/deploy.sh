#!/usr/bin/env bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
PLUGINS_DIR=$DIR/plugins
mkdir -p $PLUGINS_DIR
bzr branch lp:bzr-difftools $PLUGINS_DIR/difftools
bzr branch lp:bzr-pager $PLUGINS_DIR/pager
bzr branch http://people.samba.org/bzr/jelmer/bzr-rewrite/trunk $PLUGINS_DIR/rewrite
bzr branch lp:bzr-wdiff $PLUGINS_DIR/wdiff

