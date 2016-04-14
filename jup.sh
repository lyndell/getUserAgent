#!/bin/bash -x
#
# Just type "jup example.com:path/to/docroot".
# or save the destination in to the file .jup.conf like so:
#
# DOCROOT="example.com:path/to/docroot"
#
#


echo "\$1 = $1"

if [ $1 ];
then
  DOCROOT=$1
else
  if [ -e .jup.conf ]
  then
    echo "Reading .jup.conf"
    source .jup.conf
  else
    echo "No destination specified in commandline argument or saved in the .jup.conf file."
    exit 1 # no destination
  fi
fi

if [ -e _site/ ]
then
  SOURCEDIR="_site/" 
else
  SOURCEDIR="./" 
fi

echo "Using DocumentRoot of $DOCROOT"
echo "Using source directory  of $SOURCEDIR" 

rsync -avvi --delete                  \
  $SOURCEDIR -e ssh $DOCROOT
