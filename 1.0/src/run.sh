#!/bin/sh

[ -n "$SSH_ROOT_PASSWD" ] && 

supervisord &&
supervisorctl tail -f ssh
