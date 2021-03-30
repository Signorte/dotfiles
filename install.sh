#!/bin/bash

case $( uname -s ) in
  Darwin) echo Darwin
          bash install_darwin.sh;;
  Linux)  echo Linux
          bash install_linux.sh;; 
  *)      echo Others (neither Linux nor Darwin) so finish this sequence;;
esac
