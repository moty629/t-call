# Architecture

Tcall uses a Supervisor-Controlled Session Architecture.

## Core Principles

- Sessions are owned by root
- Users never own the shell or tmux session
- Admins can attach to a live session at any time
- Privileged commands are executed outside the user shell

## Components

- tcall-user: Restricted user interface
- tcall-supervisor: Session controller
- tcall-admin: Admin control interface
- tcall-exec: Privileged command executor

