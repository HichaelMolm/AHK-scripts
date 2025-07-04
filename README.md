# AHK-scripts

### A collection of useful AHK scripts for windows.

**_To enable scripts to run on startup press win+r --> type shell:startup --> copy ahk scripts to folder_**

# Scripts overview and explanation:

## General scripts

### File explorer rename.ahk
**For easy renaming of files ' is remapped to f2 when inside file explorer. This is also useful for copying the name of the file**
  - '<br/>
remapped to <br/>
f2<br/>
_(Only when inside file explorer)_

### ½ to $.ahk
**$ is frequently used in programs such as R and excel, so instead of having to use alt+F4, ½ has been remapped to $ (usually conveniently located in top left corner of keyboard)** 
  - ½<br/>
remapped to<br/> 
$  <br/>

### copyOneFolderUp.ahk
**For moving files one folder up. Select one or more files and press CTRL+u to move the files to parent directory. This is also useful because Windows 11 no longer supports dragging a file to the filepath**
  - Ctrl+u<br/>
remapped to <br/>
ctrl+x --> backspace --> ctrl+v <br/>
_(Only when inside file explorer)_

### duplicate chrome tab.ahk
**For duplicating a current chrome tab. Press Ctrl+Shift+d. (credit to https://stackoverflow.com/questions/6275405/how-can-i-get-the-current-browser-url-with-an-autohotkey-script)**
  - Ctrl+Shift+d<br/>
remapped to <br/>
alt+d --> Ctrl+x --> Ctrl+t --> Ctrl+v --> enter<br/>
_(Only when inside chrome)_

### editXLcell.ahk 
**For editing the contents of an excel cell press ctrl + '. Usually you would need to either navigate to the formula bar in the top or double click the cell, but not anymore**
   - ctrl + ' <br/>
remapped to <br/>
double click<br/>
_(Only when inside excel)_

### Excel bullet.ahk 
**For inserting a word bullet in excel, go into the cell and press ctrl+-.** 
   - ctrl + - <br/>
remapped to <br/>
unicode character {U+2022}<br/>
_(Only when inside excel)_

### windowsPathToR.ahk
**When having used "copy as path" on a file in windows (the shortcut is ctrl+shift+c) windows splits folders using \, this can't be read by R and probably other programming languages.**
   - ctrl + shfit + v <br/>
remapped to <br/>
this is not a remapping rather a script that takes a windows path and replaces \ with / such that R and other programming languages can use it. The shortcut works when inside apps based on chromium

## Actuo scripts

**_These are scripts specific to my work that will not be useful for most people_**

**For easy navigation to new engines press ALT+e**
  - alt+e<br/>
remapped to: <br/>
this is not a remapping, rather a script that takes your current URL base path and appends "/engine"<br/>
_(Only when inside chrome)_
