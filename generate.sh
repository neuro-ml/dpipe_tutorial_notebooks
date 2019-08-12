#!/usr/bin/env bash

if [[ $# -lt 1 ]] ; then
    echo 'Target folder is required'
    exit 1
fi

jupyter nbconvert --to rst ./*.ipynb
sed -i 's/code:: ipython3/code-block:: python3/g' ./*.rst
sed -i 's/\$/\`/g' ./*.rst
mv ./*.rst ${1}

