#!/bin/sh

while getopts ":p" o; do
    case "${o}" in
        p)
            p=1
            ;;
        *)
            echo "Unimplemented"
            exit 1
            ;;
    esac
done

if [ -z "${p}" ]; then
    echo "Unimplemented"
    exit 1
fi

for fn in /usr/lib/*.so*; do
        [ -h $fn ] && continue
        echo "  $(basename $fn) (libc6) => $fn"
done
