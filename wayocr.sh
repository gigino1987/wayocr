#!/usr/bin/bash
# OCR for blind in wayland
# This script provides to take a screenshot of full screen and
# OCR scan, then show results in text editor

cd ~/wayocr
gnome-screenshot -w -f image.png
tesseract image.png out.txt --oem 1
xdg-open out.txt.txt
