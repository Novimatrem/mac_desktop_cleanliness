# mac_desktop_cleanliness

Moves the Desktop folder contents to a folder named Desktop2 so that the Desktop remains tidy (for privacy, and clean)

EDIT: yes, i know there is an option to hide desktop icons in mac OS's settings, it randomly keeps re-enabling the icons despite the button visibly being unticked, and only disappearing them again when i toggle its state twice, because mac OS is a buggy pos, this was my workaround to that


# This is not working, the files remain in the Desktop folder and do not move to Desktop2!

This is caused by a security feature in Mac OS, where depending on your user account, and how you ran the script in the first place, bash's permission to access the files may be silently denied. To fix this, follow this Apple Support article [https://support.apple.com/en-us/101653](https://support.apple.com/en-us/101653) - choosing the file /bin/bash - ensuring it is granted Full Disk Acccess. Show hidden files with Cmd + Shift + .

