#!/bin/bash
html-minifier --collapse-whitespace --collapse-inline-tag-whitespace --collapse-boolean-attributes --remove-tag-whitespace --remove-attribute-quotes --remove-redundant-attributes --prevent-attributes-escaping --use-short-doctype --remove-empty-attributes --remove-script-type-attributes --remove-style-link-type-attributes --remove-optional-tags $1 -o $1.min
rm $1
mv $1.min $1

