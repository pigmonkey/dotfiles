#!/usr/bin/env sh
# http://terminalmage.net/2011/10/12/printing-to-pdf-in-mutt/
INPUT="$1"

build_dir() {
    # Create the output directory.
    if [ -n "$XDG_RUNTIME_DIR" ]; then
        dir=$XDG_RUNTIME_DIR/mutt
    else
        dir=/tmp/$USER/mutt
    fi
    mkdir -p "$dir"
}

check() {
    # Check that dependencies are installed.
    if ! command -v enscript >/dev/null || ! command -v ps2pdf >/dev/null; then
        echo "ERROR: both enscript and ps2pdf must be installed" 1>&2
        exit 1
    fi
}

check
build_dir

tmpfile="`mktemp -p "$dir" mutt_XXXXXXXX.pdf`"
enscript --font=Courier8 $INPUT -G2r -p - 2>/dev/null | ps2pdf - $tmpfile
xdg-open $tmpfile >/dev/null 2>&1 &
sleep 1
rm $tmpfile
