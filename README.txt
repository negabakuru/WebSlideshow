Based on BrowserImageSlideshow v1.2
https://github.com/dustymethod/BrowserImageSlideshow

A local browser source that plays images and videos in random or alphabetical order.
Displays each image exactly once per loop.

Modes (settings.js)
    0: Random order
    1: Alphabetical order
    2: Alphabetical order (start at random image when source becomes visible)

Setup
0. Download: click "Clone or download" from the github page, choose "Download ZIP", and unzip the files.
    - save the zip somewhere in your Documents folder, and not in the default obs-plugins folder.
1. Place slideshow images in the "images" folder. jpg, png, gifs all work.
2. Refresh images/settings
    - This must be done whenever images are added/removed/renamed, or when settings are updated.
    - Run RefreshImagesW.cmd (windows).
3. *** Repeat step 2 whenever you add/remove/rename images or update the settings. ***

Notes
    - settings.js can be opened & edited manually in any text editor. (includes slide duration & mode settings)
    - Filenames with uncommon characters may not display
