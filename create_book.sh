#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0 <image dir> <crop height>" >&2
    exit 2
fi

rm -fr ${1}/cropped ${1}.pdf
mkdir ${1}/cropped

for src in ${1}/*.jpg
do
    name=$(basename ${src})
    dst=${1}/cropped/${name/_w/}
    w=$(identify ${src} | awk '{print $3}' | cut -d 'x' -f1)
    jpegtran -crop ${w}x${2}+0+0 -perfect ${src} > ${dst}
    exiftool -all= -q -overwrite_original ${dst}
done

img2pdf ${1}/cropped/*.jpg -o ${1}.pdf
exiftool -all= -q -q -overwrite_original ${1}.pdf