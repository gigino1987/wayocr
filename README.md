## wayocr, a simple fast OCR help for blind on wayland session  
##Introduction  
In last years, popular screen reader, such as Jaws and NVDA in Windows had implemented OCR functions which allow to read inaccessible screen windows and in some case also a IA image recognizer.  
This feature doesn't yet implemented in Orca screen reader on Linux, but there are third parties such as ocrdesktop that do this.  
Otherwise, this software works in X11 session only, but no in wayland, the recent Linux graphical server.  
I'm actually working on GNOME session using wayland and for this reason I wrote a rudimental script that provides to take a screenshot and via OCR engine return output of a specific window.  
This script I called "wayocr", fusion of wayland and ocr.  
##How it works  
This script when it run provides to take a screenshot with relative software (for now it supports only gnome-screenshot) that you must install via your distro package manager (apt on Debian, dnf on Fedora, pacman in Archlinux etc.), then via tesseract it's scanned and results are saved in file that's opened with your text editor application.  
To run it I suggest to associate a shortcut (I associated Ctrl+Alt+R).  
It isn't a perfect solution but might can be useful for reading inaccessible apps.  
## Needed packages  
To run this script you must install the tesseract OCR software and gnome-screenshot (it might can be already installed if you use GNOME, but isn't always so.).  
## Install and run    
To install and run this script follow procedure below:  
1. Open terminal.  
2. Download wayocr via github (you must have it installed):  
$ git clone https://github.com/gigino1987/wayocr.git  
3. Store it in you home directory.  
4. Install gnome-screenshot and tesseract with your interest language pack for recognization (depending your distro package manager, apt on Debian for example).  
$ sudo apt install gnome-screenshot tesseract tesseract-data-eng (note: eng is language pack for English).    
5. Give permissions to script for run it:  
$ cd wayocr  
$ chmod +x wayocr.sh  
6. Test it:  
$ ./wayocr.sh  
If it works correctly you ear a camera sound and after few moment appears text editor and you can read results with arrows.  
Now, you can close all windows. I suggest to associate the script at a shortcut.  
1. Go in settings, find Keyboard and press enter, then press right arrow.  
2. Press tab until you find shortcut settings, then press enter.  
3. Find Custom shortcuts and press enter.  
4. press tab and find add button.  
5. Now, compile text fields:  
Name: name that you want  
Command: /home/youruser/wayocr/wayocr.sh  
Shortcut: shortcut that you want but you do attention to shortcut conflicts.  
Now, find ok button and press space or enter.  
  
  Enjoy!
