#!/bin/bash
cleancss -o $1.min $1
rm $1
mv $1.min $1
