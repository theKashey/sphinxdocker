#!/bin/sh

/bin/sh /opt/searchd-docker/spin-up/install.sh
/bin/sh /opt/searchd-docker/spin-up/paths.sh

chmod a+x /opt/searchd-docker/start-up/*
cp /opt/searchd-docker/start-up/* /bin

