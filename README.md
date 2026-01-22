## Security Model

T-call is a **privilege broker**, not sudo.

### Authentication
- Users authenticate to the OS (SSH / GUI)
- Admin authenticates privileged actions

### Authorization
- Users have zero sudo rights
- Every sudo command requires explicit admin approval
- Admin must enter password per command

### Session Control
- Sessions are initiated by admin only
- Users cannot self-start or escalate
- Admin can terminate sessions at any time

### Audit & Visibility
- All user commands are logged
- All sudo requests are logged
- All approvals are logged

### Guarantees
- No shared root shell
- No password exposure
- No privilege persistence
- No bypass paths
