<div align="center">
  
# Win2xcur Script by PxRyzl

A Simple bash script to convert windows cursor such as .cur and .ani into xcursor using win2xcur.

</div>

[Youtube Tutorial on how to use the script](https://youtu.be/tatl1YSWwkM)

Feel free to download some of the cursors that has been converted on my [pling](https://www.pling.com/u/pxryzl/) account

[Win2xcur Github](https://github.com/quantum5/win2xcur)
 

> [!IMPORTANT]
> **These script are made with the help of AI so it might have some problem that I can't fix by myself. But these scripts have been tested and there doesn't seem to be any error.**


## Installing

### Source

Install these dependencies

```txt
git yad/zenity 
```

Cloning

```sh
git clone https://github.com/PxRyzl/win2xcur-script
```
## Usage

<div align="center">
  
### Run the create-directory-first script first before doing any conversion to create the important directories for the script to work
<img width="958" height="557" alt="20250918-185525" src="https://github.com/user-attachments/assets/6ba73a2e-a06e-496b-957e-56f77fd84dbd" />

</div>

### Automatic Sort
> [!IMPORTANT]
> **This will automatically sort the windows cursor into proper directory but the script sort the cursor based on the file name so make sure it is the same or close to it**

Example of windows cursor name
  ```txt
  Alt,Busy,Cross,Default,Dgn1,Dgn2,Hand,Help,Horizontal,Link,Move,Text,Unavailable,Vertical,Work
  ```
Cursor file such as `Location/Pin` or `Person/People` won't be needed

1. Copy all the Windows cursor into ~/win2xcur-script/autosort/
2. Run the 'start' script
3. It will create test-cursor directory containing the converted cursor
4. It will take awhile to convert all the windows cursor into xcursor but once it's done a popup will appear to put the name of the cursor and comment
5. Move the finished cursor into ~/.icons or ~/.local/share/icons
6. Set and apply the cursors in system settings

### Manual Sort

This involve manually putting the each cursors file into their corresponding directory but other than that it's basically have the same steps as automatic sort.

<img width="1689" height="510" alt="20250918-191139" src="https://github.com/user-attachments/assets/1a25f37e-3175-4ff1-85cc-ffa2b4a782c8" />

1. Copy all the Windows cursor into ~/win2xcur-script/input into their corresponding directory
2. Run the 'start' script
3. It will create test-cursor directory containing the converted cursor
4. It will take awhile to convert all the windows cursor into xcursor but once it's done a popup will appear to put the name of the cursor and comment
5. Move the finished cursor into ~/.icons or ~/.local/share/icons
6. Set and apply the cursors in system settings

## Issues

### .cur file didn't get converted
Sometimes there would be an issue where the cur file didn't get converted and it's usually because the .cur file isnt really a real .cur and it's actually other file type (e.g `.png,.jpg,.ico`)

To check whether or not the .cur file is really a real .cur use the file command
```sh
file Alternate.cur
```
A real .cur file would show this
```sh
Alternate.cur: MS Windows cursor resource - 1 icon, 32x32, hotspot @16x4
```
Meanwhile a .ico file would show this
```sh
Alternate.cur: MS Windows icon resource - 1 icon, -128x-128, 62 planes, 22 bits/pixel
```












