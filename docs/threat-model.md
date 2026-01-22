# Threat Model – T-call

## Threats Mitigated

### Privilege Escalation
- Users cannot run sudo
- Admin approval required per command

### Credential Leakage
- Users never see admin password
- Password handled by PAM only

### Lateral Movement
- Sessions are per-user
- No shared shells or tokens

### Abuse of Authority
- All admin actions are logged
- Single-command execution only

### Session Hijacking
- Session files owned by root:tcall
- Users cannot forge sessions

## Non-Goals
- Kernel exploits
- Hardware attacks
- Malicious root user

## Trust Assumptions
- Admin is trusted
- OS kernel is trusted
