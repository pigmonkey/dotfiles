import subprocess
from os.path import expanduser

def imappasswd(account):
    path = expanduser("~/.imap-%s.gpg" % account)
    args = ["gpg", "--use-agent", "--quiet", "--batch", "-d", path]
    try:
        return subprocess.check_output(args).strip()
    except subprocess.CalledProcessError:
        return ""
