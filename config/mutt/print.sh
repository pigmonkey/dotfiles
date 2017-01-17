#!/usr/bin/env sh
# http://terminalmage.net/2011/10/12/printing-to-pdf-in-mutt/
INPUT="$1"
PDIR="$HOME/tmp/mutt_print"
OPEN_PDF=zathura

# check to make sure that enscript and ps2pdf are both installed
if ! command -v enscript >/dev/null || ! command -v ps2pdf >/dev/null; then
    echo "ERROR: both enscript and ps2pdf must be installed" 1>&2
    exit 1
fi

# create temp dir if it does not exist
if [ ! -d "$PDIR" ]; then
    mkdir -p "$PDIR" 2>/dev/null
    if [ $? -ne 0 ]; then
        echo "Unable to make directory '$PDIR'" 1>&2
        exit 2
    fi
fi

tmpfile="`mktemp $PDIR/mutt_XXXXXXXX.pdf`"
enscript --font=Courier8 $INPUT -G2r -p - 2>/dev/null | ps2pdf - $tmpfile
$OPEN_PDF $tmpfile >/dev/null 2>&1 &
sleep 1
rm $tmpfile
