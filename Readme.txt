╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                                                |
|                                          Cornucopia β                                          |
|                                             By 001                                             |
|                                                                                                |
|                                         Reddit u\0-0-1                                         |
|                                         KSP Forum: 001                                         |
|                                                                                                |
╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

Cornucopia v1.0.0.0β - Initial Release.


Release Notes:

 - Lists all parts in GameData as a browse-able tree view.

 - Allows for showing a tree view for a specific mod.

 - Automatically names mods if found in the included list.

 - Allows for setting of mod names as displayed via right-click.

 - Allows for filtering of any view by user input string.

 - Tree view shows proper part names.

 - Allows for filtering of parts by category.

 - Allows for filtering of parts with no category set.

 - Tree view highlights deprecated parts found.

 - Shows total number of parts for a given mod.
   (Visible as a tooltip, when the mouse is over the mod name on the right side)

 - Shows basic part information when a part is selected.

 - Shows up to four resources if found in the part.

 - Allows the current folder path to be copied when one selected.
   (Click the path on the status bar to copy when visible)

 - Allows a parts config file to be loaded in default text editor.
   (Opens the parts config in the default editor you have set to open .cfg files)

 - Allows any selected folder to be opened in explorer.

 - Secondary button for showing a normal folder structure as a tree view.

 - Allows for searching Spacedock and KSP Addons forums.

 - Scans for and provides mod download links where found.

 - Includes doubled sized buttons and images for larger UI sizes.

 - Automatically uses larger buttons and images when the UI size is greater than 1920x1080.

 - Setting for enabling or disabling the large UI buttons and images.

 - Setting for keeping the window on top.

 - Setting for saving the window position on exit.

 - Stability tested with over 300 mods with 10,000+ parts installed. :)

Known issues:

 - Some rare visual glitches with mod names sometimes being drawn twice on the first click.

 - Some erroneous text is shown when names or descriptions contain special characters.

 - Some additional text from the .cfg is sometimes visible next to extracted values, E.g. mass, cost etc.

 - Resources with duplicate names are sometimes missed and not displayed.

 - There is currently no dark mode :(

Known issues: (Source code)

 - Some of the functions don't yet have comments.
   These are still subject to change, and will be commented when finalized.

Roadmap:

- Fix known issues.

- Fixed any bugs reported after this initial release.

- Add a proper dark mode.

- v1 release.

- Add command line based functionality for creating various lists.

- Work with actual mod makers and create a framework of some kind so this can be used to safely make tweaks to parts.

- Take any suggestions on improvement and implement where possible.

- If successful, bask in the glory of having created something actually useful for the KSP community.



* Description:

Cornucopia - A part lister\navigator for KSP.

Intended for advanced players, mod makers and tweaker's.

Automatically scans GameData for parts and presents them in an easily browse-able tree view.

Shows part information and mod download links where found.

Allows you to quickly filter the parts shown, by a search string or by category. See release notes for full list of features.

NOTE: Cornucopia does not make any changes to .cfg files, it is intended to put them all at your fingertips so you can do so manually if needed.

* Prerequisites:

Any valid KSP installation, with properly installed mods.

Optional: If you intend to edit the .cfg files, you will need to register .cfg files to open in a text editor such as Notepad, or VSCode.
          Chances are if your the type of person that edits config files, this is already done.

* Installation:

Make sure the "`Cornucopia β" folder goes inside ..\GameData\ just like any mod.

NOTE: Cornucopia should only be launched from within the ..\GameData\`Cornucopia β\ folder.
      If needed, you can use the make shortcut button in the settings to make a valid shortcut to the app in any desired folder.
      This will ensure that the shortcut will have the correct working directory set.
      `
* Usage:

Browse all your parts in a tree view, search and filter them as needed.

See all parts as a single tree, or select a specific mods tree from the dropdown list.

Search:
When the whole tree is showing you can search through every found part.
If a list of filtered parts is showing it will be further refined by your search.

To return to the full tree just click one of the tree view buttons.

Note: First launch requires you to wait a few moments for a database\tree of your parts to be created.
      This will also happen if your total part count changes, additional launches however will be much faster since they will skip this step.
      E.g. When you install or remove any mods with parts.

* Additional:

The tree view is based on the folder structure of GameData, but the top level names are shown as the mods proper mod names (in a sorted list).

E.g. 'WarpPlugin' will show as 'KSP Interstellar Extended'.

This is derived from an internal database matching some 300+ top level folder names with the full mod name.
Any top level folder names not found in the list will show the default folder name instead.
You can set any top level name by right clicking it and typing a desired name, the database will be amended accordingly.

Any part names will be displayed as shown in game, these are derived from the parts own title in the .cfg where found.

You can optionally use the other tree button to show a normal file\folder structure.

Included files:

..\Settings.ini
---------------
Stores web links, and settings options.

..\Files\ModNames.ini
----------------------
A list of mod folder names with matching mod names.

..\Files\PartNames.ini
----------------------
List of known part name #loc's, for fast naming of found parts.
(Currently En-us only)

..\Files\Resources.lst
----------------------
List of resources to find within a parts .cfg

..\Files\Index\
-----------------
This folder will appear after first launch and contains tree files and the main index file.

Data storage:

%TMP% is used to store some files on first launch, and is also used to create a temporary ini file for the currently selected part.
No additional data is stored beyond %TMP% and GameData\`Cornucopia β\
If you have save window position enabled, the main window x\y positions are saved to settings.ini on exit.
`


My email in binary, for the determined :)
01101000 01100001 01101101 01100101 01100101 01100100 01000000 01100111 01101101 01100001 01101001 01101100 00101110 01100011 01101111 01101101