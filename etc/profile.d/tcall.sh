#!/bin/sh

RUNDIR="/var/run/tcall"
USER="$(whoami)"
SESSION="$RUNDIR/session_$USER"

[ "$USER" = "root" ] && return

case "$-" in
  *i*) ;;
  *) return ;;
esac

if [ ! -f "$SESSION" ]; then
  echo "Access denied. Admin session required."
  logout
fi

exec tcall-user
