<div align="center">
  
# Win2xcur Script by PxRyzl

A Simple bash script to convert windows cursor such as .cur and .ani into xcursor using win2xcur.

</div>

[Youtube](https://youtu.be/tatl1YSWwkM) Tutorial on how to use the script.

Feel free to download some of the cursors that has been converted on my [pling](https://www.pling.com/u/pxryzl/) account

Win2xcur creator [Github](https://github.com/quantum5/win2xcur) page.
 

> [!NOTE]
> **These script are made with the help of AI so it might have some problem that I can't fix by myself. But these scripts have been tested and there doesn't seem to be any error.**


## Installing

### Source

Install these dependencies

```sh
git yad # or use zenity 
```

Cloning

```sh
git clone https://github.com/PxRyzl/win2xcur-script
```

### Win2xcur
> [!NOTE]
> **Because of the new update to win2xcur it cause problem such as not being able to just use the win2xcur available with the script.**
> 
> **I don't feel like trying to put some duct tape solution such as just syslinking shit and expecting it to hold up and not cause way more issues.**
> 
> **So another duct tape solution from now is that you need to install the win2xcur on your own.**
> 
> **There's 2 ways to install it, either by using pipx or the AUR.**

#### Pipx

You would need to download **python-pipx** using your packages manager.

```sh
pipx install win2xcur
```
Check ~/.local/share/pipx/venvs/ if win2xcur is over there then you are doing good.
Then head over to ~/.local/bin/ and just copy the win2xcur into the win2xcur-script/ directory

#### AUR

As of now there seems to be a problem with AUR where it doesn't explicitly state to install these dependencies and just decide to exit by itself. So you had to install it yourself.

```sh
pacman -S python-installer python-build
```
And it's as simple as that, the binary would be installed globally into the system so you wouldn't need to do any tinkering like copy pasting.



## Usage

<div align="center">
  
### Run the create-directory-first script first before doing any conversion to create the important directories for the script to work
<img width="958" height="557" alt="20250918-185525" src="https://github.com/user-attachments/assets/6ba73a2e-a06e-496b-957e-56f77fd84dbd" />

</div>

### Automatic Sort
> [!WARNING]
> **This will automatically sort the windows cursor into proper directory but the script sort the cursor based on the file name so make sure it is the same or close to it**

Example of windows cursor name
  ```txt
  Alt,Busy,Cross,Default,Dgn1,Dgn2,Hand,Help,Horizontal,Link,Move,Text,Unavailable,Vertical,Work
  ```
Cursor file such as `Location/Pin` or `Person/People` won't be needed

#### Steps
1. Copy all the Windows cursor into ~/win2xcur-script/autosort/
2. Run the 'start' script
3. It will create test-cursor directory containing the converted cursor
4. It will take awhile to convert all the windows cursor into xcursor but once it's done a popup will appear to put the name of the cursor and comment
5. Move the finished cursor into ~/.icons or ~/.local/share/icons
6. Set and apply the cursors in system settings

### Manual Sort
> [!NOTE]
>This involve manually putting the each cursors file into their corresponding directory but other than that it's basically have the same steps as automatic sort.

<img width="1689" height="510" alt="20250918-191139" src="https://github.com/user-attachments/assets/1a25f37e-3175-4ff1-85cc-ffa2b4a782c8" />

#### Steps
1. Copy all the Windows cursor into ~/win2xcur-script/input into their corresponding directory
2. Run the 'start' script
3. It will create test-cursor directory containing the converted cursor
4. It will take awhile to convert all the windows cursor into xcursor but once it's done a popup will appear to put the name of the cursor and comment
5. Move the finished cursor into ~/.icons or ~/.local/share/icons
6. Set and apply the cursors in system settings

## Issues

### Using Fish instead of Bash
Fish user may have problem using the script so it's adviced to use bash instead.

(You may need to delete and clone the script again)

### .cur file didn't get converted
Sometimes there would be an issue where .cur file wouldn't get converted and it's usually because the file is another type of file (e.g `.png,.jpg,.ico`) that has been renamed to .cur

To check the .cur file use the file command
```sh
file Example.cur
```
A .cur would give out this message
```sh
Example.cur: MS Windows cursor resource - 1 icon, 32x32, hotspot @16x4
```
Meanwhile other file such as .ico would show this instead
```sh
Example.cur: MS Windows icon resource - 1 icon, -128x-128, 62 planes, 22 bits/pixel
```












