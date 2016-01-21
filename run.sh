#!/bin/bash

sysctl -w vm.max_map_count=131060
java -Xmx4000m -jar server-assembly-0.90.5.jar --hfile_basepath 2016-01-20-23-48-16.196798/

