#!/bin/sh
# The login and forgot-password forms answer.
set -e
H=http://web:5000
curl -fsS "$H/login" | grep -q 'action="/login"'
curl -fsS "$H/forgot" | grep -q 'action="/forgot"'
