# Tcall

Tcall is a supervised Linux session gateway that allows an administrator
to join a user's live working session, observe activity, and approve
privileged operations without sharing shells or giving direct sudo access.

## Why Tcall

Traditional tools like sudo, tmux, or screen do not provide:
- Safe admin takeover of a live user session
- Controlled privilege escalation
- Clear audit boundaries

Tcall is designed to solve this gap.

## Key Features

- Root-owned supervised sessions
- Users never own the session
- Admin can join the current session at any time
- Privileged commands require admin approval
- No shared sudo or shared shells
- Designed for audit-friendly environments

## Status

Project scaffolding completed.  
Implementation in progress.
