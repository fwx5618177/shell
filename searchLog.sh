#!/bin/bash
#
#	查询日志中的错误
#

egrep '(reject|warning|error|fatal|panic):' /var/log/maillog
