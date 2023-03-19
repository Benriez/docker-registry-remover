#!/bin/bash
removable_blobs=()

while read line
do
  removable_blobs+=("$line")
done < blobs.txt



for i in ${!removable_blobs[@]}; do
    sha=$(echo ${removable_blobs[$i]} | grep -o 'sha256:[a-z0-9]*')
    # get first two chars of every elemnt in list
    el_dir=${sha:7:2}
    blob=${sha:7}

    # sudo rm -rf './'$el_dir'/'$blob
    echo './'$el_dir'/'$blob 'deleted'

done