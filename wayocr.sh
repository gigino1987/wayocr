#!/usr/bin/bash
# OCR for blind in wayland
# This script provides to take a screenshot of full screen and
# OCR scan, then show results in text editor
# This program needs gnome-screenshot to work

if [ ! -f /usr/bin/gnome-screenshot ]
then
espeak-ng "This program needs gnome-screenshot to work. Please install it from your distro's package manager"
exit
fi

if [ ! -f /usr/bin/tesseract ]
then
espeak-ng "This program needs tesseract to work. Please install it from your distro's package manager"
exit
fi

cd ~/wayocr

if [ -n $XDG_SESSION_TYPE ]
then
 if [ $XDG_SESSION_TYPE == "wayland" ]
 then
  gnome-screenshot -w -f image.png
  tesseract image.png out --oem 2
  xdg-open out.txt
  exit
 else
  espeak-ng "Please run this script in wayland session. If you want use OCR in X11 session install ocrdesktop."
  exit
 fi
 echo Error
fi

