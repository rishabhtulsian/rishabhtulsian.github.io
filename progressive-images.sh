#!/bin/bash
mkdir pimages
for image in images/*
do
  gm convert $image -interlace line p$image
done
rm -rf images
mv pimages images
