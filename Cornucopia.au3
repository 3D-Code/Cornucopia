#cs

╭────────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                                                 |
|                                      Written in AutoIT Script                                   |
|                                                                                                 |
|                     Download: https://www.autoitscript.com/site/autoit/downloads/               |
|                             Wiki: https://www.autoitscript.com/wiki                             |
|                            Forum: https://www.autoitscript.com/forum/                           |
|                                                                                                 |
╰────────────────────────────────────────────────-────────────────────────────────────────────────╯
╭────────────────────────────────────────────────-────────────────────────────────────────────────╮
                                        Cornucopia v1.0.0β

 - Lists all parts in GameData as a browseable tree view.
 - Allows for showing a tree view for a secific mod.
 - Automatically names mods if found in included list.
 - Allows for setting of mod names as displayed via right-click.
 - Tree view shows proper part names.
 - Allows for filtering of parts by category
 - Allows for filtering of parts with no category set.
 - Tree view highlights deprecated parts found.
 - Shows total number of parts for a given mod.
 - Shows basic part information when a part is selected.
 - Shows up to four resources if found in the part.
 - Allows a parts full path to be copied when it is selected.
 - Allows a parts config file to loaded in default editor.
 - Allows any seleted folder to be opened in explorer.
 - Secondary button for showing a normal folder structure as a tree view.
 - Allows for searching spacedock and ksp addon forums.
 - Scans for and provides mod download links where found.
 - Includes doubled sized buttons and images for larger ui sizes.
 - Automatically uses larger buttons and images when the ui size is greater than 1920x1080.
 - Setting for enabling or disabling the large ui buttons and images.
 - Setting for keeping the window on top.
 - Setting for saving the window position on exit.

╰────────────────────────────────────────────────-────────────────────────────────────────────────╯

╭───────────────────────────────────────────────-─────────────────────────────────────────────────╮
|                                        COMMENTS SECTION                                         |
|                                                                                                 |
|                                SEARCH "CODE START" TO JUMP TO CODE                              |
|                                                                                                 |
╰───────────────────────────────────────────────-─────────────────────────────────────────────────╯

╭───────────────────────────────────────────────-─────────────────────────────────────────────────╮
|                                        LIST OF FUNCTIONS                                        |
╰───────────────────────────────────────────────-─────────────────────────────────────────────────╯

╭──────────────────────-───────────────────────╮
|                                      LOAD UI |
╰──────────────────────-───────────────────────╯

-----------
Func _UI_()
-----------
Draws basic UI elements, and calls functions to draw others.
Handles all UI events.

-

------------------------
Func _Read_UI_Settings()
------------------------
Reads UI settings from settings file.

-

---------------------------
Func _UI_PreLaunch_Checks()
---------------------------
Checks for missing files, re-counts all configs and parts, intialises database rebuild if needed.
Part re-count is triggered if the total cfg count has changed.
Database re-build is triggered if the total part count has changed.

-
╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                               DRAW UI ELEMENTS |
╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

* HighDpi functions are identical, only the images and sizes are double sized, and positioned accordingly.


--------------------------------
Func _Draw_MainButtons()
Func _Draw_MainButtons_HighDpi()
--------------------------------
Draws main UI buttons.
Also draws combo box list and search input box.

-

------------------------------
Func _Draw_InfoIcons()
Func _Draw_InfoIcons_HighDpi()
------------------------------
Draws the right side icons for displaying of part information. (Infoview section)

-

----------------------------------
Func _Draw_TreeView_Btns()
Func _Draw_TreeView_Btns_HighDpi()
----------------------------------
Draw tree navigation buttons.

-

---------------------------------
Func _Draw_CategoryBtns()
Func _Draw_CategoryBtns_HighDpi()
---------------------------------
Draw category filter buttons

-

-------------------------------
Func Draw_Settings_UI()
Func Draw_Settings_UI_HighDpi()
-------------------------------
Draw the settings window, when the settings button is clicked.

-

----------------------
Func _Draw_StatusBar()
----------------------
Draws status bar lines and labels

-

------------------
Func _LoadPNG($sImage, $iCtrlID)
--------------------------------
Loads a given .png image displays it on screen.
Used for buttons and banner image files.

-

╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                                 BUTTON ACTIONS |
╰───────────────────────────────────────────────-────────────────────────────────────────────────╯


------------------
Func _Btns_Main()
------------------
Controls what happens when a main UI button is pressed.

List of main UI buttons\elements:

$Btn_FullNames_View        - Default full name tree view
$Btn_FileAndFolder_View    - File\Folder structure tree view
$hCombo                    - Dropdown list of mods for filtering
$SearchInput               - Search\filter input box
$Btn_Search                - Filters the tree view
$Btn_WebSearch             - Searches ksp addon forum
$Btn_SearchSpaceDock       - Search spacedock
$Btn_Paste                 - Pastes from the clipboard to the input box

-

-------------------------
Func _Btn_FullNamesTree()
-------------------------
Draws a tree view with full mod names and part names.
GameData folder only, only lists mods with part files.
This is the default view.

-

--------------------------
Func _Btn_FullFolderTree()
--------------------------
Draws a tree view showing a normal folder structure.
GameData folder only, only lists mods with part files.

-

---------------------------
Func _Btns_TreeNavigation()
---------------------------
Sends some key strokes to the tree for easier navigation.

List of button variables:

$Btn_TreeTop               - Go to top of tree
$Btn_TreeEnd               - Go to end of the tree
$Btn_TreePrev              - Next branch
$Btn_TreeNext              - Previous branch
$TV_Collapse               - Collapse the tree entire view
$TV_Expand                 - Expand the tree entire view

-

---------------------------
Func _Btns_FilterCategory()
---------------------------
Filter to category buttons actions.

List of button variables:

$Cat_Aero
$Cat_Cargo
$Cat_Communication
$Cat_Control
$Cat_Coupling
$Cat_Electrical
$Cat_Engine
$Cat_FuelTank
$Cat_Ground
$Cat_Payload
$Cat_Pods
$Cat_Science
$Cat_Structural
$Cat_Thermal
$Cat_UnKnown
$Cat_Utility

-

----------------------
Func _Btns_Settings_()
----------------------
Settings buttons actions.

$Btn_CenterWin
$Btn_Donate
$Btn_EditSetttings
$Btn_LargeUI
$Btn_MakeShortCut
$Btn_OnTop
$Btn_RebuilDB
$Btn_WinPositon

-

--------------------------------
Func _Read_CheckBox($idControlID)
--------------------------------
Used by settings UI to see if the user checks a checkbox.

-

-----------------------
Func _LoadSettingsIni()
-----------------------
Used by settings UI to load any previously saved settings.

-

╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                        TREE VIEW MOUSE CLICKED |
╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

------------------------
Func _ModName_Selected()
------------------------
Perform actions when a mod name/top level folder is clicked.

-

--------------------------
Func _SubFolder_Selected()
--------------------------
Perform actions when a mod subfolder folder is clicked.

-

---------------------
Func _Part_Selected()
---------------------
Perform actions when a part name is selected.

-

----------------------------------
Func _Read_Part_Indices($PartName)
----------------------------------
Retrieves part indices from main index file for a slected part.

-

--------------------------
Func _ContextMenu_Action()
--------------------------
Tree view right-click - 'Set name' actions, for top level/mod folders.
Asks for user input and updates various database elements if a change is made.

-

╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                              SEARCH AND FILTER |
╰───────────────────────────────────────────────-────────────────────────────────────────────────╯


-------------------
Func _Search_Tree()
-------------------
Search through the currently selected tree view.

-

-----------------------------
Func _SearchListView($sValue)
-----------------------------
Search through a list view, after a tree has been filtered.

-

-------------------------------
Func _FilterCategory($Category)
-------------------------------
Filter any shown tree to a single category list only.

-

-------------------------------------
Func _FilterCategory_ScanTree($hTree)
-------------------------------------
Loads all listed parts in the tree view to an array for searching/filtering.

-

╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                               PATHS AND NAMING |
╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

------------------------
Func _PathFromRealName()
------------------------
Retrieves a parts folder path based on its top level folder name.

-

-----------------------
Func _PathFromAltName()
-----------------------
Retrieves a parts folder path based on a custom mod/top level folder name.

-

------------------------------
Func _ModNameFromCFGPath($Path)
------------------------------
Retrieves a parts mod name based on the parts full cfg path.

-

---------------------
Func _SortModNames()
---------------------
Sorts the full mod names in modnames.ini by the actuall mod names, as opposed to the folder names that are pointing to them.

-

----------------------
Func _INIRevModNames()
----------------------
Flips the sorted modnames in modnames.ini, so the top level folder points to a full mod name.

-

-------------------------------
Func _SwapSpecialChars($String)
-------------------------------
Swaps some special characters from a saved string so they are displayed correctly

-

----------------------------------
Func _RevSwapSpecialChars($String)
----------------------------------
Replaces some special characters from a string to return its original saved string

-

╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                            CONFIG FILE PARSING |
╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

------------------------------------------
Func _Populate_InfoView($PartNameSelected)
------------------------------------------
Calls the various cfg parse functions, and displays basic part info on right side of the UI. (Infoview area)

-

-----------------------------------
Func _CFG_Find_Info($CfgFile, $Idx)
-----------------------------------
Parses the current parts cfg for basic information.
Creates an ini file in the users %TMP% for the current part, with any found info added to that.
Read by _Populate_InfoView()
-

-----------------------------------
Func _CFG_Find_Resources($CfgFile)
-----------------------------------
Parses the current parts config for any resources.

-

-------------------------------
Func _Populate_Resources($iIni)
-------------------------------
Display any found resources in the info view.

-

--------------------------------
Func _CFG_Find_Modules($CfgFile)
--------------------------------
Scans for modules inside a given parts cfg file.
Experimental\Unused

-

-----------------------------------
Func _CFG_Find_ModuleNames($mArray)
-----------------------------------
Extracts module names from a given parts cfg file.
Experimental\Unused

-

--------------------------------------
Func _CheckForDownloadURL($FolderPath)
--------------------------------------
Searches the current parts folder for a .version file and displays download link button if one is found.

-

----------------------------
Func _ShowPreview($Category)
----------------------------
Shows a preview image based on the currently selected parts category.

-

-------------------------------
Func _AutoCatPreview($PartName)
-------------------------------
Attempts to figure out a parts category where none is set, derived from the parts title.
This is currently only used to display the correct category preview image.

-

------------------------
Func _CountPartsPerMod()
------------------------
Uses per mod generated tree views to count how many parts a mod has.

-

╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                             DATABASE FUNCTIONS |
╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

------------------------
Func _Draw_DB_Build_UI()
------------------------
Draws the database build loading screen.

-

----------------
Func _DB_Build()
----------------
Iterates through the various database build functions in the correct order.
Then merges the various ini files that are generated in the \Index\ folder.

-

----------------------------------
Func _DB_List_Localisation_Files()
----------------------------------
Scans GameData, and list any localisation files found, currently en-us only.

-

-----------------------------
Func _CombineLocals($CFGList)
-----------------------------
Merges any found localisation files in to a single array for later searching.

-

----------------------------
Func _DB_Identify_PartCfgs()
----------------------------
Scans every .cfg found under GameData to see if it is a valid part file.
Stored in array:
Global $PartCFGList

-

---------------------------
Func _DB_Extract_RawNames()
---------------------------
Extracts raw titles from a found part config files.
This can be a full title or an #Autoloc string.
Stored in array:
Global $PartTitles

-

--------------------------------
Func _NameParts($List, $CFGList)
--------------------------------
Checks any #autolocs against the internal names database and sets the name if found.
Stored as temp file inside ..\Files\Index\_Index_PartsNamed_.ini

-

---------------------------
Func _DB_Index_Categories()
---------------------------
Extracts the category of every part found.
This is used to make the tree view filterable by category.
Stored as temp file inside ..\Files\Index\_Index_Categories.ini

-

---------------------------
Func _DB_Index_ModFolders()
---------------------------
Sets the top level name to point to the correct mod name if found in the included list.
Stored as temp file inside ..\Files\Index\_Index_Mod_RootFolders.ini

-

--------------------------
Func _DB_Index_CFGNames()
--------------------------
Indexes evey part cfg name, and numbers them for easy retrieval.
Stored as temp file inside ..\Files\Index\_Index_Cfg_Names.ini

-

--------------------------
Func _DB_Index_FullPaths()
--------------------------
Saves a list of full paths to ever parts config file
Stored as temp file inside ..\Files\Index\_Index_NameAndPaths.ini

-

--------------------------
Func _DB_Index_PartCount()
--------------------------
Makes a record of the total part count found.
This will be used to see if any changes are made to gamedata between app launches.
Stored as temp file inside ..\Files\Index\_Index_Part_Count

-

----------------------------
Func _DB_Compare_PartCount()
----------------------------
Counts all parts in GameData and checks if the total has changed since the database was last build.
If the part count has changed, the database build process will be intialised to see if any new parts can be added to the list.

-

╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                           TREE VIEW GENERATION |
╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

--------------------------
Func _TreeView_Grow_Tree()
--------------------------
Iterates through the various tree building functions in the correct order.

-

-------------------------------------------
Func _TreeView_CFGName_FromPath($sFullPath)
-------------------------------------------
Extracts the cfg name from the full path
Used to identify parts and tag them as such.

-

---------------------------------------------
Func _TreeView_ModFolder_FromPath($sFullPath)
---------------------------------------------
Extracts the top level folder of a mod, from a full path to a parts cfg file.

-

--------------------------------------------------------------------------------------------------------------------
Func _TreeView_Map_Branches($iTreeTempPath, $sFolderBar = "\", $sTreeBar = "|", $sSeparator = "-", $iNSeparator = 3)
--------------------------------------------------------------------------------------------------------------------
Measures depth of branches, based on the folder structer as derived from a parts full config path

-

---------------------------------------------
Func _TreeView_Check_Branches($iTreeTempPath)
---------------------------------------------
Scans a folder path and sets the levels

-

------------------------------------------------------------------------------------------------------------------------
Func _TreeView_Set_Branches($iTreeTempPath, $sFolderRelativePath, $sFolderBar, $sTreeBar, $sSeparator, $iNSeparator = 1)
------------------------------------------------------------------------------------------------------------------------
Sets the levels of the branches based on the folder structure.

-

------------------------------
Func _TreeView_Name_Branches()
------------------------------
Uses folder names to create the branches at the correct level.

-

-------------------------------
Func _TreeView_Apply_ModNames()
-------------------------------
Matches the top branch of the tree with its correct mod name

-

--------------------------------------------------------
Func _TreeView_Tag_Parts($SubNameN, $LevelN, $ParentLVL)
--------------------------------------------------------
Tags found parts for easier viewing in the tree view

-

--------------------------------------
Func _Treeview_Mark_Deprecated($SName)
--------------------------------------
Mark any depricated or obsolete parts in red.
This is derived from the parts title.

-

--------------------------------
Func _TreeView_Build_All($aTree)
--------------------------------
Builds a sinlge large tree containing all mods found
Used as the default view

-

---------------------------------------------------
Func _TreeView_Split_PerMod($SourceTree, $TreePath)
---------------------------------------------------
Splits the large tree in to sub trees for each mod.
Used to filter the tree to a single mod.

-

---------------------------------------
Func _TreeView_Load_Branches($TvFileNm)
---------------------------------------
Loads a given .tre file in to the tree view

-

╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
|                                                                                OTHER FUNCTIONS |
╰───────────────────────────────────────────────-────────────────────────────────────────────────╯


MUTLIPLE:
---------------------
Func _Hide_name()
Func _Show_name()
---------------------
These functions show or hide various UI elements when called.
There are many but should be pretty self explanatory


MUTLIPLE:
------------------------------------
Func name_Hover($iCtrlID)
Func name_Leave_Hover($iCtrlID)
------------------------------------
These handle the mouse over actions.
Used to switch button images to highlight them when the mouse is over a button.

---------------------------------------------------------
Func WM_Notify_Events($hWndGUI, $MsgID, $wParam, $lParam)
---------------------------------------------------------
Required for the right click context menu action.


#ce

;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;|                                           CODE START                                           |
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

;- Compiling defualts
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
	#AutoIt3Wrapper_Icon=Files\Assets\icon.ico
	#AutoIt3Wrapper_Outfile_x64=Cornucopia.exe
	#AutoIt3Wrapper_Compression=4
	#AutoIt3Wrapper_Res_Comment=Cornucopia - KSP Parts lister.
	#AutoIt3Wrapper_Res_Description=Cornucopia - Allows you to browse all parts in GameData as a searchable, filterable tree view.
	#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
	#AutoIt3Wrapper_Res_ProductName=Cornucopia β
	#AutoIt3Wrapper_Res_ProductVersion=1
	#AutoIt3Wrapper_Res_CompanyName=By u\0-0-1
	#AutoIt3Wrapper_Res_LegalCopyright=Open Source
	#AutoIt3Wrapper_Run_AU3Check=n



#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
;-
; Check if the Cornucopia process is running.
#include <Misc.au3>
If _Singleton("Cornucopia", 1) = 0 Then
		MsgBox($MB_SYSTEMMODAL, "", " Cornucopia is already running! ", 1)
		Exit
EndIf

#include <Array.au3>
#include <ButtonConstants.au3>
#include <ColorConstants.au3>
#include <EditConstants.au3>
#include <File.au3>
#include <GDIPlus.au3>
#include <GuiComboBox.au3>
#include <GUIConstantsEx.au3>
#include <GUICtrlOnHover.au3>
#include <GuiEdit.au3>
#include <GuiImageList.au3>
#include <GuiListBox.au3>
#include <GuiListView.au3>
#include <GuiStatusBar.au3>
#include <GuiToolTip.au3>
#include <GUITreeView.au3>
#include <MsgBoxConstants.au3>
#include <StaticConstants.au3>
#include <String.au3>
#include <TreeViewConstants.au3>
#include <WinAPI.au3>
#include <WindowsConstants.au3>

Opt("GUIOnEventMode", 1)
DllCall("User32.dll", "bool", "SetProcessDPIAware")
_DpiConfig() ; (Must be done before launching the UI)

;╭──────────────────────-───────────────────────╮
;                   SET PATHS
;╰──────────────────────-───────────────────────╯

Local $InstallPath = String(@ScriptDir)
$iPath = _PathSplit(StringLeft($InstallPath, StringInStr($InstallPath, '\', 0, -1) - 1), "", "", "", "")

; - Path to GameData
Global $iGameData = String($iPath[1] & $iPath[2]) & "GameData\"

; - Path to Cornucopia
Global $CornucopiaFolder = "`Cornucopia β"
Global $CornucopiaPath = $iGameData & $CornucopiaFolder


; - Set to correct working directory
If @WorkingDir <> $CornucopiaPath Then FileChangeDir($CornucopiaPath)


; - Image Folders
Global $GUI_Icon = @ScriptDir & "\Files\Assets\Icon.ico"
Global $AssetsFolder = @ScriptDir & "\Files\Assets\"

;╭──────────────────────-───────────────────────╮
;                 LARGE UI CHECK
;╰──────────────────────-───────────────────────╯

$iLargeUI = IniRead(@ScriptDir & "\Settings.ini", "Window", "LargeIcons", "Disabled")

; Choose assets folder based on current desktop size
If @DesktopWidth <= 1920 Then

	Global $_UI_High_Dpi = "Disabled"
	Global $Theme_ImgSize = "Small\"
	Global $Assets = $AssetsFolder & $Theme_ImgSize
	IniWrite("Settings.ini", "Window", "LargeIcons", "Disabled")

Else

	If $iLargeUI = "Enabled" Then

		Global $_UI_High_Dpi = "Enabled"
		Global $Theme_ImgSize = "Large\"
		Global $Assets = $AssetsFolder & $Theme_ImgSize

	Else

		Global $_UI_High_Dpi = "Disabled"
		Global $Theme_ImgSize = "Small\"
		Global $Assets = $AssetsFolder & $Theme_ImgSize

	EndIf

EndIf

; Needs assets folder to be set beforehand
Global $InfoIconsPath = $Assets & "Images\Icons\"
Global $BannerImgPath = $Assets & "Images\Banners\"
Global $CategoryImagesPath = $Assets & "Images\Categories\"

; Button Folders
Global $TreeCtrlButtonsPath = $Assets & "Buttons\TreeControls\"
Global $MainButtonsPath = $Assets & "Buttons\Main\"
Global $CategoryButtonsPath = $Assets & "Buttons\Categories\"

; Path to main index folder
Global $_Index_Path = @ScriptDir & "\Files\Index\"

;╭──────────────────────-───────────────────────╮
;             SET GLOBAL VARIABLES
;╰──────────────────────-───────────────────────╯

;(Information displayed on right half of main UI)

Global $Display_Amount1
Global $Display_Amount2
Global $Display_Amount3
Global $Display_Amount4
Global $Display_BreakingForce
Global $Display_BreakingForceIMG
Global $Display_Buoy
Global $Display_BuoyIMG
Global $Display_Capacity1
Global $Display_Capacity2
Global $Display_Capacity3
Global $Display_Capacity4
Global $Display_Category
Global $Display_CategoryIMG
Global $Display_CrewCapacity
Global $Display_CrewCapacityIMG
Global $Display_Drag
Global $Display_DragIMG
Global $Display_Funds
Global $Display_FundsIMG
Global $Display_Mass
Global $Display_MassIMG
Global $Display_Resource1
Global $Display_Resource1IMG
Global $Display_Resource2
Global $Display_Resource2IMG
Global $Display_Resource3
Global $Display_Resource3IMG
Global $Display_Resource4
Global $Display_Resource4IMG
Global $Display_Temp
Global $Display_TempIMG
Global $Display_Tol
Global $Display_TolIMG
Global $Display_VesselType
Global $Display_VesselTypeIMG
Global $iAmount1
Global $iAmount2
Global $iAmount3
Global $iAmount4
Global $iCurrentCFGFullPath
Global $iMaxAmount1
Global $iMaxAmount2
Global $iMaxAmount3
Global $iMaxAmount4
Global $InfoShown
Global $iResource1
Global $iResource2
Global $iResource3
Global $iResource4
Global $iSelectedFolder
Global $LoadingGraphic
Global $ModNameCheck
Global $SettingsMode
Global $verCheck

; ----------------------- Settings buttons (Revelead on settings button click)
Global $_Grp_Database
Global $Btn_RebuilDB
Global $Btn_EditSetttings
Global $_Grp_WinSettings
Global $Btn_OnTop
Global $Btn_WinPositon
Global $Btn_LargeUI
Global $Btn_CenterWin
Global $Btn_MakeShortCut
Global $BannerIMG
Global $_Grp_Support
Global $IMG_Support
Global $Btn_Donate
Global $CurrentPos
Global $Axis


; RESOURCES ARRAY
; Load to ram for repeated use
Global $_Array_Resource_List
_FileReadToArray(@ScriptDir & "\Files\Resources.lst", $_Array_Resource_List, 0)


;╭──────────────────────-───────────────────────╮
;                    UI THEME
;╰──────────────────────-───────────────────────╯


Global $Theme_BG_Color = 0xffffff
;Global $Theme_BG_Color = 0x000000
Global $Theme_Defualt_Font_Color = 0x0080c0
Global $Theme_Default_File_Color = 0x008000
Global $Theme_Default_Font = "Consolas"

;╭──────────────────────-───────────────────────╮
;                     LOAD UI
;╰──────────────────────-───────────────────────╯

_UI_() ;----------------------------------------------------------------------------------------- Go!

Func _UI_()
	_GDIPlus_Startup()


	; ------------------ Load settings from settings.ini

	_Read_UI_Settings()

	; ------------------ Draw the main window, at previous or default position

	If $winX = "Unset" Then

		$GuiWidth = 755 * $Dpi
		$GuiHeight = 783 * $Dpi

		$hMain = GUICreate("Cornucopia β", $GuiWidth, $GuiHeight, "", "", $WS_SYSMENU)
		$size = WinGetClientSize($hMain, "")
		Local $y = (@DesktopHeight / 2) - ($size[1] / 2)
		Local $x = (@DesktopWidth / 2) - ($size[0] / 2)
		WinMove($hMain, "", $x, $y)

	Else

		$GuiWidth = 755 * $Dpi
		$GuiHeight = 783 * $Dpi

		$hMain = GUICreate("Cornucopia β", $GuiWidth, $GuiHeight, $winX, $winY, $WS_SYSMENU)

	EndIf


	GUISetBkColor($Theme_BG_Color) ; Main window color
	GUISetIcon($GUI_Icon, "", $hMain) ; Window icon
	GUISetOnEvent($GUI_EVENT_CLOSE, "_SubFolder_Selected", $hMain) ; Close event

	; ------------------ Create startup tree view

	;-
	Global $hTree = GUICtrlCreateTreeView(25 * $Dpi, 40 * $Dpi, 400 * $Dpi, 650 * $Dpi, _
			BitOR($TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, _
			$TVS_SHOWSELALWAYS, $TVS_FULLROWSELECT), $WS_EX_CLIENTEDGE)
	;-
	GUICtrlSetBkColor($hTree, $Theme_BG_Color)
	GUICtrlSetState($hTree, $GUI_HIDE)


	; ------------------ MOD Name Displayed (Top right)
	Global $Display_ModName = GUICtrlCreateLabel(" ", 480 * $Dpi, 35 * $Dpi, 260 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetCursor($Display_ModName, 0)
	GUICtrlSetColor($Display_ModName, 0x0080c0)
	GUICtrlSetFont($Display_ModName, 10, 600, "", $Theme_Default_Font)
	GUICtrlSetOnEvent($Display_ModName, "_Btns_Main")
	GUICtrlSetState($Display_ModName, $GUI_HIDE)

	; ------------------ Part Name Displayed  (Top right)
	Global $Display_PartName = GUICtrlCreateLabel(" ", 480 * $Dpi, 100 * $Dpi, 260 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetCursor($Display_PartName, 4)
	GUICtrlSetColor($Display_PartName, 0xff8000)
	GUICtrlSetFont($Display_PartName, 10, 300, "", $Theme_Default_Font)
	GUICtrlSetState($Display_PartName, $GUI_HIDE)

	; ------------------ Category preview dummy control
	Global $idPreviewPic = GUICtrlCreatePic("", 542 * $Dpi, 50 * $Dpi, 256, 256)

	; ------------------ Dividers
	Global $DivTop = GUICtrlCreateGraphic(0, 0, 755 * $Dpi, 1 * $Dpi, $SS_SUNKEN)

	Global $Div0 = GUICtrlCreateGraphic(455 * $Dpi, 0, 1 * $Dpi, 729 * $Dpi, $SS_SUNKEN) ;-------- Verticle Seperator Long
	GUICtrlSetState($Div0, $GUI_HIDE)

	Global $Div1 = GUICtrlCreateGraphic(456 * $Dpi, 180 * $Dpi, 300 * $Dpi, 1 * $Dpi, $SS_SUNKEN) ; Horizontal upper (Above info)
	Global $Div2
	Global $Div3
	Global $Div4 = GUICtrlCreateGraphic(456 * $Dpi, 520 * $Dpi, 300 * $Dpi, 1 * $Dpi, $SS_SUNKEN) ; Horizontal lower (Above description)

	Global $Display_DescriptionIMG

	; ------------------ Description (Upper right side)

	Global $iDescription = GUICtrlCreateEdit("", 460 * $Dpi, 174 * $Dpi, 292 * $Dpi, 165 * $Dpi, _
			BitOR($ES_CENTER, $ES_AUTOVSCROLL, $ES_AUTOHSCROLL, $ES_WANTRETURN), 0)

	GUICtrlSetBkColor($iDescription, $Theme_BG_Color)
	GUICtrlSetFont($iDescription, 8.5, 200, "", $Theme_Default_Font)
	GUICtrlSetCursor($iDescription, 2)
	GUICtrlSetColor($iDescription, 0x0080c0)
	GUICtrlSetState($iDescription, $GUI_HIDE)

	; ------------------ UI Load start

	If $_UI_High_Dpi = "Enabled" Then


		_Draw_MainButtons_HighDpi()
		_Draw_TreeView_Btns_HighDpi()
		_Draw_CategoryBtns_HighDpi()
		_Draw_StatusBar()


	Else

		_Draw_MainButtons()
		_Draw_CategoryBtns()
		_Draw_StatusBar()
		_Draw_TreeView_Btns()

	EndIf

	; ------------------ Loading, and background images

	If $_UI_High_Dpi = "Enabled" Then

		Global $_BG_Loading_Pic = GUICtrlCreatePic("", 455 * $Dpi, 1 * $Dpi, 600, 1455)
		_LoadPNG($BannerImgPath & "VABView.png", $_BG_Loading_Pic) ; Loading image

		Global $_BG_Pic = GUICtrlCreatePic("", 456 * $Dpi, 341 * $Dpi, 600, 774)
		_LoadPNG($BannerImgPath & "BackGround.png", $_BG_Pic) ; Info view background
		GUICtrlSetState($_BG_Pic, $GUI_HIDE + $GUI_DISABLE)

	Else

		Global $_BG_Loading_Pic = GUICtrlCreatePic("", 456 * $Dpi, 0 * $Dpi, 300, 728)
		_LoadPNG($BannerImgPath & "VABView.png", $_BG_Loading_Pic)

		Global $_BG_Pic = GUICtrlCreatePic("", 456 * $Dpi, 341 * $Dpi, 300, 387)
		_LoadPNG($BannerImgPath & "BackGround.png", $_BG_Pic)
		GUICtrlSetState($_BG_Pic, $GUI_HIDE + $GUI_DISABLE)

	EndIf


	If $_UI_High_Dpi = "Enabled" Then

		_Draw_InfoIcons_HighDpi()
		;_Hide_InfoIcons()


	Else

		_Draw_InfoIcons()
		;_Hide_InfoIcons()

	EndIf

	;_Hide_InfoIcons()
	GUICtrlSetState($Btn_Settings, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Btn_Help, $GUI_HIDE + $GUI_DISABLE)
	_Hide_MainBtns()
	_Hide_TreeCtrlBtns()
	_Hide_CategoryBtns()
	_Hide_Dividers()

	GUISetState()
	_UI_PreLaunch_Checks()
	GUICtrlSetState($Div0, $GUI_SHOW)

	_Show_MainBtns()
	_Show_TreeCtrlBtns()

	ControlSetText($hMain, "", $iStatusText, "Loading Tree view ...")

	_Btn_FullNamesTree()

	ControlSetText($hMain, "", $iStatus, "Ready")

	ControlSetText($hMain, "", $iStatusText, "...")

	; ------------------ UI Load end

	; ------------------ Register enter key to begin search from input when main window is active,
	; ------------------ same as clicking search button

	Local $HotkeySearch = [["{ENTER}", $Btn_Search]]
	GUISetAccelerators($HotkeySearch)


	GUIRegisterMsg($WM_NOTIFY, "WM_Notify_Events")

	; ------------------ Wait for user input

	While 1

		Sleep(160)
	WEnd

EndFunc   ;==>_UI_

Func _Read_UI_Settings()

	; ------------------ Read save window position status from settings.ini

	$iState = IniRead(@ScriptDir & "\Settings.ini", "Window", "SavePosition", "Enabled")

	If $iState = "Enabled" Then

		Global $winX = IniRead(@ScriptDir & "\Settings.ini", "Window", "X", "Unset") ; If enabled reposition window
		Global $winY = IniRead(@ScriptDir & "\Settings.ini", "Window", "Y", "Unset")

	Else

		Global $winX = "Unset" ; If disabled set global disbaled
		Global $winY = "Unset"

	EndIf


	;$iState = IniRead(@ScriptDir & "\Settings.ini", "Window", "LargeIcons", "Disabled") ; Get large icon mode status

	$iState = IniRead(@ScriptDir & "\Settings.ini", "Window", "StayOnTop", "Disabled") ; Get stay on top status
	Global $hMain
	If $iState = "Enabled" Then
		WinSetOnTop($hMain, "", 1) ; If enabled set to win on top mode
	Else
		WinSetOnTop($hMain, "", 0)
	EndIf

EndFunc   ;==>_Read_UI_Settings

Func _UI_PreLaunch_Checks()

	; ------------------ Check that the index subfolder exists

	If FileExists(@ScriptDir & "\Files\Index") Then
	Else

		; If it doesnt then remake the default paths
		DirCreate($_Index_Path)
		DirCreate($_Index_Path & "Trees")
		DirCreate($_Index_Path & "Trees\NamedPaths")
		DirCreate($_Index_Path & "Trees\OriginalPaths")

		; Intitiate database rebuild
		_Draw_DB_Build_UI()
		_DB_Build()

	EndIf

	; ------------------ Check that the trees subfolder exists

	If FileExists($_Index_Path & "Trees") Then
	Else

		; If it doesnt then remake the default paths
		DirCreate($_Index_Path)
		DirCreate($_Index_Path & "Trees")
		DirCreate($_Index_Path & "Trees\NamedPaths")
		DirCreate($_Index_Path & "Trees\OriginalPaths")

		; Intitiate database rebuild
		_Draw_DB_Build_UI()
		_DB_Build()

	EndIf

	; ------------------ Check if the index file exists

	If FileExists($_Index_Path & "_Index_.ini") Then
	Else

		; Intitiate database rebuild
		_Draw_DB_Build_UI()
		_DB_Build()
	EndIf
	_DB_Index_PartCount()

	; ------------------ Check if the main tree file exists

	If FileExists($_Index_Path & "Trees\PartFolders.tre") Then
	Else

		; Intitiate database rebuild
		_Draw_DB_Build_UI()
		_DB_Build()

	EndIf


	; ------------------ Load list of part cfg full paths to an array
	Global $PartCFGList
	$iCFG = IniReadSection($_Index_Path & "_Index_.ini", "Paths_Index")
	_ArrayColDelete($iCFG, 0)
	_ArrayDelete($iCFG, 0)
	_FileWriteFromArray(@TempDir & "_cfglist_", $iCFG)
	_FileReadToArray(@TempDir & "_cfglist_", $PartCFGList, 0)
	FileDelete(@TempDir & "_cfglist_")

EndFunc   ;==>_UI_PreLaunch_Checks


;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                         DRAW UI ELEMENTS
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯


Func _Draw_MainButtons()

	; ------------------ Draw Full file and folder names tree view button


	Global $UbHLevel = 5 * $Dpi
	Global $Btn_FullNames_View = GUICtrlCreatePic("", 30 * $Dpi, $UbHLevel, 24, 24)
	GUICtrlSetOnEvent($Btn_FullNames_View, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "TreeA.png", $Btn_FullNames_View)
	_GUICtrl_OnHoverRegister($Btn_FullNames_View, "FullNames_Hover", "FullNames_Leave_Hover")
	GUICtrlSetTip($Btn_FullNames_View, "Full names", "Tree view")

	; ------------------ Draw Full names tree view button

	Global $Btn_FileAndFolder_View = GUICtrlCreatePic("", 65 * $Dpi, $UbHLevel, 24, 24)
	GUICtrlSetOnEvent($Btn_FileAndFolder_View, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "FolderTreeA.png", $Btn_FileAndFolder_View)
	_GUICtrl_OnHoverRegister($Btn_FileAndFolder_View, "Folder_Hover", "Folder_Leave_Hover")
	GUICtrlSetTip($Btn_FileAndFolder_View, "File/folder names", "Tree view (Path)")

	; ------------------ Draw mod filter dropdown list box

	Global $hCombo = GUICtrlCreateCombo("", 105 * $Dpi, $UbHLevel + 6, 250 * $Dpi, 20 * $Dpi)
	GUICtrlSetOnEvent($hCombo, "_Btns_Main")
	GUICtrlSetBkColor($hCombo, $Theme_BG_Color)
	GUICtrlSetState($hCombo, $GUI_HIDE)
	GUICtrlSetTip($hCombo, "Filter to a single mod" & @LF & "(Auto expands)", "Mod filters")

	; ------------------ Draw open folder button

	Global $Btn_OpenFolder = GUICtrlCreatePic("", 369 * $Dpi, $UbHLevel, 24, 24)
	GUICtrlSetOnEvent($Btn_OpenFolder, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "FolderA.png", $Btn_OpenFolder)
	_GUICtrl_OnHoverRegister($Btn_OpenFolder, "OpenFolder_Hover", "OpenFolder_Leave_Hover")
	GUICtrlSetState($Btn_OpenFolder, $GUI_HIDE)
	GUICtrlSetTip($Btn_OpenFolder, "Open the currently selected folder in explorer", "Open folder")

	; ------------------ Draw edit current config button

	Global $Btn_EditCFG = GUICtrlCreatePic("", 400 * $Dpi, $UbHLevel, 24, 24)
	GUICtrlSetOnEvent($Btn_EditCFG, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "EditA.png", $Btn_EditCFG)
	_GUICtrl_OnHoverRegister($Btn_EditCFG, "EditCFG_Hover", "EditCFG_Leave_Hover")
	GUICtrlSetState($Btn_EditCFG, $GUI_HIDE)
	GUICtrlSetTip($Btn_EditCFG, "Open the parts cfg file in the default editor", "Edit config")

	; ------------------ Draw search input box

	Global $SearchInput = GUICtrlCreateInput("", 105 * $Dpi, 700 * $Dpi, 250 * $Dpi, 20 * $Dpi, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
	GUICtrlSetBkColor($SearchInput, $Theme_BG_Color)
	_GUICtrl_OnHoverRegister($Btn_EditCFG, "EditCFG_Hover", "EditCFG_Leave_Hover")
	GUICtrlSetTip($SearchInput, "Filter the current tree or list view", "Search filter")

	; ------------------ Draw search tree/view button

	Global $Btn_Search = GUICtrlCreatePic("", 369 * $Dpi, 700 * $Dpi, 24, 24)
	GUICtrlSetOnEvent($Btn_Search, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "Search.png", $Btn_Search)
	_GUICtrl_OnHoverRegister($Btn_Search, "Search_Hover", "Search_Leave_Hover")
	GUICtrlSetTip($Btn_Search, "Search the current tree or list view" & @LF & "Type and click, or press Enter", "Search")

	; ------------------ Draw paste and search button

	Global $Btn_Paste = GUICtrlCreatePic("", 400 * $Dpi, 700 * $Dpi, 24, 24)
	GUICtrlSetOnEvent($Btn_Paste, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "Paste.png", $Btn_Paste)
	_GUICtrl_OnHoverRegister($Btn_Paste, "Paste_Hover", "Paste_Leave_Hover")
	GUICtrlSetTip($Btn_Paste, "One click paste and search", "Search")

	; ------------------ Draw search spacedock button

	Global $Btn_SearchSpaceDock = GUICtrlCreatePic("", 65 * $Dpi, 700 * $Dpi, 24, 24)
	GUICtrlSetOnEvent($Btn_SearchSpaceDock, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "WebSearch.png", $Btn_SearchSpaceDock)
	_GUICtrl_OnHoverRegister($Btn_SearchSpaceDock, "WebSearch_Hover", "WebSearch_Leave_Hover")
	GUICtrlSetTip($Btn_SearchSpaceDock, "Search for something on spacedock", "Search SpaceDock")

	; ------------------ Draw search KSP addon forum button

	Global $Btn_WebSearch = GUICtrlCreatePic("", 30 * $Dpi, 700 * $Dpi, 24, 24)
	GUICtrlSetOnEvent($Btn_WebSearch, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "Google.png", $Btn_WebSearch)
	_GUICtrl_OnHoverRegister($Btn_WebSearch, "WebSearch2_Hover", "WebSearch2_Leave_Hover")
	GUICtrlSetTip($Btn_WebSearch, "Search for something on the KSP forum", "Search KSP Addons Forum")

	; ------------------ Draw mod search dummy title/button

	Global $Btn_ModSearch = GUICtrlCreateDummy()
	GUICtrlSetOnEvent($Btn_ModSearch, "_Btns_Main")

	; ------------------ Draw mod direct download option button/icon

	Global $Btn_ModDownload = GUICtrlCreatePic("", 595 * $Dpi, 5 * $Dpi, 24, 24)
	GUICtrlSetOnEvent($Btn_ModDownload, "_Btns_Main")
	GUICtrlSetCursor($Btn_ModDownload, 0)
	_LoadPNG($MainButtonsPath & "Download.png", $Btn_ModDownload)
	_GUICtrl_OnHoverRegister($Btn_ModDownload, "ModDownload_Hover", "ModDownload_Leave_Hover")

	; ------------------ Draw setting button

	Global $Btn_Settings = GUICtrlCreatePic("", 725 * $Dpi, 730 * $Dpi, 24, 24)
	GUICtrlSetOnEvent($Btn_Settings, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "Settings.png", $Btn_Settings)
	_GUICtrl_OnHoverRegister($Btn_Settings, "Settings_Hover", "Settings_Leave_Hover")

	; ------------------ Draw help button

	Global $Btn_Help = GUICtrlCreatePic("", 700 * $Dpi, 730 * $Dpi, 24, 24)
	GUICtrlSetOnEvent($Btn_Help, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "Help.png", $Btn_Help)
	_GUICtrl_OnHoverRegister($Btn_Help, "Help_Hover", "Help_Leave_Hover")

EndFunc   ;==>_Draw_MainButtons

Func _Draw_MainButtons_HighDpi()

	Global $UbHLevel = 5 * $Dpi
	Global $Btn_FullNames_View = GUICtrlCreatePic("", 30 * $Dpi, $UbHLevel, 48, 48)
	GUICtrlSetOnEvent($Btn_FullNames_View, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "TreeA.png", $Btn_FullNames_View)
	_GUICtrl_OnHoverRegister($Btn_FullNames_View, "FullNames_Hover", "FullNames_Leave_Hover")
	GUICtrlSetTip($Btn_FullNames_View, "Full names", "Tree view")

	Global $Btn_FileAndFolder_View = GUICtrlCreatePic("", 65 * $Dpi, $UbHLevel, 48, 48)
	GUICtrlSetOnEvent($Btn_FileAndFolder_View, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "FolderTreeA.png", $Btn_FileAndFolder_View)
	_GUICtrl_OnHoverRegister($Btn_FileAndFolder_View, "Folder_Hover", "Folder_Leave_Hover")
	GUICtrlSetTip($Btn_FileAndFolder_View, "File/folder names", "Tree view (Path)")

	Global $hCombo = GUICtrlCreateCombo("", 105 * $Dpi, $UbHLevel + 6, 250 * $Dpi, 20 * $Dpi)
	GUICtrlSetOnEvent($hCombo, "_Btns_Main")
	GUICtrlSetBkColor($hCombo, $Theme_BG_Color)
	GUICtrlSetState($hCombo, $GUI_HIDE)
	GUICtrlSetTip($hCombo, "Filter to a single mod" & @LF & "(Auto expands)", "Mod filters")

	Global $Btn_OpenFolder = GUICtrlCreatePic("", 369 * $Dpi, $UbHLevel, 48, 48)
	GUICtrlSetOnEvent($Btn_OpenFolder, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "FolderA.png", $Btn_OpenFolder)
	_GUICtrl_OnHoverRegister($Btn_OpenFolder, "OpenFolder_Hover", "OpenFolder_Leave_Hover")
	GUICtrlSetState($Btn_OpenFolder, $GUI_HIDE)
	GUICtrlSetTip($Btn_OpenFolder, "Open the currently selected folder in explorer", "Open folder")

	Global $Btn_EditCFG = GUICtrlCreatePic("", 400 * $Dpi, $UbHLevel, 48, 48)
	GUICtrlSetOnEvent($Btn_EditCFG, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "EditA.png", $Btn_EditCFG)
	_GUICtrl_OnHoverRegister($Btn_EditCFG, "EditCFG_Hover", "EditCFG_Leave_Hover")
	GUICtrlSetState($Btn_EditCFG, $GUI_HIDE)
	GUICtrlSetTip($Btn_EditCFG, "Open the parts cfg file in the default editor", "Edit config")

	Global $SearchInput = GUICtrlCreateInput("", 105 * $Dpi, 700 * $Dpi, 250 * $Dpi, 20 * $Dpi, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
	GUICtrlSetBkColor($SearchInput, $Theme_BG_Color)
	_GUICtrl_OnHoverRegister($Btn_EditCFG, "EditCFG_Hover", "EditCFG_Leave_Hover")
	GUICtrlSetTip($SearchInput, "Filter the current tree or list view", "Search filter")

	Global $Btn_Search = GUICtrlCreatePic("", 369 * $Dpi, 700 * $Dpi, 48, 48)
	GUICtrlSetOnEvent($Btn_Search, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "Search.png", $Btn_Search)
	_GUICtrl_OnHoverRegister($Btn_Search, "Search_Hover", "Search_Leave_Hover")
	GUICtrlSetTip($Btn_Search, "Search the current tree or list view" & @LF & "Type and click, or press Enter", "Search")

	Global $Btn_Paste = GUICtrlCreatePic("", 400 * $Dpi, 700 * $Dpi, 48, 48)
	GUICtrlSetOnEvent($Btn_Paste, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "Paste.png", $Btn_Paste)
	_GUICtrl_OnHoverRegister($Btn_Paste, "Paste_Hover", "Paste_Leave_Hover")
	GUICtrlSetTip($Btn_Paste, "One click paste and search", "Search")

	Global $Btn_SearchSpaceDock = GUICtrlCreatePic("", 65 * $Dpi, 700 * $Dpi, 48, 48)
	GUICtrlSetOnEvent($Btn_SearchSpaceDock, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "WebSearch.png", $Btn_SearchSpaceDock)
	_GUICtrl_OnHoverRegister($Btn_SearchSpaceDock, "WebSearch_Hover", "WebSearch_Leave_Hover")
	GUICtrlSetTip($Btn_SearchSpaceDock, "Search for something on spacedock", "Search SpaceDock")

	Global $Btn_WebSearch = GUICtrlCreatePic("", 30 * $Dpi, 700 * $Dpi, 48, 48)
	GUICtrlSetOnEvent($Btn_WebSearch, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "Google.png", $Btn_WebSearch)
	_GUICtrl_OnHoverRegister($Btn_WebSearch, "WebSearch2_Hover", "WebSearch2_Leave_Hover")
	GUICtrlSetTip($Btn_WebSearch, "Search for something on the KSP forum", "Search KSP Addons Forum")

	Global $Btn_ModSearch = GUICtrlCreateDummy()
	GUICtrlSetOnEvent($Btn_ModSearch, "_Btns_Main")

	Global $Btn_ModDownload = GUICtrlCreatePic("", 595 * $Dpi, 5 * $Dpi, 48, 48)
	GUICtrlSetOnEvent($Btn_ModDownload, "_Btns_Main")
	GUICtrlSetCursor($Btn_ModDownload, 0)
	_LoadPNG($MainButtonsPath & "Download.png", $Btn_ModDownload)
	_GUICtrl_OnHoverRegister($Btn_ModDownload, "ModDownload_Hover", "ModDownload_Leave_Hover")

	Global $Btn_Settings = GUICtrlCreatePic("", 725 * $Dpi, 730 * $Dpi, 48, 48)
	GUICtrlSetOnEvent($Btn_Settings, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "Settings.png", $Btn_Settings)
	_GUICtrl_OnHoverRegister($Btn_Settings, "Settings_Hover", "Settings_Leave_Hover")

	Global $Btn_Help = GUICtrlCreatePic("", 700 * $Dpi, 730 * $Dpi, 48, 48)
	GUICtrlSetOnEvent($Btn_Help, "_Btns_Main")
	_LoadPNG($MainButtonsPath & "Help.png", $Btn_Help)
	_GUICtrl_OnHoverRegister($Btn_Help, "Help_Hover", "Help_Leave_Hover")

EndFunc   ;==>_Draw_MainButtons_HighDpi

Func _Draw_InfoIcons()

	;---------------- Icon positions

	Local $IconSize = 35
	Local $OffsetPX = -15
	Local $IconNum = 1
	Local $LabelLeft = 495 * $Dpi
	Local $vOffSet = 340 * $Dpi
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	$Offset = $Offset - 20
	Local $CAT_IconSize = 20
	Local $IconLeft = 465 * $Dpi
	Local $LabelLeft = 495 * $Dpi

	; ------------------ Draw cetegory label
	Global $Display_Category = GUICtrlCreateLabel(" ", $LabelLeft, 345 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Category, 0xff8000)
	GUICtrlSetFont($Display_Category, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Category, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Category, $GUI_HIDE)

	; ------------------ Draw category icon
	Global $Display_CategoryIMG = GUICtrlCreatePic("", $IconLeft, 345 * $Dpi - 3, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "Category.png", $Display_CategoryIMG)
	$IconNum += 1
	GUICtrlSetTip(-1, "Part category")
	_GUICtrl_OnHoverRegister($Display_CategoryIMG, "Category_Hover", "Category_Leave_Hover")
	GUICtrlSetOnEvent($Display_CategoryIMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_CategoryIMG, $GUI_HIDE)

	; ------------------ Draw vessel type label
	Global $Display_VesselType = GUICtrlCreateLabel(" ", $LabelLeft, 380 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_VesselType, 0xff8000)
	GUICtrlSetFont($Display_VesselType, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_VesselType, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_VesselType, $GUI_HIDE)

	; ------------------ Draw vessel type icon
	Global $Display_VesselTypeIMG = GUICtrlCreatePic("", $IconLeft, 380 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "VesselType.png", $Display_VesselTypeIMG)
	$IconNum += 1
	GUICtrlSetTip(-1, "Vessel type")
	_GUICtrl_OnHoverRegister($Display_VesselTypeIMG, "VesselType_Hover", "VesselType_Leave_Hover")
	GUICtrlSetOnEvent($Display_VesselTypeIMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_VesselTypeIMG, $GUI_HIDE)

	; ------------------ Draw mass label
	Global $Display_Mass = GUICtrlCreateLabel(" ", $LabelLeft, 420 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Mass, 0xff8000)
	GUICtrlSetFont($Display_Mass, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Mass, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Mass, $GUI_HIDE)

	; ------------------ Draw mass icon
	Global $Display_MassIMG = GUICtrlCreatePic("", $IconLeft, 420 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "mass.png", $Display_MassIMG)
	$IconNum += 1
	GUICtrlSetTip(-1, "Part mass")
	_GUICtrl_OnHoverRegister($Display_MassIMG, "Mass_Hover", "Mass_Leave_Hover")
	GUICtrlSetOnEvent($Display_MassIMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_MassIMG, $GUI_HIDE)

	; ------------------ Draw cost label
	Global $Display_Funds = GUICtrlCreateLabel(" ", $LabelLeft, 465 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Funds, 0xff8000)
	GUICtrlSetFont($Display_Funds, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Funds, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Funds, $GUI_HIDE)

	; ------------------ Draw cost icon
	Global $Display_FundsIMG = GUICtrlCreatePic("", $IconLeft, 465 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "Funds.png", $Display_FundsIMG)
	$IconNum += 1
	GUICtrlSetTip(-1, "Cost (Entry Cost)")
	_GUICtrl_OnHoverRegister($Display_FundsIMG, "Funds_Hover", "Funds_Leave_Hover")
	GUICtrlSetOnEvent($Display_FundsIMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_FundsIMG, $GUI_HIDE)

	; ------------------ Draw crew cpacity label
	Global $Display_CrewCapacity = GUICtrlCreateLabel(" ", $LabelLeft, 500 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_CrewCapacity, 0xff8000)
	GUICtrlSetFont($Display_CrewCapacity, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_CrewCapacity, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_CrewCapacity, $GUI_HIDE)

	; ------------------ Draw crew cpacity icon
	Global $Display_CrewCapacityIMG = GUICtrlCreatePic("", $IconLeft, 500 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "CrewCapacity.png", $Display_CrewCapacityIMG)
	$IconNum += 1
	GUICtrlSetTip(-1, "Crew Capacity")
	_GUICtrl_OnHoverRegister($Display_CrewCapacityIMG, "CrewCapacity_Hover", "CrewCapacity_Leave_Hover")
	GUICtrlSetOnEvent($Display_CrewCapacityIMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_CrewCapacityIMG, $GUI_HIDE)

	Local $IconLeft = 616 * $Dpi
	Local $LabelLeft = 646 * $Dpi

	; ------------------ Draw max temp label
	Global $Display_Temp = GUICtrlCreateLabel(" ", $LabelLeft, 345 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Temp, 0xff8000)
	GUICtrlSetFont($Display_Temp, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Temp, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Temp, $GUI_HIDE)

	; ------------------ Draw max temp icon
	Global $Display_TempIMG = GUICtrlCreatePic("", $IconLeft, 345 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "maxTemp.png", $Display_TempIMG)
	GUICtrlSetTip(-1, "Max Temperature")
	_GUICtrl_OnHoverRegister($Display_TempIMG, "maxTemp_Hover", "maxTemp_Leave_Hover")
	GUICtrlSetOnEvent($Display_TempIMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_TempIMG, $GUI_HIDE)

	; ------------------ Draw crash tolerence label
	Global $Display_Tol = GUICtrlCreateLabel(" ", $LabelLeft, 380 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Tol, 0xff8000)
	GUICtrlSetFont($Display_Tol, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Tol, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Tol, $GUI_HIDE)

	; ------------------ Draw crash tolerence icon
	Global $Display_TolIMG = GUICtrlCreatePic("", $IconLeft, 380 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "crashTolerence.png", $Display_TolIMG)
	GUICtrlSetTip(-1, "Crash tolerence")
	_GUICtrl_OnHoverRegister($Display_TolIMG, "crashTolerence_Hover", "crashTolerence_Leave_Hover")
	GUICtrlSetOnEvent($Display_TolIMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_TolIMG, $GUI_HIDE)

	; ------------------ Draw breaking force label
	Global $Display_BreakingForce = GUICtrlCreateLabel(" ", $LabelLeft, 420 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_BreakingForce, 0xff8000)
	GUICtrlSetFont($Display_BreakingForce, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_BreakingForce, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_BreakingForce, $GUI_HIDE)

	; ------------------ Draw breaking force icon
	Global $Display_BreakingForceIMG = GUICtrlCreatePic("", $IconLeft, 420 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "BreakingForce.png", $Display_BreakingForceIMG)
	GUICtrlSetTip(-1, "Breaking force")
	_GUICtrl_OnHoverRegister($Display_BreakingForceIMG, "BreakingForce_Hover", "BreakingForce_Leave_Hover")
	GUICtrlSetOnEvent($Display_BreakingForceIMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_BreakingForceIMG, $GUI_HIDE)

	; ------------------ Draw buoyancy label
	Global $Display_Buoy = GUICtrlCreateLabel(" ", $LabelLeft, 465 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Buoy, 0xff8000)
	GUICtrlSetFont($Display_Buoy, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Buoy, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Buoy, $GUI_HIDE)

	; ------------------ Draw buoyancy icon
	Global $Display_BuoyIMG = GUICtrlCreatePic("", $IconLeft, 465 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "Buoyancy.png", $Display_BuoyIMG)
	GUICtrlSetTip(-1, "Buoyancy")
	_GUICtrl_OnHoverRegister($Display_BuoyIMG, "Buoyancy_Hover", "Buoyancy_Leave_Hover")
	GUICtrlSetOnEvent($Display_BuoyIMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_BuoyIMG, $GUI_HIDE)

	; ------------------ Draw drag label
	Global $Display_Drag = GUICtrlCreateLabel(" ", $LabelLeft, 500 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Drag, 0xff8000)
	GUICtrlSetFont($Display_Drag, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Drag, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Drag, $GUI_HIDE)

	; ------------------ Draw drag icon
	Global $Display_DragIMG = GUICtrlCreatePic("", $IconLeft, 500 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "Drag.png", $Display_DragIMG)
	GUICtrlSetTip(-1, "Drag (Minimum Drag)")
	_GUICtrl_OnHoverRegister($Display_DragIMG, "Drag_Hover", "Drag_Leave_Hover")
	GUICtrlSetOnEvent($Display_DragIMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_DragIMG, $GUI_HIDE)

	Local $IconLeft = 465 * $Dpi
	Local $LabelLeft = 495 * $Dpi

	; ------------------ Draw resource 1 label
	Global $Display_Resource1 = GUICtrlCreateLabel(" ", $LabelLeft, 540 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Resource1, 0xff8000)
	GUICtrlSetFont($Display_Resource1, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Resource1, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Resource1, $GUI_HIDE)

	; ------------------ Draw resource 1 amount label
	Global $Display_Amount1 = GUICtrlCreateLabel(" ", $LabelLeft, 540 * $Dpi + 20, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Amount1, 0xff8000)
	GUICtrlSetFont($Display_Amount1, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Amount1, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Amount1, $GUI_HIDE)

	; ------------------ Draw resource 1 capacity label
	Global $Display_Capacity1 = GUICtrlCreateLabel(" ", $LabelLeft, 540 * $Dpi + 40, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Capacity1, 0xff8000)
	GUICtrlSetFont($Display_Capacity1, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Capacity1, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Capacity1, $GUI_HIDE)

	; ------------------ Draw resource 1 icon
	Global $Display_Resource1IMG = GUICtrlCreatePic("", $IconLeft, 540 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "Resource.png", $Display_Resource1IMG)
	GUICtrlSetTip($Display_Resource1IMG, "Resource 1")
	_GUICtrl_OnHoverRegister($Display_Resource1IMG, "Resource1_Hover", "Resource1_Leave_Hover")
	GUICtrlSetOnEvent($Display_Resource1IMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_Resource1IMG, $GUI_HIDE)

	; ------------------ Draw resource 2 icon
	Global $Display_Resource2IMG = GUICtrlCreatePic("", $IconLeft, 610 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "Resource.png", $Display_Resource2IMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Resource")
	_GUICtrl_OnHoverRegister($Display_Resource2IMG, "Resource2_Hover", "Resource2_Leave_Hover")
	GUICtrlSetOnEvent($Display_Resource2IMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_Resource2IMG, $GUI_HIDE)

	; ------------------ Draw resource 2 label
	Global $Display_Resource2 = GUICtrlCreateLabel(" ", $LabelLeft, 610 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Resource2, 0xff8000)
	GUICtrlSetFont($Display_Resource2, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Resource2, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Resource2, $GUI_HIDE)

	; ------------------ Draw resource 2 amount label
	Global $Display_Amount2 = GUICtrlCreateLabel(" ", $LabelLeft, 610 * $Dpi + 20, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Amount2, 0xff8000)
	GUICtrlSetFont($Display_Amount2, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Amount2, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Amount2, $GUI_HIDE)

	; ------------------ Draw resource 2 capacity label
	Global $Display_Capacity2 = GUICtrlCreateLabel(" ", $LabelLeft, 610 * $Dpi + 40, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Capacity2, 0xff8000)
	GUICtrlSetFont($Display_Capacity2, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Capacity2, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Capacity2, $GUI_HIDE)

	Local $IconLeft = 616 * $Dpi
	Local $LabelLeft = 646 * $Dpi

	; ------------------ Draw resource 3 label
	Global $Display_Resource3 = GUICtrlCreateLabel(" ", $LabelLeft, 540 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Resource3, 0xff8000)
	GUICtrlSetFont($Display_Resource3, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Resource3, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Resource3, $GUI_HIDE)

	; ------------------ Draw resource 3 amount label
	Global $Display_Amount3 = GUICtrlCreateLabel(" ", $LabelLeft, 540 * $Dpi + 20, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Amount3, 0xff8000)
	GUICtrlSetFont($Display_Amount3, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Amount3, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Amount3, $GUI_HIDE)

	; ------------------ Draw resource 3 cpacity label
	Global $Display_Capacity3 = GUICtrlCreateLabel(" ", $LabelLeft, 540 * $Dpi + 40, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Capacity3, 0xff8000)
	GUICtrlSetFont($Display_Capacity3, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Capacity3, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Capacity3, $GUI_HIDE)

	; ------------------ Draw resource 3 icon
	Global $Display_Resource3IMG = GUICtrlCreatePic("", $IconLeft, 540 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "Resource.png", $Display_Resource3IMG)
	GUICtrlSetTip(-1, "Resource")
	_GUICtrl_OnHoverRegister($Display_Resource3IMG, "Resource3_Hover", "Resource3_Leave_Hover")
	GUICtrlSetOnEvent($Display_Resource3IMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_Resource3IMG, $GUI_HIDE)

	; ------------------ Draw resource 4 icon
	Global $Display_Resource4IMG = GUICtrlCreatePic("", $IconLeft, 610 * $Dpi, $CAT_IconSize, $CAT_IconSize)
	_LoadPNG($InfoIconsPath & "Resource.png", $Display_Resource4IMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Resource")
	_GUICtrl_OnHoverRegister($Display_Resource4IMG, "Resource4_Hover", "Resource4_Leave_Hover")
	GUICtrlSetOnEvent($Display_Resource4IMG, "_Btns_FilterCategory")
	GUICtrlSetState($Display_Resource4IMG, $GUI_HIDE)

	; ------------------ Draw resource 4 label
	Global $Display_Resource4 = GUICtrlCreateLabel(" ", $LabelLeft, 610 * $Dpi, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Resource4, 0xff8000)
	GUICtrlSetFont($Display_Resource4, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Resource4, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Resource4, $GUI_HIDE)

	; ------------------ Draw resource 4 amount label
	Global $Display_Amount4 = GUICtrlCreateLabel(" ", $LabelLeft, 610 * $Dpi + 20, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Amount4, 0xff8000)
	GUICtrlSetFont($Display_Amount4, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Amount4, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Amount4, $GUI_HIDE)

	; ------------------ Draw resource 4 capacity label
	Global $Display_Capacity4 = GUICtrlCreateLabel(" ", $LabelLeft, 610 * $Dpi + 40, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Capacity4, 0xff8000)
	GUICtrlSetFont($Display_Capacity4, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Capacity4, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Capacity4, $GUI_HIDE)

EndFunc   ;==>_Draw_InfoIcons

Func _Draw_InfoIcons_HighDpi()

	Local $IconSize = 48
	Local $OffsetPX = -15
	Local $IconNum = 1

	Local $IconLeft = 465 * $Dpi
	Local $LabelLeft = 495 * $Dpi
	Local $vOffSet = 340 + 300
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi


	Global $Display_Category = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 3, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Category, 0xff8000)
	GUICtrlSetFont($Display_Category, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Category, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Category, $GUI_HIDE)

	Global $Display_CategoryIMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "Category.png", $Display_CategoryIMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Part category")
	_GUICtrl_OnHoverRegister($Display_CategoryIMG, "Category_Hover", "Category_Leave_Hover")
	GUICtrlSetOnEvent($Display_CategoryIMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_CategoryIMG, 4)
	GUICtrlSetState($Display_CategoryIMG, $GUI_HIDE)

	Global $Display_VesselType = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_VesselType, 0xff8000)
	GUICtrlSetFont($Display_VesselType, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_VesselType, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_VesselType, $GUI_HIDE)

	Global $Display_VesselTypeIMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "VesselType.png", $Display_VesselTypeIMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Vessel type")
	_GUICtrl_OnHoverRegister($Display_VesselTypeIMG, "VesselType_Hover", "VesselType_Leave_Hover")
	GUICtrlSetOnEvent($Display_VesselTypeIMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_VesselTypeIMG, 4)
	GUICtrlSetState($Display_VesselTypeIMG, $GUI_HIDE)

	Global $Display_Mass = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Mass, 0xff8000)
	GUICtrlSetFont($Display_Mass, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Mass, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Mass, $GUI_HIDE)

	Global $Display_MassIMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "mass.png", $Display_MassIMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Part mass")
	_GUICtrl_OnHoverRegister($Display_MassIMG, "Mass_Hover", "Mass_Leave_Hover")
	GUICtrlSetOnEvent($Display_MassIMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_MassIMG, 4)
	GUICtrlSetState($Display_MassIMG, $GUI_HIDE)

	Global $Display_Funds = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Funds, 0xff8000)
	GUICtrlSetFont($Display_Funds, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Funds, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Funds, $GUI_HIDE)

	Global $Display_FundsIMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "Funds.png", $Display_FundsIMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Cost (Entry Cost)")
	_GUICtrl_OnHoverRegister($Display_FundsIMG, "Funds_Hover", "Funds_Leave_Hover")
	GUICtrlSetOnEvent($Display_FundsIMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_FundsIMG, 4)
	GUICtrlSetState($Display_FundsIMG, $GUI_HIDE)

	Global $Display_CrewCapacity = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_CrewCapacity, 0xff8000)
	GUICtrlSetFont($Display_CrewCapacity, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_CrewCapacity, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_CrewCapacity, $GUI_HIDE)

	Global $Display_CrewCapacityIMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "CrewCapacity.png", $Display_CrewCapacityIMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Crew Capacity")
	_GUICtrl_OnHoverRegister($Display_CrewCapacityIMG, "CrewCapacity_Hover", "CrewCapacity_Leave_Hover")
	GUICtrlSetOnEvent($Display_CrewCapacityIMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_CrewCapacityIMG, 4)
	GUICtrlSetState($Display_CrewCapacityIMG, $GUI_HIDE)

	Local $IconSize = 48
	Local $OffsetPX = -15
	Local $IconNum = 1

	Local $IconLeft = 465 * $Dpi
	Local $LabelLeft = 495 * $Dpi
	Local $vOffSet = 700 + 300
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi

	Global $Display_Resource1 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Resource1, 0xff8000)
	GUICtrlSetFont($Display_Resource1, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Resource1, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Resource1, $GUI_HIDE)

	Global $Display_Amount1 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 40, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Amount1, 0xff8000)
	GUICtrlSetFont($Display_Amount1, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Amount1, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Amount1, $GUI_HIDE)

	Global $Display_Capacity1 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 80, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Capacity1, 0xff8000)
	GUICtrlSetFont($Display_Capacity1, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Capacity1, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Capacity1, $GUI_HIDE)

	Global $Display_Resource1IMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "Resource.png", $Display_Resource1IMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip($Display_Resource1IMG, "Resource")
	_GUICtrl_OnHoverRegister($Display_Resource1IMG, "Resource1_Hover", "Resource1_Leave_Hover")
	GUICtrlSetOnEvent($Display_Resource1IMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_Resource1IMG, 4)
	GUICtrlSetState($Display_Resource1IMG, $GUI_HIDE)

	Global $Display_Resource2IMG = GUICtrlCreatePic("", $IconLeft, $Offset + 70, 35, 35)
	_LoadPNG($InfoIconsPath & "Resource.png", $Display_Resource2IMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Resource")
	_GUICtrl_OnHoverRegister($Display_Resource2IMG, "Resource2_Hover", "Resource2_Leave_Hover")
	GUICtrlSetOnEvent($Display_Resource2IMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_Resource2IMG, 4)
	GUICtrlSetState($Display_Resource2IMG, $GUI_HIDE)

	Global $Display_Resource2 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 3, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Resource2, 0xff8000)
	GUICtrlSetFont($Display_Resource2, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Resource2, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Resource2, $GUI_HIDE)

	Global $Display_Amount2 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 40, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Amount2, 0xff8000)
	GUICtrlSetFont($Display_Amount2, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Amount2, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Amount2, $GUI_HIDE)

	Global $Display_Capacity2 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 80, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Capacity2, 0xff8000)
	GUICtrlSetFont($Display_Capacity2, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Capacity2, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Capacity2, $GUI_HIDE)

	Local $IconSize = 48
	Local $OffsetPX = -15
	Local $IconNum = 1

	Local $IconLeft = 616 * $Dpi
	Local $LabelLeft = 646 * $Dpi
	Local $vOffSet = 700 + 300
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi

	Global $Display_Resource3 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Resource3, 0xff8000)
	GUICtrlSetFont($Display_Resource3, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Resource3, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Resource3, $GUI_HIDE)

	Global $Display_Amount3 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 40, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Amount3, 0xff8000)
	GUICtrlSetFont($Display_Amount3, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Amount3, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Amount3, $GUI_HIDE)

	Global $Display_Capacity3 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 80, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Capacity3, 0xff8000)
	GUICtrlSetFont($Display_Capacity3, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Capacity3, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Capacity3, $GUI_HIDE)

	Global $Display_Resource3IMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "Resource.png", $Display_Resource3IMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Resource")
	_GUICtrl_OnHoverRegister($Display_Resource3IMG, "Resource3_Hover", "Resource3_Leave_Hover")
	GUICtrlSetOnEvent($Display_Resource3IMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_Resource3IMG, 4)
	GUICtrlSetState($Display_Resource3IMG, $GUI_HIDE)

	Global $Display_Resource4IMG = GUICtrlCreatePic("", $IconLeft, $Offset + 70, 35, 35)
	_LoadPNG($InfoIconsPath & "Resource.png", $Display_Resource4IMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Resource")
	_GUICtrl_OnHoverRegister($Display_Resource4IMG, "Resource4_Hover", "Resource4_Leave_Hover")
	GUICtrlSetOnEvent($Display_Resource4IMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_Resource4IMG, 4)
	GUICtrlSetState($Display_Resource4IMG, $GUI_HIDE)

	Global $Display_Resource4 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 3, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Resource4, 0xff8000)
	GUICtrlSetFont($Display_Resource4, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Resource4, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Resource4, $GUI_HIDE)

	Global $Display_Amount4 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 40, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Amount4, 0xff8000)
	GUICtrlSetFont($Display_Amount4, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Amount4, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Amount4, $GUI_HIDE)

	Global $Display_Capacity4 = GUICtrlCreateLabel(" ", $LabelLeft, $Offset + 80, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Capacity4, 0xff8000)
	GUICtrlSetFont($Display_Capacity4, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Capacity4, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Capacity4, $GUI_HIDE)

	Local $IconSize = 48
	Local $OffsetPX = -15
	Local $IconNum = 1

	Local $IconLeft = 616 * $Dpi
	Local $LabelLeft = 646 * $Dpi
	Local $vOffSet = 340 + 300
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi

	Global $Display_Temp = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Temp, 0xff8000)
	GUICtrlSetFont($Display_Temp, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Temp, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Temp, $GUI_HIDE)

	Global $Display_TempIMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "maxTemp.png", $Display_TempIMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Max Temperature")
	_GUICtrl_OnHoverRegister($Display_TempIMG, "maxTemp_Hover", "maxTemp_Leave_Hover")
	GUICtrlSetOnEvent($Display_TempIMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_TempIMG, 4)
	GUICtrlSetState($Display_TempIMG, $GUI_HIDE)

	Global $Display_Tol = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Tol, 0xff8000)
	GUICtrlSetFont($Display_Tol, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Tol, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Tol, $GUI_HIDE)

	Global $Display_TolIMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "crashTolerence.png", $Display_TolIMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Crash tolerence")
	_GUICtrl_OnHoverRegister($Display_TolIMG, "crashTolerence_Hover", "crashTolerence_Leave_Hover")
	GUICtrlSetOnEvent($Display_TolIMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_TolIMG, 4)
	GUICtrlSetState($Display_TolIMG, $GUI_HIDE)

	Global $Display_BreakingForce = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_BreakingForce, 0xff8000)
	GUICtrlSetFont($Display_BreakingForce, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_BreakingForce, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_BreakingForce, $GUI_HIDE)

	Global $Display_BreakingForceIMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "BreakingForce.png", $Display_BreakingForceIMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Breaking force")
	_GUICtrl_OnHoverRegister($Display_BreakingForceIMG, "BreakingForce_Hover", "BreakingForce_Leave_Hover")
	GUICtrlSetOnEvent($Display_BreakingForceIMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_BreakingForceIMG, 4)
	GUICtrlSetState($Display_BreakingForceIMG, $GUI_HIDE)

	Global $Display_Buoy = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Buoy, 0xff8000)
	GUICtrlSetFont($Display_Buoy, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Buoy, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Buoy, $GUI_HIDE)

	Global $Display_BuoyIMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "Buoyancy.png", $Display_BuoyIMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Buoyancy")
	_GUICtrl_OnHoverRegister($Display_BuoyIMG, "Buoyancy_Hover", "Buoyancy_Leave_Hover")
	GUICtrlSetOnEvent($Display_BuoyIMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_BuoyIMG, 4)
	GUICtrlSetState($Display_BuoyIMG, $GUI_HIDE)

	Global $Display_Drag = GUICtrlCreateLabel(" ", $LabelLeft, $Offset, 110 * $Dpi, 15 * $Dpi)
	GUICtrlSetColor($Display_Drag, 0xff8000)
	GUICtrlSetFont($Display_Drag, 9, "", "", $Theme_Default_Font)
	GUICtrlSetBkColor($Display_Drag, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState($Display_Drag, $GUI_HIDE)

	Global $Display_DragIMG = GUICtrlCreatePic("", $IconLeft, $Offset, 35, 35)
	_LoadPNG($InfoIconsPath & "Drag.png", $Display_DragIMG)
	$IconNum += 1
	Local $Offset = $vOffSet + (($IconSize + $OffsetPX) * $IconNum) * $Dpi
	GUICtrlSetTip(-1, "Drag (Minimum Drag)")
	_GUICtrl_OnHoverRegister($Display_DragIMG, "Drag_Hover", "Drag_Leave_Hover")
	GUICtrlSetOnEvent($Display_DragIMG, "_Btns_FilterCategory")
	GUICtrlSetCursor($Display_DragIMG, 4)
	GUICtrlSetState($Display_DragIMG, $GUI_HIDE)

EndFunc   ;==>_Draw_InfoIcons_HighDpi


Func _Draw_TreeView_Btns()

	Local $IconSize = 13
	Local $aOffset = 40
	Local $IconNum = 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw tree view expand button
	Global $TV_Expand = GUICtrlCreatePic("", 5 * $Dpi, 90 * $Dpi, $IconSize, $IconSize)
	GUICtrlSetOnEvent($TV_Expand, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "Expand.png", $TV_Expand)
	_GUICtrl_OnHoverRegister($TV_Expand, "TVEx_Hover", "TVEx_Leave_Hover", "TVEx_PrimaryDown", "TVEx_PrimaryUp")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw tree view collapse button
	Global $TV_Collapse = GUICtrlCreatePic("", 5 * $Dpi, 25 * $Dpi + $Offset, $IconSize, $IconSize)
	GUICtrlSetOnEvent($TV_Collapse, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "Collapse.png", $TV_Collapse)
	_GUICtrl_OnHoverRegister($TV_Collapse, "TVCol_Hover", "TVCol_Leave_Hover", "TVCol_PrimaryDown", "TVCol_PrimaryUp")
	$IconNum += 1
	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw tree view goto top button
	Global $Btn_TreeTop = GUICtrlCreatePic("", 5 * $Dpi, 25 * $Dpi + $Offset, $IconSize, $IconSize)
	GUICtrlSetOnEvent($Btn_TreeTop, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "GotoTop.png", $Btn_TreeTop)
	_GUICtrl_OnHoverRegister($Btn_TreeTop, "TreeTop_Hover", "TreeTop_Leave_Hover", "TreeTop_PrimaryDown", "TreeTop_PrimaryUp")
	$IconNum += 1
	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw tree view next branch button
	Global $Btn_TreeNext = GUICtrlCreatePic("", 5 * $Dpi, 25 * $Dpi + $Offset, $IconSize, $IconSize)
	GUICtrlSetOnEvent($Btn_TreeNext, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "Next.png", $Btn_TreeNext)
	_GUICtrl_OnHoverRegister($Btn_TreeNext, "TreeNext_Hover", "TreeNext_Leave_Hover", "TreeNext_PrimaryDown", "TreeNext_PrimaryUp")
	$IconNum += 1
	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw tree view previous branch button
	Global $Btn_TreePrev = GUICtrlCreatePic("", 5 * $Dpi, 25 * $Dpi + $Offset, $IconSize, $IconSize)
	GUICtrlSetOnEvent($Btn_TreePrev, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "Previous.png", $Btn_TreePrev)
	_GUICtrl_OnHoverRegister($Btn_TreePrev, "TreePrev_Hover", "TreePrev_Leave_Hover", "TreePrev_PrimaryDown", "TreePrev_PrimaryUp")
	$IconNum += 1
	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw tree view goto end button
	Global $Btn_TreeEnd = GUICtrlCreatePic("", 5 * $Dpi, 25 * $Dpi + $Offset, $IconSize, $IconSize)
	GUICtrlSetOnEvent($Btn_TreeEnd, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "GotoBottom.png", $Btn_TreeEnd)
	_GUICtrl_OnHoverRegister($Btn_TreeEnd, "TreeEnd_Hover", "TreeEnd_Leave_Hover", "TreeEnd_PrimaryDown", "TreeEnd_PrimaryUp")

EndFunc   ;==>_Draw_TreeView_Btns

Func _Draw_TreeView_Btns_HighDpi()

	Local $IconSize = 25
	Local $aOffset = 40
	Local $IconNum = 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	Global $TV_Expand = GUICtrlCreatePic("", 5 * $Dpi, 50 * $Dpi, 25, 25)
	GUICtrlSetOnEvent($TV_Expand, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "Expand.png", $TV_Expand)
	_GUICtrl_OnHoverRegister($TV_Expand, "TVEx_Hover", "TVEx_Leave_Hover", "TVEx_PrimaryDown", "TVEx_PrimaryUp")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	Global $TV_Collapse = GUICtrlCreatePic("", 5 * $Dpi, 5 * $Dpi + $Offset, 25, 25)
	GUICtrlSetOnEvent($TV_Collapse, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "Collapse.png", $TV_Collapse)
	_GUICtrl_OnHoverRegister($TV_Collapse, "TVCol_Hover", "TVCol_Leave_Hover", "TVCol_PrimaryDown", "TVCol_PrimaryUp")
	$IconNum += 1
	$Offset = ($aOffset + $IconSize) * $IconNum

	Global $Btn_TreeTop = GUICtrlCreatePic("", 5 * $Dpi, 150 * $Dpi + $Offset, 25, 25)
	GUICtrlSetOnEvent($Btn_TreeTop, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "GotoTop.png", $Btn_TreeTop)
	_GUICtrl_OnHoverRegister($Btn_TreeTop, "TreeTop_Hover", "TreeTop_Leave_Hover", "TreeTop_PrimaryDown", "TreeTop_PrimaryUp")
	$IconNum += 1
	$Offset = ($aOffset + $IconSize) * $IconNum

	Global $Btn_TreeNext = GUICtrlCreatePic("", 5 * $Dpi, 150 * $Dpi + $Offset, 25, 25)
	GUICtrlSetOnEvent($Btn_TreeNext, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "Next.png", $Btn_TreeNext)
	_GUICtrl_OnHoverRegister($Btn_TreeNext, "TreeNext_Hover", "TreeNext_Leave_Hover", "TreeNext_PrimaryDown", "TreeNext_PrimaryUp")
	$IconNum += 1
	$Offset = ($aOffset + $IconSize) * $IconNum

	Global $Btn_TreePrev = GUICtrlCreatePic("", 5 * $Dpi, 150 * $Dpi + $Offset, 25, 25)
	GUICtrlSetOnEvent($Btn_TreePrev, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "Previous.png", $Btn_TreePrev)
	_GUICtrl_OnHoverRegister($Btn_TreePrev, "TreePrev_Hover", "TreePrev_Leave_Hover", "TreePrev_PrimaryDown", "TreePrev_PrimaryUp")
	$IconNum += 1
	$Offset = ($aOffset + $IconSize) * $IconNum

	Global $Btn_TreeEnd = GUICtrlCreatePic("", 5 * $Dpi, 150 * $Dpi + $Offset, 25, 25)
	GUICtrlSetOnEvent($Btn_TreeEnd, "_Btns_TreeNavigation")
	_LoadPNG($TreeCtrlButtonsPath & "GotoBottom.png", $Btn_TreeEnd)
	_GUICtrl_OnHoverRegister($Btn_TreeEnd, "TreeEnd_Hover", "TreeEnd_Leave_Hover", "TreeEnd_PrimaryDown", "TreeEnd_PrimaryUp")

EndFunc   ;==>_Draw_TreeView_Btns_HighDpi


Func _Draw_CategoryBtns()

	Global $CatsLeftOffset = 430 * $Dpi
	Local $IconSize = 25
	Local $aOffset = -25
	Local $IconNum = 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw pods button

	Global $Cat_Pods = GUICtrlCreatePic("", $CatsLeftOffset, 45 * $Dpi, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Pods.png", $Cat_Pods)
	_GUICtrl_OnHoverRegister($Cat_Pods, "Cat_Pods_Hover", "Cat_Pods_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Pods, "_Btns_FilterCategory")
	GUICtrlSetTip($Cat_Pods, "Pods", "Filters")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw fuel tanks button

	Global $Cat_FuelTank = GUICtrlCreatePic("", $CatsLeftOffset, 80 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "FuelTank.png", $Cat_FuelTank)
	_GUICtrl_OnHoverRegister($Cat_FuelTank, "Cat_FuelTank_Hover", "Cat_FuelTank_Leave_Hover")
	GUICtrlSetOnEvent($Cat_FuelTank, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Fuel Tanks")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw engines button

	Global $Cat_Engine = GUICtrlCreatePic("", $CatsLeftOffset, 110 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Engine.png", $Cat_Engine)
	_GUICtrl_OnHoverRegister($Cat_Engine, "Cat_Engine_Hover", "Cat_Engine_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Engine, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Engines")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw control button

	Global $Cat_Control = GUICtrlCreatePic("", $CatsLeftOffset, 140 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Control.png", $Cat_Control)
	_GUICtrl_OnHoverRegister($Cat_Control, "Cat_Control_Hover", "Cat_Control_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Control, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Control")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw structural button

	Global $Cat_Structural = GUICtrlCreatePic("", $CatsLeftOffset, 170 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Structural.png", $Cat_Structural)
	_GUICtrl_OnHoverRegister($Cat_Structural, "Cat_Structural_Hover", "Cat_Structural_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Structural, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Structural")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw coupling button

	Global $Cat_Coupling = GUICtrlCreatePic("", $CatsLeftOffset, 200 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Coupling.png", $Cat_Coupling)
	_GUICtrl_OnHoverRegister($Cat_Coupling, "Cat_Coupling_Hover", "Cat_Coupling_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Coupling, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Coupling")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw payload button

	Global $Cat_Payload = GUICtrlCreatePic("", $CatsLeftOffset, 230 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Payload.png", $Cat_Payload)
	_GUICtrl_OnHoverRegister($Cat_Payload, "Cat_Payload_Hover", "Cat_Payload_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Payload, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Payload")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw aero button

	Global $Cat_Aero = GUICtrlCreatePic("", $CatsLeftOffset, 260 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Aero.png", $Cat_Aero)
	_GUICtrl_OnHoverRegister($Cat_Aero, "Cat_Aero_Hover", "Cat_Aero_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Aero, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Aero")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw groun button

	Global $Cat_Ground = GUICtrlCreatePic("", $CatsLeftOffset, 290 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Ground.png", $Cat_Ground)
	_GUICtrl_OnHoverRegister($Cat_Ground, "Cat_Ground_Hover", "Cat_Ground_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Ground, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Ground")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw thermal button

	Global $Cat_Thermal = GUICtrlCreatePic("", $CatsLeftOffset, 320 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Thermal.png", $Cat_Thermal)
	_GUICtrl_OnHoverRegister($Cat_Thermal, "Cat_Thermal_Hover", "Cat_Thermal_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Thermal, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Thermal")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw electrical button

	Global $Cat_Electrical = GUICtrlCreatePic("", $CatsLeftOffset, 350 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Electrical.png", $Cat_Electrical)
	_GUICtrl_OnHoverRegister($Cat_Electrical, "Cat_Electrical_Hover", "Cat_Electrical_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Electrical, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Electrical")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw communications button

	Global $Cat_Communication = GUICtrlCreatePic("", $CatsLeftOffset, 380 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Communication.png", $Cat_Communication)
	_GUICtrl_OnHoverRegister($Cat_Communication, "Cat_Communication_Hover", "Cat_Communication_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Communication, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Communications")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw science button

	Global $Cat_Science = GUICtrlCreatePic("", $CatsLeftOffset, 410 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Science.png", $Cat_Science)
	_GUICtrl_OnHoverRegister($Cat_Science, "Cat_Science_Hover", "Cat_Science_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Science, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Science")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw cargo button

	Global $Cat_Cargo = GUICtrlCreatePic("", $CatsLeftOffset, 440 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Cargo.png", $Cat_Cargo)
	_GUICtrl_OnHoverRegister($Cat_Cargo, "Cat_Cargo_Hover", "Cat_Cargo_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Cargo, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Cargo")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw utility button

	Global $Cat_Utility = GUICtrlCreatePic("", $CatsLeftOffset, 470 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "Utility.png", $Cat_Utility)
	_GUICtrl_OnHoverRegister($Cat_Utility, "Cat_Utility_Hover", "Cat_Utility_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Utility, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Utility")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	; ------------------ Draw unknown category button

	Global $Cat_UnKnown = GUICtrlCreatePic("", $CatsLeftOffset, 500 * $Dpi + $Offset, 20, 20)
	_LoadPNG($CategoryButtonsPath & "UnKnown.png", $Cat_UnKnown)
	_GUICtrl_OnHoverRegister($Cat_UnKnown, "Cat_UnKnown_Hover", "Cat_UnKnown_Leave_Hover")
	GUICtrlSetOnEvent($Cat_UnKnown, "_Btns_FilterCategory")
	GUICtrlSetTip(-1, "Parts with unset categories")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	; Hide all
	GUICtrlSetState($Display_PartName, $GUI_HIDE)
	GUICtrlSetState($Display_ModName, $GUI_HIDE)
	GUICtrlSetState($idPreviewPic, $GUI_HIDE)
	GUICtrlSetState($iDescription, $GUI_HIDE)
	GUICtrlSetState($Display_DescriptionIMG, $GUI_HIDE)
	GUICtrlSetState($Display_Amount1, $GUI_HIDE)
	GUICtrlSetState($Display_Amount2, $GUI_HIDE)
	GUICtrlSetState($Display_Amount3, $GUI_HIDE)
	GUICtrlSetState($Display_Amount4, $GUI_HIDE)
	GUICtrlSetState($Display_BreakingForce, $GUI_HIDE)
	GUICtrlSetState($Display_BreakingForceIMG, $GUI_HIDE)
	GUICtrlSetState($Display_Buoy, $GUI_HIDE)
	GUICtrlSetState($Display_BuoyIMG, $GUI_HIDE)
	GUICtrlSetState($Display_Capacity1, $GUI_HIDE)
	GUICtrlSetState($Display_Capacity2, $GUI_HIDE)
	GUICtrlSetState($Display_Capacity3, $GUI_HIDE)
	GUICtrlSetState($Display_Capacity4, $GUI_HIDE)
	GUICtrlSetState($Display_Category, $GUI_HIDE)
	GUICtrlSetState($Display_CategoryIMG, $GUI_HIDE)
	GUICtrlSetState($Display_CrewCapacity, $GUI_HIDE)
	GUICtrlSetState($Display_CrewCapacityIMG, $GUI_HIDE)
	GUICtrlSetState($Display_Drag, $GUI_HIDE)
	GUICtrlSetState($Display_DragIMG, $GUI_HIDE)
	GUICtrlSetState($Display_Funds, $GUI_HIDE)
	GUICtrlSetState($Display_FundsIMG, $GUI_HIDE)
	GUICtrlSetState($Display_Mass, $GUI_HIDE)
	GUICtrlSetState($Display_MassIMG, $GUI_HIDE)
	GUICtrlSetState($Display_Resource1, $GUI_HIDE)
	GUICtrlSetState($Display_Resource1IMG, $GUI_HIDE)
	GUICtrlSetState($Display_Resource2, $GUI_HIDE)
	GUICtrlSetState($Display_Resource2IMG, $GUI_HIDE)
	GUICtrlSetState($Display_Resource3, $GUI_HIDE)
	GUICtrlSetState($Display_Resource3IMG, $GUI_HIDE)
	GUICtrlSetState($Display_Resource4, $GUI_HIDE)
	GUICtrlSetState($Display_Resource4IMG, $GUI_HIDE)
	GUICtrlSetState($Display_Temp, $GUI_HIDE)
	GUICtrlSetState($Display_TempIMG, $GUI_HIDE)
	GUICtrlSetState($Display_Tol, $GUI_HIDE)
	GUICtrlSetState($Display_TolIMG, $GUI_HIDE)
	GUICtrlSetState($Display_VesselType, $GUI_HIDE)
	GUICtrlSetState($Display_VesselTypeIMG, $GUI_HIDE)

EndFunc   ;==>_Draw_CategoryBtns

Func _Draw_CategoryBtns_HighDpi()
	Global $CatsLeftOffset = 430 * $Dpi
	Local $IconSize = 40
	Local $aOffset = -25
	Local $IconNum = 1
	;GUICtrlSetState($Div0, $GUI_SHOW)

	$Offset = ($aOffset + $IconSize) * $IconNum

	Global $Cat_Pods = GUICtrlCreatePic("", $CatsLeftOffset, 45 * $Dpi, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Pods.png", $Cat_Pods)
	_GUICtrl_OnHoverRegister($Cat_Pods, "Cat_Pods_Hover", "Cat_Pods_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Pods, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Pods, 0)
	GUICtrlSetTip($Cat_Pods, "Pods", "Filters")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	Global $Cat_FuelTank = GUICtrlCreatePic("", $CatsLeftOffset, 80 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "FuelTank.png", $Cat_FuelTank)
	_GUICtrl_OnHoverRegister($Cat_FuelTank, "Cat_FuelTank_Hover", "Cat_FuelTank_Leave_Hover")
	GUICtrlSetOnEvent($Cat_FuelTank, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_FuelTank, 0)
	GUICtrlSetTip(-1, "Fuel Tanks")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Engine = GUICtrlCreatePic("", $CatsLeftOffset, 110 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Engine.png", $Cat_Engine)
	_GUICtrl_OnHoverRegister($Cat_Engine, "Cat_Engine_Hover", "Cat_Engine_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Engine, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Engine, 0)
	GUICtrlSetTip(-1, "Engines")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Control = GUICtrlCreatePic("", $CatsLeftOffset, 140 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Control.png", $Cat_Control)
	_GUICtrl_OnHoverRegister($Cat_Control, "Cat_Control_Hover", "Cat_Control_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Control, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Control, 0)
	GUICtrlSetTip(-1, "Control")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Structural = GUICtrlCreatePic("", $CatsLeftOffset, 170 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Structural.png", $Cat_Structural)
	_GUICtrl_OnHoverRegister($Cat_Structural, "Cat_Structural_Hover", "Cat_Structural_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Structural, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Structural, 0)
	GUICtrlSetTip(-1, "Structural")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Coupling = GUICtrlCreatePic("", $CatsLeftOffset, 200 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Coupling.png", $Cat_Coupling)
	_GUICtrl_OnHoverRegister($Cat_Coupling, "Cat_Coupling_Hover", "Cat_Coupling_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Coupling, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Coupling, 0)
	GUICtrlSetTip(-1, "Coupling")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Payload = GUICtrlCreatePic("", $CatsLeftOffset, 230 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Payload.png", $Cat_Payload)
	_GUICtrl_OnHoverRegister($Cat_Payload, "Cat_Payload_Hover", "Cat_Payload_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Payload, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Payload, 0)
	GUICtrlSetTip(-1, "Payload")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Aero = GUICtrlCreatePic("", $CatsLeftOffset, 260 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Aero.png", $Cat_Aero)
	_GUICtrl_OnHoverRegister($Cat_Aero, "Cat_Aero_Hover", "Cat_Aero_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Aero, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Aero, 0)
	GUICtrlSetTip(-1, "Aero")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Ground = GUICtrlCreatePic("", $CatsLeftOffset, 290 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Ground.png", $Cat_Ground)
	_GUICtrl_OnHoverRegister($Cat_Ground, "Cat_Ground_Hover", "Cat_Ground_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Ground, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Ground, 0)
	GUICtrlSetTip(-1, "Ground")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Thermal = GUICtrlCreatePic("", $CatsLeftOffset, 320 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Thermal.png", $Cat_Thermal)
	_GUICtrl_OnHoverRegister($Cat_Thermal, "Cat_Thermal_Hover", "Cat_Thermal_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Thermal, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Thermal, 0)
	GUICtrlSetTip(-1, "Thermal")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Electrical = GUICtrlCreatePic("", $CatsLeftOffset, 350 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Electrical.png", $Cat_Electrical)
	_GUICtrl_OnHoverRegister($Cat_Electrical, "Cat_Electrical_Hover", "Cat_Electrical_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Electrical, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Electrical, 0)
	GUICtrlSetTip(-1, "Electrical")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Communication = GUICtrlCreatePic("", $CatsLeftOffset, 380 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Communication.png", $Cat_Communication)
	_GUICtrl_OnHoverRegister($Cat_Communication, "Cat_Communication_Hover", "Cat_Communication_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Communication, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Communication, 0)
	GUICtrlSetTip(-1, "Communications")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Science = GUICtrlCreatePic("", $CatsLeftOffset, 410 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Science.png", $Cat_Science)
	_GUICtrl_OnHoverRegister($Cat_Science, "Cat_Science_Hover", "Cat_Science_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Science, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Science, 0)
	GUICtrlSetTip(-1, "Science")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Cargo = GUICtrlCreatePic("", $CatsLeftOffset, 440 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Cargo.png", $Cat_Cargo)
	_GUICtrl_OnHoverRegister($Cat_Cargo, "Cat_Cargo_Hover", "Cat_Cargo_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Cargo, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Cargo, 0)
	GUICtrlSetTip(-1, "Cargo")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	Global $Cat_Utility = GUICtrlCreatePic("", $CatsLeftOffset, 470 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "Utility.png", $Cat_Utility)
	_GUICtrl_OnHoverRegister($Cat_Utility, "Cat_Utility_Hover", "Cat_Utility_Leave_Hover")
	GUICtrlSetOnEvent($Cat_Utility, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_Utility, 0)
	GUICtrlSetTip(-1, "Utility")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum

	Global $Cat_UnKnown = GUICtrlCreatePic("", $CatsLeftOffset, 500 * $Dpi + $Offset, 40, 40)
	_LoadPNG($CategoryButtonsPath & "UnKnown.png", $Cat_UnKnown)
	_GUICtrl_OnHoverRegister($Cat_UnKnown, "Cat_UnKnown_Hover", "Cat_UnKnown_Leave_Hover")
	GUICtrlSetOnEvent($Cat_UnKnown, "_Btns_FilterCategory")
	;GUICtrlSetCursor($Cat_UnKnown, 0)
	GUICtrlSetTip(-1, "Parts with unset categories")
	$IconNum += 1

	$Offset = ($aOffset + $IconSize) * $IconNum


	;---

EndFunc   ;==>_Draw_CategoryBtns_HighDpi


Func Draw_Settings_UI()

	Local $dbOffset = 5 * $Dpi
	; ------------------ Draw database group
	Global $_Grp_Database = GUICtrlCreateGroup(" Database ", 442 * $Dpi + 16, 16 / 2 * $Dpi + $dbOffset, 569 / 2 * $Dpi + 5, 491 / 2 * $Dpi)

	; ------------------ Draw rebuld DB button
	Global $Btn_RebuilDB = GUICtrlCreateButton("Rebuild", 442 * $Dpi + 24, 40 / 2 * $Dpi + $dbOffset, 553 / 2 * $Dpi, 110 / 2 * $Dpi + 5)
	GUICtrlSetOnEvent($Btn_RebuilDB, "_Btns_Settings_")

	; ------------------ Draw edit modnames.ini button
	Global $Btn_EditSetttings = GUICtrlCreateButton("Edit Settings.ini", 442 * $Dpi + 24, 173 / 2 * $Dpi + $dbOffset, 553 / 2 * $Dpi, 55 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_EditSetttings, "_Btns_Settings_")

	; ------------------ Draw window setting group
	Global $_Grp_WinSettings = GUICtrlCreateGroup(" Window settings ", 442 * $Dpi + 24, 232 / 2 * $Dpi + $dbOffset, 553 / 2 * $Dpi, 265 / 2 * $Dpi)

	; ------------------ Draw stay on top checkbox
	Global $Btn_OnTop = GUICtrlCreateCheckbox(" Always on top", 442 * $Dpi + 40, 276 / 2 * $Dpi + $dbOffset, 249 / 2 * $Dpi, 25 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_OnTop, "_Btns_Settings_")

	; ------------------ Draw save win position checkbox
	Global $Btn_WinPositon = GUICtrlCreateCheckbox(" Remember position", 442 * $Dpi + 40, 324 / 2 * $Dpi + $dbOffset, 249 / 2 * $Dpi, 25 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_WinPositon, "_Btns_Settings_")

	; ------------------ Draw large ui mode checkbox
	Global $Btn_LargeUI = GUICtrlCreateCheckbox(" Use large icons", 442 * $Dpi + 40, 372 / 2 * $Dpi + $dbOffset, 249 / 2 * $Dpi, 32 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_LargeUI, "_Btns_Settings_")

	; ------------------ Draw re-cetner window button
	Global $Btn_CenterWin = GUICtrlCreateButton("Re-center window", 452 * $Dpi + 20, 434 / 2 * $Dpi + $dbOffset, 498 / 2 * $Dpi + 15, 49 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_CenterWin, "_Btns_Settings_")

	; ------------------ Draw make app shortcut button
	Global $Btn_MakeShortCut = GUICtrlCreateButton("Make shortcut", 452 * $Dpi + 166, 256 / 2 * $Dpi + $dbOffset, 235 / 2 * $Dpi, 169 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_MakeShortCut, "_Btns_Settings_")

	; ------------------ Draw footer image
	Global $BannerIMG = GUICtrlCreatePic("", 456 * $Dpi, 682 * $Dpi, 300, 46)
	_LoadPNG($BannerImgPath & "DSN.png", $BannerIMG)

	Local $supOffset = 270 * $Dpi

	; AGAINST FORUM ADONS POSTING RULES: (AND SO DISABLED)

	;; ------------------ Draw support group
	;Global $_Grp_Support = GUICtrlCreateGroup(" Support ", 445 * $Dpi + 16, 519 / 2 * $Dpi + $supOffset, 569 / 2 * $Dpi, 280 / 2 * $Dpi)

	;; ------------------ Draw support image
	;Global $IMG_Support = GUICtrlCreatePic("", 456 * $Dpi + 10, 535 / 2 * $Dpi + $supOffset, 275 * $Dpi, 105 * $Dpi)
	;_LoadPNG($BannerImgPath & "LogoSmall.png", $IMG_Support)

	;; ------------------ Draw donate button
	;Global $Btn_Donate = GUICtrlCreateButton("Patreon", 456 * $Dpi + 80, 750 / 2 * $Dpi + $supOffset, 291 / 2 * $Dpi, 35 / 2 * $Dpi)
	;GUICtrlSetOnEvent($Btn_Donate, "_Btns_Settings_")

EndFunc   ;==>Draw_Settings_UI

Func Draw_Settings_UI_HighDpi()



	Local $dbOffset = 5 * $Dpi

	Global $_Grp_Database = GUICtrlCreateGroup(" Database ", 454 * $Dpi + 16, 16 / 2 * $Dpi + $dbOffset, 569 / 2 * $Dpi, 491 / 2 * $Dpi)

	Global $Btn_RebuilDB = GUICtrlCreateButton("Rebuild", 454 * $Dpi + 24, 40 / 2 * $Dpi + $dbOffset, 553 / 2 * $Dpi, 110 / 2 * $Dpi + 12)
	GUICtrlSetOnEvent($Btn_RebuilDB, "_Btns_Settings_")

	Global $Btn_EditSetttings = GUICtrlCreateButton("Edit Settings.ini", 454 * $Dpi + 24, 173 / 2 * $Dpi + $dbOffset, 553 / 2 * $Dpi, 55 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_EditSetttings, "_Btns_Settings_")

	Global $_Grp_WinSettings = GUICtrlCreateGroup(" Window settings ", 454 * $Dpi + 24, 232 / 2 * $Dpi + $dbOffset, 553 / 2 * $Dpi, 265 / 2 * $Dpi)

	Global $Btn_OnTop = GUICtrlCreateCheckbox(" Always on top", 454 * $Dpi + 40, 276 / 2 * $Dpi + $dbOffset, 249 / 2 * $Dpi, 25 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_OnTop, "_Btns_Settings_")

	Global $Btn_WinPositon = GUICtrlCreateCheckbox(" Remember position", 454 * $Dpi + 40, 324 / 2 * $Dpi + $dbOffset, 249 / 2 * $Dpi, 25 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_WinPositon, "_Btns_Settings_")

	Global $Btn_LargeUI = GUICtrlCreateCheckbox(" Use large icons", 454 * $Dpi + 40, 372 / 2 * $Dpi + $dbOffset, 249 / 2 * $Dpi, 32 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_LargeUI, "_Btns_Settings_")

	Global $Btn_CenterWin = GUICtrlCreateButton("Re-center window", 454 * $Dpi + 40, 434 / 2 * $Dpi + $dbOffset, 498 / 2 * $Dpi + 22, 49 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_CenterWin, "_Btns_Settings_")


	Global $Btn_MakeShortCut = GUICtrlCreateButton("Make shortcut", 454 * $Dpi + 296, 256 / 2 * $Dpi + $dbOffset, 265 / 2 * $Dpi, 169 / 2 * $Dpi)
	GUICtrlSetOnEvent($Btn_MakeShortCut, "_Btns_Settings_")

	Global $BannerIMG = GUICtrlCreatePic("", 455 * $Dpi, 682 * $Dpi, 600, 93)
	_LoadPNG($BannerImgPath & "DSN.png", $BannerIMG)

	; AGAINST FORUM ADONS POSTING RULES: (AND SO DISABLED)

	;Local $supOffset = 270 * $Dpi

	;Global $_Grp_Support = GUICtrlCreateGroup(" Support ", 454 * $Dpi + 16, 519 / 2 * $Dpi + $supOffset, 569 / 2 * $Dpi, 267 / 2 * $Dpi)

	;Global $IMG_Support = GUICtrlCreatePic("", 454 * $Dpi + 24, 535 / 2 * $Dpi + $supOffset, 550 * $Dpi, 210 * $Dpi)
	;_LoadPNG($BannerImgPath & "LogoSmall.png", $IMG_Support)

	;Global $Btn_Donate = GUICtrlCreateButton("Patreon", 454 * $Dpi + 170, 753 / 2 * $Dpi + $supOffset, 291 / 2 * $Dpi, 25 / 2 * $Dpi)
	;GUICtrlSetOnEvent($Btn_Donate, "_Btns_Settings_")

EndFunc   ;==>Draw_Settings_UI_HighDpi


Func _Draw_StatusBar()

	;------------------- Status Bar Lines
	GUICtrlCreateGraphic(0 * $Dpi, 728 * $Dpi, 111 * $Dpi, 30 * $Dpi, $SS_SUNKEN)
	GUICtrlCreateGraphic(110 * $Dpi, 728 * $Dpi, 646 * $Dpi, 30 * $Dpi, $SS_SUNKEN)

	;------------------- Status Bar Labels
	Global $iStatus = GUICtrlCreateLabel("Ready", 16 * $Dpi, 735 * $Dpi, 78 * $Dpi, 20 * $Dpi, BitOR($SS_CENTER, $SS_CENTERIMAGE))
	GUICtrlSetFont($iStatus, 8, 800, "", $Theme_Default_Font)
	GUICtrlSetColor($iStatus, 0x008000)   ;008000

	Global $iStatusText = GUICtrlCreateLabel("...", 125 * $Dpi, 738 * $Dpi, 575 * $Dpi, 12 * $Dpi)
	GUICtrlSetOnEvent($iStatusText, "_Btns_Main")
	GUICtrlSetFont($iStatusText, 8, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($iStatusText, 0xff0000)

EndFunc   ;==>_Draw_StatusBar


Func _LoadPNG($sImage, $iCtrlID)

	Local Const $hImage = _GDIPlus_ImageLoadFromFile($sImage)
	Local Const $hHBitmap = _GDIPlus_BitmapCreateHBITMAPFromBitmap($hImage)
	_WinAPI_DeleteObject(GUICtrlSendMsg($iCtrlID, $STM_SETIMAGE, $IMAGE_BITMAP, $hHBitmap))
	_WinAPI_DeleteObject($hHBitmap)
	_GDIPlus_ImageDispose($hImage)
	
EndFunc   ;==>_LoadPNG


;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                          BUTTON ACTIONS
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

Func _Btns_Main()
	$tID = @GUI_CtrlId
	Switch $tID
		; ------------------ Help button action
		Case $Btn_Help
			ShellExecute(@ScriptDir & "\Files\Readme.txt")


			; ------------------ Search tree button action
		Case $Btn_Search
			If GUICtrlRead($SearchInput) = "" Then

				ToolTip("Nothing to search!", MouseGetPos()[0] - 80, MouseGetPos()[1] - 30)
				Sleep(500)
				ToolTip("")
			Else
				_SearchListView(GUICtrlRead($SearchInput))
			EndIf

			; ------------------ Settings button action

		Case $Btn_Settings

			$info = ControlCommand($hMain, "", $Display_PartName, "IsVisible", "")

			If $info = 1 Then
				_Hide_InfoIcons()
				_Hide_Dividers()
			EndIf

			If $SettingsMode = False Then
				GUICtrlSetState($Btn_ModDownload, $GUI_HIDE)
				GUICtrlSetState($Display_ModName, $GUI_HIDE)
				GUICtrlSetState($_BG_Loading_Pic, $GUI_HIDE)
				GUICtrlSetState($_BG_Pic, $GUI_HIDE)

				If $_UI_High_Dpi = "Enabled" Then

					Draw_Settings_UI_HighDpi()
					_LoadSettingsIni()

				Else

					Draw_Settings_UI()
					_LoadSettingsIni()

				EndIf

				$SettingsMode = True
			ElseIf $SettingsMode = True Then
				_HideDraw_Settings_UI()
				$SettingsMode = False
			EndIf

			; ------------------ Paste and search button action


		Case $Btn_Paste
			Local $cData = ClipGet()
			ControlSetText($hMain, "", $SearchInput, StringStripWS($cData, 3))
			_SearchListView(GUICtrlRead($SearchInput))

			; ------------------ Search spacedock button action

		Case $Btn_SearchSpaceDock

			If GUICtrlRead($SearchInput) = "" Then

				ToolTip("Nothing to search!", MouseGetPos()[0] - 80, MouseGetPos()[1] - 30)
				Sleep(500)
				ToolTip("")
			Else
				ShellExecute(IniRead("Settings.ini", "Links", "Spacedock", "-") & GUICtrlRead($SearchInput))
			EndIf

			; ------------------ Search spacedock action

		Case $Btn_ModSearch

			If GUICtrlRead($SearchInput) = "" Then

				ToolTip("Nothing to search!", MouseGetPos()[0] - 80, MouseGetPos()[1] - 30)
				Sleep(500)
				ToolTip("")
			Else
				ShellExecute(IniRead("Settings.ini", "Links", "Spacedock", "-") & GUICtrlRead($Display_ModName))
			EndIf

			; ------------------ Search for current mod on spacedock button action

		Case $Display_ModName
			ShellExecute(IniRead("Settings.ini", "Links", "Spacedock", "-") & $ModName)

			; ------------------ Current mod direct download button action

		Case $Btn_ModDownload

			ShellExecute($ModDownloadUrl)

			; ------------------ Search for current mod on KSP forum button action

		Case $Btn_WebSearch

			If GUICtrlRead($SearchInput) = "" Then

				ToolTip("Nothing to search!", MouseGetPos()[0] - 80, MouseGetPos()[1] - 30)
				Sleep(500)
				ToolTip("")
			Else
				ShellExecute(IniRead("Settings.ini", "Links", "KSPAddons", "-") & GUICtrlRead($SearchInput))
			EndIf

			; ------------------ Open current folder button action

		Case $Btn_OpenFolder

			If $TVFolderMode = False Then

				_PathFromAltName() ; Set folder path
				ShellExecute($iCurrentSelectionPath) ; Open folder in explorer

			Else

				_PathFromRealName() ; Set folder path
				ShellExecute($iCurrentSelectionPath)  ; Open folder in explorer

			EndIf

			; ------------------ Edit current config button action

		Case $Btn_EditCFG

			ShellExecute($iCurrentCFGFullPath)


			; ------------------ Status bar click to copy path action

		Case $iStatusText

			$ShortPath = GUICtrlRead($iStatusText)
			$Path = StringReplace($ShortPath, "..\", $iGameData)
			ClipPut($ShortPath) ; Copy path to clipboard

			ToolTip($Path, MouseGetPos()[0] + 25, MouseGetPos()[1], "Copied!") ; UI Out
			Sleep(1000)
			ToolTip("")

			; ------------------ Full named tree view button action


		Case $Btn_FullNames_View

			_Btn_FullNamesTree()

			; ------------------ File and folder tree view button action

		Case $Btn_FileAndFolder_View

			_Btn_FullFolderTree()

			; ------------------ Mod list slection in combo box action

		Case $hCombo
			$SName = GUICtrlRead($hCombo)
			If Not @error Then

				If $TVNameMode = True Then

					; Hide settings if visible
					_HideDraw_Settings_UI()

					; Hide info view if visible
					_Hide_InfoIcons()

					; Delete tree view
					_GUICtrlTreeView_Destroy($hTree)

					; Make a new tree view
					$hTree = GUICtrlCreateTreeView(25 * $Dpi, 40 * $Dpi, 400 * $Dpi, 650 * $Dpi, _
							BitOR($TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, _
							$TVS_SHOWSELALWAYS, $TVS_FULLROWSELECT), $WS_EX_CLIENTEDGE)
					$TreFile = $_Index_Path & "Trees\NamedPaths\" & $SName & ".tre"

					; Load selected tree
					_GUICtrlTreeView_BeginUpdate($hTree)
					_TreeView_Load_Branches($TreFile)
					_GUICtrlTreeView_EndUpdate($hTree)

					; Auto expand tree
					_GUICtrlTreeView_Expand($hTree)

					; Find an select first item in tree
					$tRoot = _GUICtrlTreeView_GetFirstItem($hTree)
					_GUICtrlTreeView_SelectItem($hTree, $tRoot, $TVGN_FIRSTVISIBLE)
					Send("{HOME}")
					_GUICtrlTreeView_SetFocused($hTree, $tRoot, True)
					ControlSetText($hMain, "", $iStatusText, "...")

				Else

					; Hide settings if visible
					_HideDraw_Settings_UI()

					; Hide info view if visible
					_Hide_InfoIcons()

					; Delete tree view
					_GUICtrlTreeView_Destroy($hTree)

					; Make a new tree view
					$hTree = GUICtrlCreateTreeView(25 * $Dpi, 40 * $Dpi, 400 * $Dpi, 650 * $Dpi, _
							BitOR($TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, _
							$TVS_SHOWSELALWAYS, $TVS_FULLROWSELECT), $WS_EX_CLIENTEDGE)
					$TreFile = $_Index_Path & "Trees\OriginalPaths\" & $SName & ".tre"

					; Load selected tree
					_GUICtrlTreeView_BeginUpdate($hTree)
					_TreeView_Load_Branches($TreFile)
					_GUICtrlTreeView_EndUpdate($hTree)

					; Auto expand tree
					_GUICtrlTreeView_Expand($hTree)

					; Find an select first item in tree
					$tRoot = _GUICtrlTreeView_GetFirstItem($hTree)
					_GUICtrlTreeView_SelectItem($hTree, $tRoot, $TVGN_FIRSTVISIBLE)
					Send("{HOME}")
					_GUICtrlTreeView_SetFocused($hTree, $tRoot, True)
					ControlSetText($hMain, "", $iStatusText, "...")

				EndIf

			EndIf

		Case Else

	EndSwitch

EndFunc   ;==>_Btns_Main

Func _Btn_FullFolderTree()

	; Hide info view if visible
	_Hide_InfoIcons()

	; Hide settings if visible
	_HideDraw_Settings_UI()

	ControlSetText($hMain, "", $iStatus, "Loading")
	ControlSetText($hMain, "", $iStatusText, "Loading folders ...")
	GUICtrlSetState($Btn_Settings, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Btn_Help, $GUI_HIDE + $GUI_DISABLE)

	Global $TVFolderMode = True
	Global $TVNameMode = False

	; Delete tree view
	_GUICtrlTreeView_Destroy($hTree)

	; Make a new tree view
	$hTree = GUICtrlCreateTreeView(25 * $Dpi, 40 * $Dpi, 400 * $Dpi, 650 * $Dpi, _
			BitOR($TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, _
			$TVS_SHOWSELALWAYS, $TVS_FULLROWSELECT), $WS_EX_CLIENTEDGE)

	; Load full file and folder named tree view
	_GUICtrlTreeView_BeginUpdate($hTree)
	_TreeView_Load_Branches($_Index_Path & "Trees\PartFolders.tre")
	_GUICtrlTreeView_EndUpdate($hTree)

	; ------------------ Load combo box mods list

	; Read mod folder names as a list from index
	$aArray = IniReadSection($_Index_Path & "_Index_.ini", "ModFolderNames")


	; Iterate through all setting each one as the top level name
	$sList2 = ""
	For $i = 1 To UBound($aArray, 1) - 1
		If FileExists($iGameData & $aArray[$i][0]) Then
			$sList2 &= "|" & $aArray[$i][0]
		EndIf
	Next

	; Show combo box
	GUICtrlSetState($hCombo, $GUI_SHOW)
	GUICtrlSetData($hCombo, $sList2)
	_GUICtrlComboBox_SetEditText($hCombo, "All Mods")

	; Show category filter buttons if info view is enabled
	$info = ControlCommand($hMain, "", $Cat_Pods, "IsVisible", "")

	If $info = 1 Then
	Else
		_Draw_CategoryBtns()
		_Show_CategoryBtns()
	EndIf

	; Show other buttons
	GUICtrlSetState($Btn_OpenFolder, $GUI_Show)
	GUICtrlSetState($hTree, $GUI_ENABLE + $GUI_SHOW)
	GUICtrlSetState($Btn_ModDownload, $GUI_HIDE)
	GUICtrlSetState($Btn_Settings, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Btn_Help, $GUI_SHOW + $GUI_ENABLE)

	; Set status bar to ready
	ControlSetText($hMain, "", $iStatus, "Ready")
	ControlSetText($hMain, "", $iStatusText, "...")

EndFunc   ;==>_Btn_FullFolderTree

Func _Btn_FullNamesTree()

	; Hide info view if visible
	_Hide_InfoIcons()

	; Hide settings if visible
	_HideDraw_Settings_UI()

	ControlSetText($hMain, "", $iStatus, "Busy")
	ControlSetText($hMain, "", $iStatusText, "Loading tree ...")
	GUICtrlSetState($Btn_Settings, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Btn_Help, $GUI_HIDE + $GUI_DISABLE)

	Global $TVNameMode = True
	Global $TVFolderMode = False

	; Delete tree view
	_GUICtrlTreeView_Destroy($hTree)

	; Make a new tree view
	$hTree = GUICtrlCreateTreeView(25 * $Dpi, 40 * $Dpi, 400 * $Dpi, 650 * $Dpi, _
			BitOR($TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, _
			$TVS_SHOWSELALWAYS, $TVS_FULLROWSELECT), $WS_EX_CLIENTEDGE)

	; Load full file and folder named tree view
	_GUICtrlTreeView_BeginUpdate($hTree)
	GUICtrlSetBkColor($hTree, $Theme_BG_Color)
	_TreeView_Load_Branches($_Index_Path & "Trees\PartNames.tre")
	_GUICtrlTreeView_EndUpdate($hTree)


	; ------------------ Load combo box mods list

	; Read custom mod names as a list from index
	$aArray = IniReadSection(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder")
	_ArrayDelete($aArray, 0)
	Local $sList = ""

	; Iterate through all setting each one as the top level name
	For $i = 0 To UBound($aArray) - 1
		$asList = IniRead(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder", $aArray[$i][0], "[NF]1")
		If FileExists($iGameData & $aArray[$i][0]) Then

			$sList &= "|" & $asList

		Else
		EndIf
	Next

	; Show combo box
	GUICtrlSetState($hCombo, $GUI_SHOW)
	GUICtrlSetData($hCombo, $sList)
	_GUICtrlComboBox_SetEditText($hCombo, "All Mods")

	; Show category filter buttons if info view is enabled
	$info = ControlCommand($hMain, "", $Cat_Pods, "IsVisible", "")

	If $info = 1 Then
	Else
		_Draw_CategoryBtns()

		_Show_CategoryBtns()
	EndIf

	; Sor the tree view
	_GUICtrlTreeView_Sort($hTree)

	; Show other buttons
	GUICtrlSetState($hTree, $GUI_ENABLE + $GUI_SHOW)
	GUICtrlSetState($Btn_ModDownload, $GUI_HIDE)
	GUICtrlSetState($Btn_Settings, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Btn_Help, $GUI_SHOW + $GUI_ENABLE)

	; Set status bar to ready
	ControlSetText($hMain, "", $iStatus, "Ready")
	ControlSetText($hMain, "", $iStatusText, "...")


EndFunc   ;==>_Btn_FullNamesTree

Func _Btns_TreeNavigation()
	$tID = @GUI_CtrlId

	Switch $tID

		; ------------------ Tree view expand all button action

		Case $TV_Expand
			_GUICtrlTreeView_Expand($hTree)

			; ------------------ Tree view collpase all button action

		Case $TV_Collapse
			_GUICtrlTreeView_Expand($hTree, "", 0)

			; ------------------ Tree view go to top button action

		Case $Btn_TreeTop
			Send("{Home}")

			; ------------------ Tree view next branch button action

		Case $Btn_TreeNext
			Send("{Right}")

			; ------------------ Tree view previous branch button action

		Case $Btn_TreePrev
			Send("{Backspace}")

			; ------------------ Tree view go to end button action

		Case $Btn_TreeEnd
			Send("{End}")

		Case Else

	EndSwitch
EndFunc   ;==>_Btns_TreeNavigation

Func _Btns_FilterCategory()

	$BtnID = @GUI_CtrlId

	Switch $BtnID

		; ------------------ Filter category to pods button action

		Case $Cat_Pods
			_FilterCategory("Pods")
			_Disable_CategoryBtns()

			; ------------------ Filter category to fuel tanks button action

		Case $Cat_FuelTank
			_FilterCategory("FuelTank")
			_Disable_CategoryBtns()

			; ------------------ Filter category to engines button action

		Case $Cat_Engine
			_FilterCategory("Engine")
			_Disable_CategoryBtns()

			; ------------------ Filter category to control button action

		Case $Cat_Control
			_FilterCategory("Control")
			_Disable_CategoryBtns()

			; ------------------ Filter category to structural button action

		Case $Cat_Structural
			_FilterCategory("Structural")
			_Disable_CategoryBtns()

			; ------------------ Filter category to coupling button action

		Case $Cat_Coupling
			_FilterCategory("Coupling")
			_Disable_CategoryBtns()

			; ------------------ Filter category to payload button action

		Case $Cat_Payload
			_FilterCategory("Payload")
			_Disable_CategoryBtns()

			; ------------------ Filter category to aero button action

		Case $Cat_Aero
			_FilterCategory("Aero")
			_Disable_CategoryBtns()

			; ------------------ Filter category to ground button action

		Case $Cat_Ground
			_FilterCategory("Ground")
			_Disable_CategoryBtns()

			; ------------------ Filter category to thermal button action

		Case $Cat_Thermal
			_FilterCategory("Thermal")
			_Disable_CategoryBtns()

			; ------------------ Filter category to electrical button action

		Case $Cat_Electrical
			_FilterCategory("Electrical")
			_Disable_CategoryBtns()

			; ------------------ Filter category to comms button action

		Case $Cat_Communication
			_FilterCategory("Communication")
			_Disable_CategoryBtns()

			; ------------------ Filter category to science button action

		Case $Cat_Science
			_FilterCategory("Science")
			_Disable_CategoryBtns()

			; ------------------ Filter category to cargo button action

		Case $Cat_Cargo
			_FilterCategory("Cargo")
			_Disable_CategoryBtns()

			; ------------------ Filter category to utility button action

		Case $Cat_Utility
			_FilterCategory("Utility")
			_Disable_CategoryBtns()

			; ------------------ Filter category to uncategorized parts button action

		Case $Cat_UnKnown
			_FilterCategory("none")
			_Disable_CategoryBtns()


		Case Else

	EndSwitch

	; Hide mod download link icon if visible
	GUICtrlSetState($Btn_ModDownload, $GUI_HIDE)

	; Hide mod name if visible
	GUICtrlSetState($Display_ModName, $GUI_HIDE)
EndFunc   ;==>_Btns_FilterCategory

Func _Btns_Settings_()

	$nMsg = @GUI_CtrlId

	Switch $nMsg

		; ------- Rebuild button action
		Case $Btn_RebuilDB

			$t = MsgBox(4, "Reset - (App restart required)", "Are you sure you want to rebuild the database?"& @LF &"It will be rebuilt on the next launch.") ; Display confirmation

			If $t = 6 Then
				DirRemove(@ScriptDir & "\Files\Index", 1) ; If 'yes' delete the index folder
				GUIDelete($hMain)
				Exit
			ElseIf $t = 7 Then

			EndIf

			; ------- Edit settings button action
		Case $Btn_EditSetttings

			ShellExecute(@ScriptDir & "\Settings.ini") ; Load modnames.ini in the defualt editor

			; ------- Stay on top button action
		Case $Btn_OnTop

			If _Read_CheckBox($Btn_OnTop) Then
				IniWrite("Settings.ini", "Window", "StayOnTop", "Enabled") ; Enabled, set on top to active in settings
				WinSetOnTop($hMain, "", 1)

			Else

				IniWrite(@ScriptDir & "\Settings.ini", "Window", "StayOnTop", "Disabled")
				WinSetOnTop($hMain, "", 0)

			EndIf

			; ------- Remember win position button action
		Case $Btn_WinPositon

			If _Read_CheckBox($Btn_WinPositon) Then

				IniWrite("Settings.ini", "Window", "SavePosition", "Enabled") ; Save windposition enabled stated

				IniWrite("Settings.ini", "Window", "X", WinGetPos($hMain)[0])
				IniWrite("Settings.ini", "Window", "Y", WinGetPos($hMain)[1])

			Else

				IniWrite("Settings.ini", "Window", "SavePosition", "Disabled") ; Save disabled state

			EndIf

			; ------- Large UI mode action
		Case $Btn_LargeUI

			If _Read_CheckBox($Btn_LargeUI) Then

				IniWrite("Settings.ini", "Window", "LargeIcons", "Enabled") ; Save enabled state

			Else

				IniWrite("Settings.ini", "Window", "LargeIcons", "Disabled")

			EndIf

			; ------- Re-center window button action
		Case $Btn_CenterWin

			$size = WinGetClientSize($hMain, "")
			Local $y = (@DesktopHeight / 2) - ($size[1] / 2)
			Local $x = (@DesktopWidth / 2) - ($size[0] / 2)
			WinMove($hMain, "", $x, $y) ; Move main window to exact center of dekstop

			; ------- Make app shortcut button action
		Case $Btn_MakeShortCut

			Local $sFile = @ScriptDir & "\_0_.exe"
			Local $nLink = @ScriptDir & "\Cornucopia v1.0.00 β.lnk"
			Local $wDir = FileSelectFolder("dialog text", @ScriptDir & "\", $FSF_NEWDIALOG)
			Local $tTip = "Cornucopia v1.0.00 β"
			Local $Icon = $GUI_Icon

			If $wDir = "" Then
				WinActivate($hMain)
			Else

				FileCreateShortcut($sFile, $nLink, $wDir, "", $tTip, $Icon, "", "", @SW_SHOWMAXIMIZED) ; Folder selected, create a shortcut

			EndIf

			; ------- Support button action
		Case $Btn_Donate

			ShellExecute("https://www.patreon.com/KerbalApps")

		Case Else

	EndSwitch
	;	Endif
EndFunc   ;==>_Btns_Settings_

Func _Read_CheckBox($idControlID)

	; Check to see if a specified check box is checked or not
	Return BitAND(GUICtrlRead($idControlID), $GUI_CHECKED) = $GUI_CHECKED

EndFunc   ;==>_Read_CheckBox

Func _LoadSettingsIni()

	; ------------------ Read stay on top status from settings.ini

	GUICtrlSetState($Btn_OnTop, $GUI_UNCHECKED)
	$iState = IniRead(@ScriptDir & "\Settings.ini", "Window", "StayOnTop", "Disabled")

	If $iState = "Enabled" Then

		GUICtrlSetState($Btn_OnTop, $GUI_CHECKED) ; Mark as checked in main window if enabled

	EndIf

	; ------------------ Read save window position status from settings.ini

	GUICtrlSetState($Btn_WinPositon, $GUI_UNCHECKED)
	$iState = IniRead(@ScriptDir & "\Settings.ini", "Window", "SavePosition", "Enabled")

	If $iState = "Enabled" Then

		GUICtrlSetState($Btn_WinPositon, $GUI_CHECKED)

	EndIf

	; ------------------ Read large icon mode status from settings.ini

	GUICtrlSetState($Btn_LargeUI, $GUI_UNCHECKED)
	$iState = IniRead(@ScriptDir & "\Settings.ini", "Window", "LargeIcons", "Disabled")

	If $iState = "Enabled" Then

		GUICtrlSetState($Btn_LargeUI, $GUI_CHECKED)

	EndIf

EndFunc   ;==>_LoadSettingsIni

;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                      TREE VIEW MOUSE CLICKED
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

Func _ModName_Selected()
	WinSetTitle($hMain, "", "Cornucopia β")

	; Hide settings if visible
	_HideDraw_Settings_UI()

	; Show open folder button
	GUICtrlSetState($Btn_OpenFolder, $GUI_SHOW)

	; Hide icons if visible
	ControlSetText($hMain, "", $Display_ModName, "-")

	$info1 = ControlCommand($hMain, "", $Display_PartName, "IsVisible", "")
	$info2 = ControlCommand($hMain, "", $Display_ModName, "IsVisible", "")
	$info3 = ControlCommand($hMain, "", $Btn_ModDownload, "IsVisible", "")

	If $info1 = 1 Or $info2 = 1 Or $info3 = 1 Then
		_Hide_InfoIcons()
		_Hide_Dividers()
	Else

	EndIf

	If $TVFolderMode = True Then

		If $ModNameCheck = GUICtrlRead(@GUI_CtrlId, 1) Then

			ControlSetText($hMain, "", $iStatusText, "..\" & $ModNameCheck)

		Else

			; Ignore if a blank name is returned while loading
			If GUICtrlRead(@GUI_CtrlId, 1) = 0 Then
				;Ignore
			Else
				;
			EndIf

			$tID = @GUI_CtrlId
			GUICtrlSetState($tID, BitOR($GUI_EXPAND, 0)) ; Expand selection on click
			$idMsg = GUICtrlRead(@GUI_CtrlId, 1)
			Global $iSelectedFolder = $idMsg

			; ------------------ Find root folder and check for .version file

			Local $cArray[0]

			$cArray = $PartCFGList ; Global list of part config paths

			; Iterate through
			For $i = 0 To UBound($cArray) Step 1
				If $i = UBound($cArray) Then ExitLoop

				; If the listed path matches the current selection then
				If StringInStr($cArray[$i], $iSelectedFolder) Then

					; Get the path to the mods root folder
					_ModNameFromCFGPath($cArray[$i])

					; Search mod folder for .version file
					_CheckForDownloadURL($ModFolderPath)

					; Get full mod name for mod from index based on the currently selected mods path
					$ModName = IniRead(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder", $iSelectedFolder, $iSelectedFolder)
					ExitLoop

				Else

					; Use the true folder name as the path
					$ModName = $iSelectedFolder
					Global $iFoldername = $iSelectedFolder
					Global $dFolderName = $iSelectedFolder

					; Search mod folder for .version file
					_CheckForDownloadURL($iGameData & $iSelectedFolder)

				EndIf

			Next

			; Set the mods status to has been checked
			$ModNameCheck = $ModName

			; Get path based on true folder name
			_PathFromRealName()

			; Replace path string up to ..\GameData to shorten the path (for on screen display)
			$iPath = StringReplace($iCurrentSelectionPath, $iGameData, "..\")

			; Show shortened path in status bar
			ControlSetText($hMain, "", $iStatusText, $iPath)

			; Show background image
			GUICtrlSetState($_BG_Pic, $GUI_SHOW)

			; Hide loading image
			GUICtrlSetState($_BG_Loading_Pic, $GUI_HIDE)

			; Show mod name
			GUICtrlSetState($Display_ModName, $GUI_SHOW)

			; Set mod names tooltip
			;ControlSetText($hMain, "", $Display_ModName, $ModName)
			GUICtrlSetTip($Display_ModName, "Click to search on SpaceDock", $ModName)

		EndIf

	Else

		_PathFromAltName()
		$iPath = StringReplace($iCurrentSelectionPath, $iGameData, "..\")
		ControlSetText($hMain, "", $iStatusText, $iPath)

		$tID = @GUI_CtrlId
		GUICtrlSetState($tID, BitOR($GUI_EXPAND, 0)) ; Expand selection
		$idMsg = GUICtrlRead(@GUI_CtrlId, 1)
		Global $iSelectedFolder = $idMsg

		; Set mod folder name to current selection
		Global $ModName = $iSelectedFolder

		; Hide loading image
		GUICtrlSetState($_BG_Loading_Pic, $GUI_HIDE)
		; Show background image
		GUICtrlSetState($_BG_Pic, $GUI_SHOW)

		; Show mod name
		$info = ControlCommand($hMain, "", $Display_ModName, "IsVisible", "")

		If $info = 1 Then
		Else
			GUICtrlSetState($Display_ModName, $GUI_SHOW)
		EndIf

		; ------------------ Get part count for current mod
		; Get current mods found part count
		$mPartCount = IniRead($_Index_Path & "_Index_.ini", "ModPartCounts", $ModName, "[NOT FOUND] 6")

		; Add part count to mod as displayed on screen
		ControlSetText($hMain, "", $Display_ModName, "-")
		ControlSetText($hMain, "", $Display_ModName, StringStripWS($ModName, 1))
		GUICtrlSetTip($Display_ModName, "Click to search on SpaceDock", StringStripWS($ModName, 1) & " - [ " & $mPartCount & " Parts ]")



		; Find currently selected mods root folder
		$TreeSelection = _GUICtrlTreeView_GetTree($hTree, $iSelectedFolder)
		$iSelectedRoot = $iSelectedFolder
		Local $sNames[0][0]

		; Read custom mod names as a list from ini
		$sNames = IniReadSection(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder")

		; Iterate through
		For $i = 0 To $sNames[0][0] Step 1

			; When a match is found set global string of name to be displayed
			If StringInStr($sNames[$i][1], StringStripWS($iSelectedRoot, 1)) Then

				Global $dFolderName = StringStripWS($iSelectedRoot, 1) ;Displayed Name
				Global $ModNameOld = $sNames[$i][0] ; True name

				ExitLoop

			EndIf

		Next

		; ------------------ Find root folder and check for .version file

		; Search config path list for current mods full path
		For $i = 0 To UBound($PartCFGList) Step 1
			If $i = UBound($PartCFGList) Then
				$ModFolderPath = $iGameData & $ModNameOld
				ExitLoop
			Else
				If StringRegExp($PartCFGList[$i], $ModNameOld) Then
					_ModNameFromCFGPath($PartCFGList[$i])
					ExitLoop
				EndIf

			EndIf
		Next

		; When a match is found check for .version file
		_CheckForDownloadURL($ModFolderPath)
		ControlSetText($hMain, "", $iStatus, "Modfolder")

		; Set mod as has been checked
		$ModNameCheck = $ModName

	EndIf

	;EndIf

EndFunc   ;==>_ModName_Selected

Func _SubFolder_Selected()
	WinSetTitle($hMain, "", "Cornucopia β")

	$tID = @GUI_CtrlId
	Switch $tID

		; App close event
		Case $GUI_EVENT_CLOSE

			; Check if save window position is active
			$iState = IniRead(@ScriptDir & "\Settings.ini", "Window", "SavePosition", "Enabled")

			If $iState = "Enabled" Then

				; If enabled then save current windos x and y positions to settings.ini
				IniWrite("Settings.ini", "Window", "X", WinGetPos($hMain)[0])
				IniWrite("Settings.ini", "Window", "Y", WinGetPos($hMain)[1])
			Else

			EndIf

			; Exit actiond
			GUIDelete($hMain)
			Exit

		Case Else

	EndSwitch

	; Hide settings if visible
	_HideDraw_Settings_UI()

	; Show type as subfolder on status bar
	ControlSetText($hMain, "", $iStatus, "Subfolder")

	; Retreive path for current selection
	If $TVFolderMode = False Then
		_PathFromAltName()
		$iPath = StringReplace($iCurrentSelectionPath, $iGameData, "..\")
		ControlSetText($hMain, "", $iStatusText, $iPath)

	Else

		_PathFromRealName()
		$iPath = StringReplace($iCurrentSelectionPath, $iGameData, "..\")
		ControlSetText($hMain, "", $iStatusText, $iPath)

	EndIf

	; Set short path for display
	$iPath = StringReplace($iCurrentSelectionPath, $iGameData, "..\")
	ControlSetText($hMain, "", $iStatusText, $iPath)

	$idMsg = GUICtrlRead(@GUI_CtrlId, 1)
	Global $iSelectedFolder = $idMsg
	GUICtrlSetState($tID, BitOR($GUI_EXPAND, 0)) ; Expand selected item
	GUICtrlSetState($Btn_OpenFolder, $GUI_SHOW)
	GUICtrlSetState($Btn_EditCFG, $GUI_HIDE)
	GUICtrlSetState($Btn_ModSearch, $GUI_HIDE)

	; Hide info view and dividers if they are showing
	$info = ControlCommand($hMain, "", $Display_PartName, "IsVisible", "")

	If $info = 1 Then
		_Hide_InfoIcons()
		_Hide_Dividers()
	Else

	EndIf

	; Hide mod name if its shwing
	$info = ControlCommand($hMain, "", $Display_ModName, "IsVisible", "")
	If $info = 1 Then
	Else
		GUICtrlSetState($Display_ModName, $GUI_SHOW)
	EndIf

	GUICtrlSetState($idPreviewPic, $GUI_HIDE)
	GUICtrlSetColor($iStatusText, 0xff8000)
	GUICtrlSetTip($iStatusText, "")


EndFunc   ;==>_SubFolder_Selected

Func _Part_Selected()

	; Hide settings if showing
	_HideDraw_Settings_UI()

	$tID = @GUI_CtrlId
	$sPartName = GUICtrlRead(@GUI_CtrlId, 1)

	If Not StringInStr($sPartName, "●") Then ; If its a folder ignore

		If StringInStr($sPartName, ".cfg") Then
			Global $PartNameSelected = $sPartName
			_Read_Part_Indices($sPartName) ; Get index of file
		Else
		EndIf

	Else

		Global $PartNameSelected = $sPartName
		_Read_Part_Indices($sPartName) ; Get index of file

	EndIf

	; Show info view if hidden
	$info = ControlCommand($hMain, "", $Display_PartName, "IsVisible", "")

	If $info = 1 Then

	Else
		_Show_InfoIcons()
		_Show_Dividers()
	EndIf

	; Show background pic if hidden
	$info = ControlCommand($hMain, "", $_BG_Pic, "IsVisible", "")

	If $info = 1 Then

	Else
		GUICtrlSetState($_BG_Pic, $GUI_SHOW)

	EndIf

	; Hide loading pic if visible
	$info = ControlCommand($hMain, "", $_BG_Loading_Pic, "IsVisible", "")

	If $info = 1 Then

		GUICtrlSetState($_BG_Loading_Pic, $GUI_HIDE)

	Else
	EndIf

	; Show mod search button
	GUICtrlSetState($Btn_ModSearch, $GUI_SHOW)

	; Show slected parts name in window title
	WinSetTitle($hMain, "", $sPartName)


EndFunc   ;==>_Part_Selected

Func _Read_Part_Indices($PartName)

	; Check part name for special characters
	$PartName = _RevSwapSpecialChars($PartName)

	; Remove "● " from part name
	If StringInStr($PartName, "● ") Then

		$PartName = StringReplace($PartName, "● ", "")

	EndIf

	; Remove "|" from part name
	If StringInStr($PartName, "|") Then

		$PartName = StringReplace($PartName, "|", "")

	EndIf

	If $TVFolderMode = True Then

		; Check if the name was a duplicate 'part.cfg'
		If StringInStr($PartName, "part.cfg") Then

			If StringInStr($PartName, " (") Then

				$iNamea = StringReplace($PartName, " (", "=")
				$iNameb = StringSplit($iNamea, "=")
				$iNamec = StringReplace($iNameb[2], ")", "")
				$iNamee = $iNamec&"___part.cfg"

				$PartName = $iNamee

			Else

				$PartName = StringReplace($PartName, "part.cfg - ", "")
				$PartName = StringStripWS($PartName, 8) & "___part"
		
			Endif
		
		EndIf

		; Replace .cfg in part filename
		$iPartName = StringReplace($PartName, ".cfg", "")

		; Set global part index, from its true name
		Global $Idx = IniRead($_Index_Path & "_Index_.ini", "PartNames_Index", $iPartName, "[NOT FOUND] 1")

		; Set global part path index
		Global $Path = IniRead($_Index_Path & "_Index_.ini", "Paths_Index", $Idx, "[NOT FOUND] 2")

		; Get part info from cfg file
		_Populate_InfoView($PartName)

	Else

		; Set global part index, from its custom name
		Global $Idx = IniRead($_Index_Path & "_Index_.ini", "Paths_AltName_Index", "(" & $PartName & ")", "[NOT FOUND] 3")

		; Set global part index
		Global $Path = IniRead($_Index_Path & "_Index_.ini", "Paths_Index", $Idx, "[NOT FOUND] 4")

		; Set the current parts full cfg path global
		Global $CurrentCfgFullPath = $Path

		; Get part info from cfg file
		_Populate_InfoView($PartName)

	EndIf


EndFunc   ;==>_Read_Part_Indices

Func _ContextMenu_Action()

	$tID = @GUI_CtrlId
	$idMsg = GUICtrlRead(@GUI_CtrlId, 1)

If $TVNameMode = True Then

	If $idMsg = "Set name" Then

		; ------------------ Show rename input box


		; Get and save old name
		$ModRoot = $ModNameOld
		$ModNameOld = IniRead(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder", $ModNameOld, $ModNameOld)

		; Wait for user input
		Do
			; Show input box for new name with old name as default text
			$input = InputBox(" Default : " & $ModNameOld, "Replace with :", $ModNameOld, "", 220 * $Dpi, 110 * $Dpi)

			If @error = 1 Then
				; Canceled, return to main UI
				ExitLoop
			EndIf

		Until $input

		If $input = "" Then

			; Canceled, return to UI


		Else

			; ------------------ Rename top level folder actions

			; Write new name to ini
			IniWrite(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder", $ModRoot, $input)

			; Remove old reveresed entry from ini
			IniDelete(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder_Rev", $ModNameOld)
			; Write new name to ini reversed section
			IniWrite(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder_Rev", $input, $ModRoot)

			; Rename tree file to new name
			FileMove($_Index_Path & "Trees\NamedPaths\" & $ModNameOld & ".tre", _
					$_Index_Path & "Trees\NamedPaths\" & $input & ".tre")

			; Rename top level folder inside tree file to new mod name
			_FileWriteToLine($_Index_Path & "Trees\NamedPaths\" & $input & ".tre", 1, "# " & $input, True)

			; Get current mods part count
			$pCount = IniRead($_Index_Path & "_Index_.ini", "ModPartCounts", $ModNameOld, "-")
			; Delete old part count entry
			IniDelete($_Index_Path & "_Index_.ini", "ModPartCounts", $ModNameOld)
			; Write new name with part count to ini
			IniWrite($_Index_Path & "_Index_.ini", "ModPartCounts", $input, $pCount)


			; ------------------ Rename top level folder inside main tree file


			Local $sTree[0]

			; Read full tree to array
			$TreeFile = $_Index_Path & "Trees\PartNames.tre"
			_FileReadToArray($TreeFile, $sTree, 0)

			; Search array for current mod name
			For $i = 1 To UBound($sTree) - 1

				$Branch = $sTree[$i]

				If StringInStr($Branch, $ModNameOld) Then

					; When found, replace with new mod name
					$Branch = StringReplace($Branch, $Branch, $input)
					$Branch = "# " & $Branch
					$Line = $i + 1
					_FileWriteToLine($TreeFile, $Line, $Branch, True)

					ExitLoop

				EndIf

			Next

			; Reload tree view
			_Btn_FullNamesTree()

		EndIf

	Else

	EndIf

Else

ToolTip("Use other tree view to set mod names!", MouseGetPos()[0] +25, MouseGetPos()[1])
Sleep(1500)
ToolTip("")


Endif

EndFunc   ;==>_ContextMenu_Action

;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                        SEARCH AND FILTER
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

Func _SearchListView($sValue)


	; Make array from current tree view, adding only values containing search string
	Local $aPruned[0]
	For $i = 0 To UBound($hTreeArray) - 1

		If StringInStr($hTreeArray[$i], $sValue) Then
			_ArrayAdd($aPruned, $hTreeArray[$i])
		EndIf

	Next

	; If array is empty then nothing was found
	If UBound($aPruned) = 0 Then

		; UI out - Nothing found message tooltip
		ToolTip("")
		ToolTip(GUICtrlRead($SearchInput), MouseGetPos()[0] - 60, MouseGetPos()[1] - 100, "Not found!")
		Sleep(500)
		ToolTip("")
	Else

		; Delete the tree view
		_GUICtrlTreeView_Destroy($hTree)

		; Create new tree view
		$hTree = GUICtrlCreateTreeView(25 * $Dpi, 40 * $Dpi, 400 * $Dpi, 650 * $Dpi, _
				BitOR($TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, _
				$TVS_SHOWSELALWAYS, $TVS_FULLROWSELECT), $WS_EX_CLIENTEDGE)

		; Iterate through found items and add them to the new tree
		_GUICtrlTreeView_BeginUpdate($hTree)
		For $i = 0 To UBound($aPruned)
			If $i = UBound($aPruned) Then ExitLoop
			GUICtrlCreateTreeViewItem($aPruned[$i], $hTree)
			; On list click function
			GUICtrlSetOnEvent(-1, "_Part_Selected")

			; Mark deprecated parts
			If StringInStr($aPruned[$i], "Deprecated") Or _
					StringInStr($aPruned[$i], "Obsolete") Then
				GUICtrlSetColor(-1, 0x800000)

			Else
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)
			EndIf

		Next
		_Hide_CategoryBtns()
		_Hide_InfoIcons()
		_GUICtrlTreeView_EndUpdate($hTree)

		; Hide mod download button if its visible
		GUICtrlSetState($Btn_ModDownload, $GUI_HIDE)

	EndIf


EndFunc   ;==>_SearchListView

Func _Search_Tree()


	ControlSetText($hMain, "", $iStatus, "Searching ...")
	_GUICtrlTreeView_BeginUpdate($hTree)

	; Search current treee view for string
	$hTMP = _GUICtrlTreeView_FindItem($hTree, GUICtrlRead($SearchInput), True)

	; If found then the ensure its visible and select it
	If $hTMP Then
		_GUICtrlTreeView_SelectItem($hTree, $hTMP)
		_GUICtrlListView_ClickItem($hTree, $hTMP, "left")
		_GUICtrlTreeView_GetTree($hTree, $hTMP)
		GUICtrlSetState(-1, BitOR($GUI_EXPAND, $GUI_DEFBUTTON))

	EndIf
	_GUICtrlTreeView_EndUpdate($hTree)
	ControlSetText($hMain, "", $iStatus, "Ready ...")

EndFunc   ;==>_Search_Tree


Func _FilterCategory($Category)

	Global $hTreeArray = ""
	Global $hTreeArray[0]

	ControlSetText($hMain, "", $iStatus, "Filtering ...")
	ToolTip("Filtering ... ", MouseGetPos()[0] - 60, MouseGetPos()[1] - 30)
	If FileExists(@TempDir & "\C_Categories1.tmp") Then FileDelete(@TempDir & "\C_Categories1.tmp")
	If FileExists(@TempDir & "\C_Categories2.tmp") Then FileDelete(@TempDir & "\C_Categories2.tmp")
	Local $sCatName = $Category

	; Get all parts in tree as an array
	$aReturn = _FilterCategory_ScanTree($hTree)

	; Ieterate through array and fetch each parts category
	For $i = 0 To UBound($aReturn)
		If $i = UBound($aReturn) Then ExitLoop

		If StringInStr($aReturn[$i], "● ") Then

			; Remove extra characters to reveal true name
			$PartName = StringReplace($aReturn[$i], "● ", "")
			$Idx = IniRead($_Index_Path & "_Index_.ini", "Paths_AltName_Index", "(" & $PartName & ")", "[NOT FOUND] 8")
			$Cat = IniRead($_Index_Path & "_Index_.ini", "PART_CATEGORIES", $Idx, "[NOT FOUND] 9")

			; Show the name in the status bar
			ControlSetText($hMain, "", $iStatusText, $PartName)
			FileWrite(@TempDir & "\C_Categories1.tmp", $Cat & "=" & $PartName & @LF)

		Else

			; Use .cfg name instead
			If StringInStr($aReturn[$i], ".cfg") Then

				If StringInStr($aReturn[$i], " - ") Then
					$iNamea = StringReplace($aReturn[$i], " - ", "=")
					$iNameb = StringSplit($iNamea, "=")
					$iNamec = $iNameb[2]&"___part.cfg"
				
					$cfgFile = $iNamec
				
				Else
					$cfgFile = $aReturn[$i]
				Endif

				$iPartName = StringReplace($cfgFile, ".cfg", "")
				$Idx = IniRead($_Index_Path & "_Index_.ini", "PartNames_Index", $iPartName, "[NOT FOUND] 10")
				$Cat = IniRead($_Index_Path & "_Index_.ini", "PART_CATEGORIES", $Idx, "[NOT FOUND] 11")

				ControlSetText($hMain, "", $iStatusText, $cfgFile)
				FileWrite(@TempDir & "\C_Categories1.tmp", $Cat & "=" & $cfgFile & @LF)

			EndIf

		EndIf
	Next

	Local $aCats[0], $Count = 0
	_FileReadToArray(@TempDir & "\C_Categories1.tmp", $aCats)
	FileDelete(@TempDir & "\C_Categories1.tmp")

	; Search through each part in list for the given category
	For $i = 0 To UBound($aCats)
		If $i = UBound($aCats) Then ExitLoop
		If StringInStr($aCats[$i], $sCatName & "=") Then
			$iCat = StringReplace($aCats[$i], $sCatName & "=", "")
			FileWrite(@TempDir & "\C_Categories2.tmp", $iCat & @LF)
			; If match found then increase the count
			$Count += 1
		EndIf

		If StringInStr($aCats[$i], "-1=") & $sCatName = "none" Then
			$iCat = StringReplace($aCats[$i], $sCatName & "-1=", "")
			FileWrite(@TempDir & "\C_Categories2.tmp", $iCat & @LF)
			$Count += 1
		EndIf

	Next

	; If nothing was found then
	If $Count = 0 Then
		ControlSetText($hMain, "", $iStatusText, "Nothing found!")
		Global $ListViewMode = False

		ToolTip("Nothing found!", MouseGetPos()[0] - 60, MouseGetPos()[1] - 30)
		Sleep(350)
		ToolTip("")
	Else

		; Hide info view and dividers if visible
		$info = ControlCommand($hMain, "", $Display_PartName, "IsVisible", "")

		If $info = 1 Then
			_Hide_InfoIcons()
			_Hide_Dividers()
		EndIf

		; Hide settings if visible
		_HideDraw_Settings_UI()

		; Delete the tree view
		_GUICtrlTreeView_Destroy($hTree)

		; Create a new tree view
		$hTree = GUICtrlCreateTreeView(25 * $Dpi, 40 * $Dpi, 400 * $Dpi, 650 * $Dpi, _
				BitOR($TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, _
				$TVS_SHOWSELALWAYS, $TVS_FULLROWSELECT), $WS_EX_CLIENTEDGE)
		Local $sTemp[0], $iTemp
		_GUICtrlTreeView_BeginUpdate($hTree)

		; Read list of parts with the selected category to an array
		_FileReadToArray(@TempDir & "\C_Categories2.tmp", $sTemp)
		FileDelete(@TempDir & "\C_Categories2.tmp")
		_ArrayDelete($sTemp, 0)
		$sTemp = _ArrayUnique($sTemp)
		$PartCount = $sTemp[0]
		_ArrayDelete($sTemp, 0)
		_ArraySort($sTemp)

		; Set the part names in the new tree
		For $s = 0 To UBound($sTemp)
			If $s = UBound($sTemp) Then ExitLoop
			FileWrite(@TempDir & "\C_Categories2.tmp", $sTemp[$s] & @LF)
		Next
		Local $hFile = FileOpen(@TempDir & "\C_Categories2.tmp")
		While 1
			$Text = FileReadLine($hFile)
			If @error = -1 Then ExitLoop
			$Text = StringReplace($Text, "|", "")
			If StringInStr($Text, "___") Then

				$iName = StringSplit($Text, "___")
				GUICtrlCreateTreeViewItem("● part.cfg (" & $iName[1] & ")", $hTree)
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)
				_ArrayAdd($hTreeArray, "● part.cfg (" & $iName[1] & ")")

			Else

				GUICtrlCreateTreeViewItem("● " & $Text, $hTree)
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)
				_ArrayAdd($hTreeArray, "● " & $Text)

			EndIf

			; Mark deprecated parts
			If StringInStr($Text, "Deprecated") Or _
					StringInStr($Text, "Obsolete") Then
				GUICtrlSetColor(-1, 0x800000)

			Else
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)
			EndIf
			GUICtrlSetOnEvent(-1, "_Part_Selected")

		WEnd

		FileDelete(@TempDir & "\C_Categories2.tmp")
		_GUICtrlTreeView_Sort($hTree)
		_GUICtrlTreeView_EndUpdate($hTree)

		ToolTip("Done! ", MouseGetPos()[0] - 60, MouseGetPos()[1] - 30)
		Sleep(350)
		ToolTip("")
		Global $ListViewMode = True
	EndIf

	ControlSetText($hMain, "", $iStatusText, "...")
	ControlSetText($hMain, "", $iStatus, "Ready ...")

EndFunc   ;==>_FilterCategory

Func _FilterCategory_ScanTree($hTree)

	; List each item in tree
	Local $hListView = GUICtrlGetHandle($hTree)
	Local $iItemCount = _GUICtrlTreeView_GetCount($hListView)
	Local $aReturn[$iItemCount + 1] = [$iItemCount]
	Local $hItem = _GUICtrlTreeView_GetFirstItem($hListView)

	; Add to array
	If $iItemCount And $hItem Then
		$aReturn[1] = _GUICtrlTreeView_GetText($hListView, $hItem)
		For $i = 2 To $iItemCount
			$hItem = _GUICtrlTreeView_GetNext($hListView, $hItem)
			$aReturn[$i] = _GUICtrlTreeView_GetText($hListView, $hItem)
		Next
	EndIf

	; Return the array
	Return SetError(Int($aReturn[0] = 0), 0, $aReturn)
EndFunc   ;==>_FilterCategory_ScanTree

;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                         PATHS AND NAMING
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

Func _PathFromRealName()

	; Get current selection as tree path
	$tPath = _GUICtrlTreeView_GetTree($hTree, $iSelectedFolder)

	If $tPath = "" Then
		$iPath = _GUICtrlTreeView_GetSelection($hTree)
		$aPath = _GUICtrlTreeView_GetText($hTree, $iPath)
		$tPath = $aPath
	EndIf


	; If "|" is found then its path not a root folder, or part file
	If StringInStr($tPath, "|") Then

		; Split path and set first level as root
		$iSelectedRoot = StringSplit($tPath, "|")[1]

	Else

		; Set current folder as root
		$iSelectedRoot = $iSelectedFolder

	EndIf

	; Search through full names list for selected mods root folder
	Local $sNames[0][0]
	$sNames = IniReadSection(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder")

	For $i = 0 To $sNames[0][0] Step 1

		If StringInStr($sNames[$i][1], StringStripWS($iSelectedRoot, 1)) Then

			Global $dFolderName = StringStripWS($iSelectedRoot, 1)     ;Displayed Name
			Global $iFoldername = $sNames[$i][0]     ; True name

			$aPath = _GUICtrlTreeView_GetTree($hTree, $iSelectedFolder)
			$aPath = StringSplit($aPath, "|")

			ExitLoop

		EndIf

	Next

	; Get current selections path from tree view
	$tPath = _GUICtrlTreeView_GetTree($hTree, $iSelectedFolder)

	If $tPath = "" Then
		$iPath = _GUICtrlTreeView_GetSelection($hTree)
		$aPath = _GUICtrlTreeView_GetText($hTree, $iPath)
		$tPath = $aPath
	EndIf

	; Add mod root folder to full path to GameData
	$sPath = $iGameData & StringReplace(StringStripWS($tPath, 8), "|", "\")

	; If a part name is selected then
	If StringInStr($sPath, ".cfg") Then

		; Split the full path and return only path up to mods root/top level
		Local $aPathSplit = _PathSplit($CurrentCfgFullPath, $sDrive, $sDir, $sFileName, $sExtension)

		$sPath = $sDrive & $sDir

	EndIf

	; Set global full path to mod folder
	Global $iCurrentSelectionPath = $sPath

EndFunc   ;==>_PathFromRealName

Func _PathFromAltName()

	If $iSelectedFolder = "" Then
		; Nothing was selected, ignore
	Else
		$iSelectedFolder = _RevSwapSpecialChars($iSelectedFolder)
	EndIf

	; Get current selections path from tree
	$tPath = _GUICtrlTreeView_GetTree($hTree, $iSelectedFolder)

	If $tPath = "" Then
		$iPath = _GUICtrlTreeView_GetSelection($hTree)
		$aPath = _GUICtrlTreeView_GetText($hTree, $iPath)
		$tPath = $aPath
	EndIf

	; If a part name was selected then split set the current slection path
	If StringInStr($tPath, "●") Then

		Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
		Local $aPathSplit = _PathSplit($CurrentCfgFullPath, $sDrive, $sDir, $sFileName, $sExtension)
		$sPath = $sDrive & $sDir
		Global $iCurrentSelectionPath = $sPath

	Else

		; If a folder path was selected then
		If StringInStr($tPath, "|") Then

			; Look for the root path based on the full name as displayed
			$tPath = _GUICtrlTreeView_GetTree($hTree, $iSelectedFolder)
			$ModFolder = IniRead(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder_Rev", $iSelectedFolder, "[nf1a]")
			$aTpath = StringSplit($tPath, "|")
			$aPath = StringReplace($tPath, StringSplit($tPath, "|")[1], $ModFolder)
			$aPath = $iGameData & StringReplace($aPath, "| ", "\")
			; If found then set the path
			$iCurrentSelectionPath = $aPath

			If StringInStr($iCurrentSelectionPath, "[nf1a]") Then

				; If not found then re-add the root folder to the path and check again
				$tPath = _GUICtrlTreeView_GetTree($hTree, $iSelectedFolder)
				$aTpath = StringSplit($tPath, "|")[1]
				$ModFolder = IniRead(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder_Rev", $aTpath, "[nf1b]")
				$aPath = StringReplace($iCurrentSelectionPath, "[nf1a]", $ModFolder)

			EndIf

			; Set the global path for the current selection
			Global $iCurrentSelectionPath = $aPath

		Else

			; Use the displayed name to find the root path
			$tPath = _GUICtrlTreeView_GetTree($hTree, $iSelectedFolder)

			If $tPath = "" Then
				$iPath = _GUICtrlTreeView_GetSelection($hTree)
				$aPath = _GUICtrlTreeView_GetText($hTree, $iPath)
				$tPath = $aPath
			EndIf

			$iName = IniRead(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder_Rev", StringStripWS($tPath, 1), "[nf1]")
			; Set the global path for the current selection

			Global $iCurrentSelectionPath = $iGameData & $iName

		EndIf

	EndIf

EndFunc   ;==>_PathFromAltName

Func _ModNameFromCFGPath($Path)

	Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""

	; Split the path at every \ into an array
	Local $aPathSplit = _PathSplit($Path, $sDrive, $sDir, $sFileName, $sExtension)
	Local $aPath = StringSplit($aPathSplit[2], "\")

	; Search through array for GameData string
	For $i = 0 To UBound($aPath)
		If $i = UBound($aPath) Then ExitLoop
		If StringInStr($aPath[$i], "Gamedata") Then

			; Mod root folder is next after GameData so
			Local $ModFolder = $aPath[$i + 1]
			; Fetch the mod name based on its root folder
			Global $ModName = IniRead(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder", $ModFolder, $ModFolder)

		EndIf

	Next

	; Remove other levels in path array to reveal the short path for display
	_ArrayDelete($aPathSplit, 0)
	_ArrayDelete($aPathSplit, 0)
	_ArrayDelete($aPathSplit, 1)
	_ArrayDelete($aPathSplit, 2)
	_ArrayDelete($aPathSplit, 1)
	Local $sShortPath = StringReplace($aPathSplit[0], "\GameData\", "=")

	; Set global for short path to display
	Global $cfgShortPath = "..\" & StringSplit($sShortPath, "=")[2] & $sFileName & $sExtension

	; Set KSP root folder path
	Global $KSPRootPath = $sDrive & StringSplit($sShortPath, "=")[1] & "\"

	; Set global currently selected mod folder path
	Global $ModFolderPath = $sDrive & StringSplit($sShortPath, "=")[1] & "\GameData\" & $ModFolder & "\"

EndFunc   ;==>_ModNameFromCFGPath

Func _INIRevModNames()

	Local $mNames
	; Read list of named mods to array
	$mNames = IniReadSection(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder")

	; Delete old mods names reversed section in ini
	IniDelete(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder_Rev")

	; Iterate through array and re-write new values to ini reversed
	For $i = 1 To $mNames[0][0] Step 1
		If $i = UBound($mNames) Then ExitLoop

		IniWrite(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder_Rev", $mNames[$i][1], $mNames[$i][0])

	Next
	$mNames = ""

EndFunc   ;==>_INIRevModNames

Func _SortModNames()

	Local $mNames, $mList, $sList[0][0]

	; Read list of mod names to array from ini
	$mNames = IniReadSection(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder")

	; Delete the list of mods name from the ini
	IniDelete(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder")
	$mList = $mNames
	;_ArrayDelete($mList, 0)
	_ArrayColDelete($mList, 0)

	; Sort list
	_ArraySort($mList)

	; Iterate through sorted list and write values to ini as they are found
	For $i = 0 To UBound($mList) Step 1
		If $i = UBound($mList) Then ExitLoop

		For $j = 1 To UBound($mNames) Step 1
			If $j = UBound($mNames) Then ExitLoop


			If StringInStr($mNames[$j][1], $mList[$i][0]) Then

				IniWrite(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder", $mNames[$j][0], $mNames[$j][1])
			Else

			EndIf
		Next
	Next
	$mList = ""
	$mNames = ""
	$sList = ""
EndFunc   ;==>_SortModNames

Func _SwapSpecialChars($String)
	Local $cName

	If StringInStr($String, "(R)") Then
		$cName = StringReplace($String, "(R)", "®")
		$String = $cName
	EndIf

	If StringInStr($String, "(TM)") Then
		$cName = StringReplace($String, "(TM)", "™")
		$String = $cName
	EndIf
	Return $String
EndFunc   ;==>_SwapSpecialChars

Func _RevSwapSpecialChars($String)
	Local $cName
	If StringInStr($String, "®") Then
		$cName = StringReplace($String, "®", "(R)")
		$String = $cName
	EndIf

	If StringInStr($String, "™") Then
		$cName = StringReplace($String, "™", "(TM)")
		$String = $cName
	EndIf
	Return $String
EndFunc   ;==>_RevSwapSpecialChars

;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                          CONFIG PARSING
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

Func _Populate_InfoView($PartNameSelected)

	; Show info view if hidden
	$info = ControlCommand($hMain, "", $Display_PartName, "IsVisible", "")

	If $info = 1 Then
	Else
		_Show_InfoIcons()

	EndIf

	Global $iCurrentCFGFullPath = $Path
	$Category = IniRead($_Index_Path & "_Index_.ini", "PART_CATEGORIES", $Idx, $Idx)
	ControlSetText($hMain, "", $iStatus, "Working ...")

	ControlSetText($hMain, "", $iStatusText, "Fetching information ...")

	; Parse selected .cfg and return globals of found values
	_CFG_Find_Info($Path, $Idx)

	;----------------- DISPLAY MOD NAME
	_ModNameFromCFGPath($Path)

	If GUICtrlRead($Display_ModName, 1) = $ModName Then
		;Already set, ignore.
	Else
		ControlSetText($hMain, "", $Display_ModName, $ModName)
		GUICtrlSetTip($Display_ModName, "Click to search on SpaceDock", $ModName)
		GUICtrlSetBkColor($Display_ModName, $GUI_BKCOLOR_TRANSPARENT)
		_CheckForDownloadURL($ModFolderPath)

	EndIf

	;----------------- DISPLAY PART NAME

	If StringInStr($PartNameSelected, "___") Then
	$PartNameSelected = $PartNameSelected&".cfg"
	Endif
	
	If StringInStr($PartNameSelected, ".CFG") Then

		$iPartName = StringReplace($PartNameSelected, ".cfg", "")

		$Idx = IniRead($_Index_Path & "_Index_.ini", "PartNames_Index", $iPartName, "[NOT FOUND] 5")
		$iName = IniRead($_Index_Path & "_Index_.ini", "PART_NAMES", $Idx, "[NOT FOUND] 6")
		$iName = _SwapSpecialChars($iName)
		
		ControlSetText($hMain, "", $Display_PartName, $iName)
		GUICtrlSetBkColor($Display_PartName, $GUI_BKCOLOR_TRANSPARENT)

		ControlSetText($hMain, "", $iStatus, $Category)

	Else

		$PartNameSelected = _SwapSpecialChars($PartNameSelected)

		ControlSetText($hMain, "", $Display_PartName, $PartNameSelected)
		GUICtrlSetBkColor($Display_PartName, $GUI_BKCOLOR_TRANSPARENT)

		ControlSetText($hMain, "", $iStatus, $Category)

	EndIf

	;----------------- DISPLAY DESCRIPTION

	$_Description = IniRead($PartIniFile, "PartInfo", "Description", "-")
	
	If $_Description == "-" Then

		_GUICtrlEdit_SetText($iDescription, " ")
		GUICtrlSetState($iDescription, $GUI_HIDE + $GUI_DISABLE)

	Else

		If StringLen($_Description) > 450 Then ; Truncate very long descriptions

			$Description = StringLeft($_Description, 450)&" ..."

		Else

		$Description = $_Description

		Endif

		GUICtrlSetState($iDescription, $GUI_SHOW + $GUI_ENABLE)
		_GUICtrlEdit_SetText($iDescription, $Description)

	Endif


	;----------------- DISPLAY CATEGORY

	$_Category = "-"
	$_Category = IniRead($PartIniFile, "PartInfo", "category", "-")

	If GUICtrlRead($Display_Category, 1) = $_Category Then
		;Already set, ignore.
	Else

		GUICtrlSetData($Display_Category, $_Category)

	EndIf

	;----------------- DISPLAY VESSEL TYPE

	$_VesselType = "-"

	If GUICtrlRead($Display_VesselType, 1) = $_VesselType Then
		;Already set, ignore.
	Else

		$_VesselType = IniRead($PartIniFile, "PartInfo", "vesselType", "-")
		GUICtrlSetData($Display_VesselType, $_VesselType)

	EndIf

	;----------------- DISPLAY MASS

	$_Mass = "-"
	$_Mass = IniRead($PartIniFile, "PartInfo", "mass", "-")

	If GUICtrlRead($Display_Mass, 1) = $_Mass Then
		;Already set, ignore.
	Else

		GUICtrlSetData($Display_Mass, $_Mass)

	EndIf

	;----------------- DISPLAY FUNDS

	$_EntryCost = "-"
	$_Cost = "-"
	$_EntryCost = IniRead($PartIniFile, "PartInfo", "entryCost", "-")
	$_Cost = IniRead($PartIniFile, "PartInfo", "cost", "-")


	If GUICtrlRead($Display_Funds, 1) = $_Cost & " (" & $_EntryCost & ")" Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Funds, $_Cost & " (" & $_EntryCost & ")")
	EndIf

	;----------------- DISPLAY CREW CAPACITY

	$_CrewCapacity = "-"
	$_CrewCapacity = IniRead($PartIniFile, "PartInfo", "CrewCapacity", "-")

	If GUICtrlRead($Display_CrewCapacity, 1) = $_CrewCapacity Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_CrewCapacity, $_CrewCapacity)
	EndIf

	;----------------- DISPLAY MAX TEMP

	$_MaxTemp = "-"
	$_MaxTemp = IniRead($PartIniFile, "PartInfo", "maxTemp", "-")

	If GUICtrlRead($Display_Temp, 1) = $_MaxTemp Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Temp, $_MaxTemp)
	EndIf

	;----------------- DISPLAY CRASH TOLERENCE


	$_CrashTolerance = "-"
	$_CrashTolerance = IniRead($PartIniFile, "PartInfo", "crashTolerance", "-")

	If GUICtrlRead($Display_Tol, 1) = $_CrashTolerance Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Tol, $_CrashTolerance)
	EndIf

	;----------------- DISPLAY BREAKING FORCE


	$_BreakingForce = "-"
	$_BreakingForce = IniRead($PartIniFile, "PartInfo", "breakingForce", "-")

	If GUICtrlRead($Display_BreakingForce, 1) = $_BreakingForce Then
		;Already set, ignore.
	Else

		GUICtrlSetData($Display_BreakingForce, $_BreakingForce)
	EndIf

	;----------------- DISPLAY BUOYANCY

	$_Buoyancy = "-"
	$_Buoyancy = IniRead($PartIniFile, "PartInfo", "buoyancy", "-")

	If GUICtrlRead($Display_Buoy, 1) = $_Buoyancy Then
		;Already set, ignore.
	Else

		GUICtrlSetData($Display_Buoy, $_Buoyancy)
	EndIf

	;----------------- DISPLAY DRAG

	$_Maximum_Drag = "-"
	$_Minimum_Drag = "-"
	$_Maximum_Drag = IniRead($PartIniFile, "PartInfo", "maximum_drag", "-")
	$_Minimum_Drag = IniRead($PartIniFile, "PartInfo", "minimum_drag", "-")


	If GUICtrlRead($Display_Drag, 1) = $_Maximum_Drag & " (" & $_Minimum_Drag & ")" Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Drag, $_Maximum_Drag & " (" & $_Minimum_Drag & ")")
	EndIf



	;----------------- DISPLAY TECH REQUIRED (TOOLTIP)
	$_TechRequired = IniRead($PartIniFile, "PartInfo", "TechRequired", "-")
	GUICtrlSetTip($Display_PartName, $_TechRequired, "Tech required :")



	;----------------- DISPLAY RESOURCES 1 - 4

	_Populate_Resources($PartIniFile)

	If $Category = "FuelTank" Then
		$Category = "Propulsion"
	EndIf

	If $Category = $Idx Or $Category = "none" Then
		$Category = _AutoCatPreview($PartNameSelected)

	Else

	EndIf

	;----------------- DISPLAY PREVIEW PIC

	_ShowPreview($Category)
	

	ControlSetText($hMain, "", $iStatusText, $cfgShortPath)

	;----------------- DISPLAY CFG SHORT PATH

	GUICtrlSetColor($iStatusText, 0xff8000)

	; Set status bar tooltip
	GUICtrlSetTip($iStatusText, $iCurrentCFGFullPath, " Click to copy ")

	; Show edit cfg button
	GUICtrlSetState($Btn_EditCFG, $GUI_SHOW)

	; Show open folder button
	GUICtrlSetState($Btn_OpenFolder, $GUI_SHOW)

EndFunc   ;==>_Populate_InfoView

Func _Populate_Resources($iIni)

	$iResource1 = ""
	$iAmount1 = ""
	$iMaxAmount1 = ""

	$iResource2 = ""
	$iAmount2 = ""
	$iMaxAmount2 = ""

	$iResource3 = ""
	$iAmount3 = ""
	$iMaxAmount3 = ""

	$iResource4 = ""
	$iAmount4 = ""
	$iMaxAmount4 = ""

	Local $Resource_List, $aEnum[0], $Count = 1, $rC = 1

	$Resource_List = $_Array_Resource_List

	; Iterate through array of resources, adding any found to new array
	For $i = 0 To UBound($Resource_List)
		If $i = UBound($Resource_List) Then ExitLoop

		_ArrayAdd($aEnum, $Resource_List[$i], $Count)
		$Count += 1
		For $c = 2 To 3
			_ArrayAdd($aEnum, $Resource_List[$i] & $c, $i + 1)
			$Count += 1
		Next
	Next

	; Search for 'amount' and 'max amount'
	For $i = 0 To UBound($aEnum)
		If $i = UBound($aEnum) Then ExitLoop

		Local $iResource = $aEnum[$i]
		Local $iAmount = IniRead($iIni, $aEnum[$i], "amount", "--")
		Local $iMaxAmount = IniRead($iIni, $aEnum[$i], "maxAmount", "--")

		If $iAmount = "--" Or $iMaxAmount = "--" Then
			;
		Else
			If StringInStr($iResource, "2") Or StringInStr($iResource, "3") Then
				$iResource = StringReplace($iResource, "2", "")
				$iResource = StringReplace($iResource, "3", "")
			EndIf

			; If found set as variables
			If $rC = 1 Then

				$iResource1 = $iResource
				$iAmount1 = $iAmount
				$iMaxAmount1 = $iMaxAmount

			EndIf

			If $rC = 2 Then

				$iResource2 = $iResource
				$iAmount2 = $iAmount
				$iMaxAmount2 = $iMaxAmount

			EndIf

			If $rC = 3 Then

				$iResource3 = $iResource
				$iAmount3 = $iAmount
				$iMaxAmount3 = $iMaxAmount

			EndIf

			If $rC = 4 Then

				$iResource4 = $iResource
				$iAmount4 = $iAmount
				$iMaxAmount4 = $iMaxAmount

			EndIf

			$rC += 1

		EndIf

	Next

	; If not found, reset display values
	If $iAmount1 = "" Or $iMaxAmount1 = "" Then

		$iResource1 = "-"
		$iAmount1 = "-"
		$iMaxAmount1 = "-"

	EndIf

	If $iAmount2 = "" Or $iMaxAmount2 = "" Then

		$iResource2 = "-"
		$iAmount2 = "-"
		$iMaxAmount2 = "-"

	EndIf

	If $iAmount3 = "" Or $iMaxAmount3 = "" Then

		$iResource3 = "-"
		$iAmount3 = "-"
		$iMaxAmount3 = "-"

	EndIf

	If $iAmount4 = "" Or $iMaxAmount4 = "" Then

		$iResource4 = "-"
		$iAmount4 = "-"
		$iMaxAmount4 = "-"

	EndIf

	;Display the values, if they are different

	If GUICtrlRead($Display_Resource1, 1) = $iResource1 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Resource1, $iResource1)
	EndIf

	If GUICtrlRead($Display_Amount1, 1) = $iAmount1 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Amount1, $iAmount1)
	EndIf

	If GUICtrlRead($Display_Capacity1, 1) = $iMaxAmount1 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Capacity1, $iMaxAmount1)
	EndIf

	If GUICtrlRead($Display_Resource2, 1) = $iResource2 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Resource2, $iResource2)
	EndIf

	If GUICtrlRead($Display_Amount2, 1) = $iAmount2 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Amount2, $iAmount2)
	EndIf

	If GUICtrlRead($Display_Capacity2, 1) = $iMaxAmount2 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Capacity2, $iMaxAmount2)
	EndIf

	If GUICtrlRead($Display_Resource3, 1) = $iResource3 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Resource3, $iResource3)
	EndIf

	If GUICtrlRead($Display_Amount3, 1) = $iAmount3 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Amount3, $iAmount3)
	EndIf

	If GUICtrlRead($Display_Capacity3, 1) = $iMaxAmount3 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Capacity3, $iMaxAmount3)
	EndIf

	If GUICtrlRead($Display_Resource4, 1) = $iResource4 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Resource4, $iResource4)
	EndIf

	If GUICtrlRead($Display_Amount4, 1) = $iAmount4 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Amount4, $iAmount4)
	EndIf

	If GUICtrlRead($Display_Capacity4, 1) = $iMaxAmount4 Then
		;Already set, ignore.
	Else
		GUICtrlSetData($Display_Capacity4, $iMaxAmount4)
	EndIf

EndFunc   ;==>_Populate_Resources

Func _CheckForDownloadURL($FolderPath)


	If $verCheck = $FolderPath Then

	Else

		Global $ModDownloadUrlExists = False

		; Hide the mod dowload button
		GUICtrlSetState($Btn_ModDownload, $GUI_DISABLE + $GUI_HIDE)

		Local $vFileExists, $ModDownloadUrlExists

		; Search mod folder for .version file
		$aVer = _FileListToArrayRec($FolderPath, "*.version", $FLTAR_RECUR, $FLTAR_SORT, 1)
		If @error = 0 Then
			For $i = 0 To UBound($aVer)
				If $i = UBound($aVer) Then ExitLoop

				If StringInStr($aVer[$i], ".version") Then
					Global $verFile = $FolderPath & "\" & $aVer[$i]
					$vFileExists = True
					$aVer = ""
					ExitLoop
				EndIf

			Next
		Else

		EndIf

		; If a version file is found then
		If $vFileExists = True Then
			Local $aVersionFile[0]

			; Read the version file to an array
			_FileReadToArray($verFile, $aVersionFile)

			; Iterate throught all lines until 'DOWNLOAD' is found
			For $i = 0 To UBound($aVersionFile)
				If $i = UBound($aVersionFile) Then ExitLoop

				;If download is found then
				If StringInStr($aVersionFile[$i], "DOWNLOAD") Then
					$sLink = $aVersionFile[$i]

					; Strip the line to extract the URL
					$sLink = StringReplace($sLink, "DOWNLOAD", "")
					$sLink = StringReplace($sLink, """", "+")
					$sLink = StringReplace($sLink, "+:+", "")
					$sLink = StringReplace($sLink, "+", "")
					$sLink = StringReplace($sLink, ",", "")
					$aVersionFile = ""
					$sUrl = String("""" & $sLink & """")
					$sUrl = StringReplace($sUrl, ": http", "http")
					$Url = StringStripWS($sUrl, 8)

					; Set the direct mod download link global for the currently selected mod
					Global $ModDownloadUrl = $Url
					Global $ModDownloadUrlExists = True
					If $ModDownloadUrlExists = True Then
					Else
						; Enable mod direct download button
						GUICtrlSetState($Btn_ModDownload, $GUI_ENABLE + $GUI_SHOW)
						; Set the tip, with a warning to check before clicking, since the link can be ANY valid link
						GUICtrlSetTip($Btn_ModDownload, $ModDownloadUrl & @LF & "(Check link before clicking!)", "Mod download link")
					EndIf

					ExitLoop
				EndIf

			Next

		EndIf

		$verCheck = $FolderPath

	EndIf

EndFunc   ;==>_CheckForDownloadURL

Func _CFG_Find_Info($CfgFile, $Idx)


	Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
	Local $PartName = _PathSplit($CfgFile, $sDrive, $sDir, $sFileName, $sExtension)[3]
	DirRemove(@TempDir & "\Cornucupia\Parsing\CFG\", 1)
	DirCreate(@TempDir & "\Cornucupia\Parsing\CFG\" & $Idx)

	; Create a temp file to store current part cfg info
	Global $PartIniFile = @TempDir & "\Cornucupia\Parsing\CFG\" & $Idx & "\" & $PartName & ".ini"

	FileDelete($PartIniFile)
	FileWrite($PartIniFile, "[PartInfo]" & @LF)

	Local $Key = 1
	Local $aModules

	Local $sDefault = "[Not Found]"

	; Read parts cfg file to any array
	_FileReadToArray($CfgFile, $aModules)
	_ArrayDelete($aModules, 0)


	; ------------------ Extract cost
	For $i = 0 To UBound($aModules)
		If $i = UBound($aModules) Then ExitLoop

		If StringRegExp($aModules[$i], "cost =") Or StringRegExp($aModules[$i], "cost=") Then

			If StringInStr($aModules[$i], "@") Then
				;
			Else

				$cost = StringSplit($aModules[$i], "=")[2]
				$cost = StringStripWS($cost, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

				If StringInStr($cost, "//") Then

					FileWrite($PartIniFile, "cost_RAW_TEXT=" & $cost & @LF)
					$cost = StringSplit($cost, "//")[1]
				EndIf

				FileWrite($PartIniFile, "cost=" & $cost & @LF)

			EndIf

		EndIf

		; ------------------ Extract crash tolerance
		If StringRegExp($aModules[$i], "crashTolerance =") Or StringRegExp($aModules[$i], "crashTolerance=") Then

			$crashTolerance = StringSplit($aModules[$i], "=")[2]
			$crashTolerance = StringStripWS($crashTolerance, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			FileWrite($PartIniFile, "crashTolerance=" & $crashTolerance & @LF)

		EndIf

		; ------------------ Extract crew cpacity
		If StringRegExp($aModules[$i], "CrewCapacity =") Or StringRegExp($aModules[$i], "CrewCapacity=") Then

			$CrewCapacity = StringSplit($aModules[$i], "=")[2]
			$CrewCapacity = StringStripWS($CrewCapacity, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			FileWrite($PartIniFile, "CrewCapacity=" & $CrewCapacity & @LF)

		EndIf

		; ------------------ Extract entry cost
		If StringRegExp($aModules[$i], "entryCost =") Or StringRegExp($aModules[$i], "entryCost=") Then

			$entryCost = StringSplit($aModules[$i], "=")[2]
			$entryCost = StringStripWS($entryCost, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			FileWrite($PartIniFile, "entryCost=" & $entryCost & @LF)

		EndIf

		; ------------------ Extract mass
		If StringRegExp($aModules[$i], "mass =") Or StringRegExp($aModules[$i], "mass=") Then

			$mass = StringSplit($aModules[$i], "=")[2]
			$mass = StringStripWS($mass, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			If StringInStr($mass, "//") Then

				FileWrite($PartIniFile, "mass_RAW_TEXT=" & $mass & @LF)
				$mass = StringSplit($mass, "//")[1]

			EndIf

			FileWrite($PartIniFile, "mass=" & $mass & @LF)

		EndIf

		; ------------------ Extract max temp
		If StringRegExp($aModules[$i], "maxTemp =") Or StringRegExp($aModules[$i], "maxTemp=") Then

			$maxTemp = StringSplit($aModules[$i], "=")[2]
			$maxTemp = StringStripWS($maxTemp, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			If StringInStr($aModules[$i], " //") Then

				;FileWrite($PartIniFile, "maxTemp_RAW_TEXT="&$maxTemp&@LF)
				$maxTemp = StringReplace($maxTemp, " //", "")

			EndIf

			FileWrite($PartIniFile, "maxTemp=" & $maxTemp & @LF)

		EndIf

		; ------------------ Extract tech required
		If StringRegExp($aModules[$i], "TechRequired =") Or StringRegExp($aModules[$i], "TechRequired=") Then

			$TechRequired = StringSplit($aModules[$i], "=")[2]
			$TechRequired = StringStripWS($TechRequired, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			FileWrite($PartIniFile, "TechRequired=" & $TechRequired & @LF)

		EndIf

		; ------------------ Extract vessel type
		If StringRegExp($aModules[$i], "vesselType =") Or StringRegExp($aModules[$i], "vesselType=") Then

			$vesselType = StringSplit($aModules[$i], "=")[2]
			$vesselType = StringStripWS($vesselType, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			FileWrite($PartIniFile, "vesselType=" & $vesselType & @LF)

		EndIf

		; ------------------ Extract category
		If StringRegExp($aModules[$i], "category =") Or StringRegExp($aModules[$i], "category=") Then

			If StringInStr($aModules[$i], "sub") Then
				;
			Else

				$Category = StringSplit($aModules[$i], "=")[2]
				$Category = StringStripWS($Category, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

				FileWrite($PartIniFile, "category=" & $Category & @LF)
			EndIf

		EndIf

		; ------------------ Extract buoyancy
		If StringRegExp($aModules[$i], "buoyancy =") Or StringRegExp($aModules[$i], "buoyancy=") Then


			$buoyancy = StringSplit($aModules[$i], "=")[2]
			$buoyancy = StringStripWS($buoyancy, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			FileWrite($PartIniFile, "buoyancy=" & $buoyancy & @LF)


		EndIf

		; ------------------ Extract breaking force
		If StringRegExp($aModules[$i], "breakingForce =") Or StringRegExp($aModules[$i], "breakingForce=") Then


			$breakingForce = StringSplit($aModules[$i], "=")[2]
			$breakingForce = StringStripWS($breakingForce, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			FileWrite($PartIniFile, "breakingForce=" & $breakingForce & @LF)


		EndIf

		; ------------------ Extract max drag
		If StringRegExp($aModules[$i], "maximum_drag =") Or StringRegExp($aModules[$i], "maximum_drag=") Then


			$maximum_drag = StringSplit($aModules[$i], "=")[2]
			$maximum_drag = StringStripWS($maximum_drag, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			FileWrite($PartIniFile, "maximum_drag=" & $maximum_drag & @LF)


		EndIf

		; ------------------ Extract min drag
		If StringRegExp($aModules[$i], "minimum_drag =") Or StringRegExp($aModules[$i], "minimum_drag=") Then


			$minimum_drag = StringSplit($aModules[$i], "=")[2]
			$minimum_drag = StringStripWS($minimum_drag, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			FileWrite($PartIniFile, "minimum_drag=" & $minimum_drag & @LF)


		EndIf

		; ------------------ Extract description
		If StringRegExp($aModules[$i], "description =") Or StringRegExp($aModules[$i], "description=") Then

			If StringInStr($aModules[$i], "real_description") Then

				Local $description = "*"

			Else

				$description = StringSplit($aModules[$i], "=")[2]
				$description = StringStripWS($description, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			EndIf

			If StringInStr($description, @TAB) Then

				$description = StringRegExpReplace($description, @TAB, "")

			EndIf

			If StringInStr($description, "#") Then


				If StringInStr($description, "<#") Then

					$description = StringRegExpReplace($description, "<#[a-zA-Z]+\d+>", "")

					If StringInStr($description, "<#") Then

						$description = StringRegExpReplace($description, "<#[a-zA-Z]+\d+[a-zA-Z]+>", "")

					EndIf

					If StringInStr($description, "</color>") Then

						$description = StringRegExpReplace($description, "</color>", "")

					EndIf

				EndIf

			EndIf

			If StringInStr($description, "//") Or StringInStr($description, " //") Then

				$description = StringSplit($description, "//")[1]
				
				$description = StringStripWS($description, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
				
				$aDescription = StringReplace($aModules[$i], $description, "")
				$aDescription = StringReplace($aDescription, "description", "")
				$aDescription = StringReplace($aDescription, "=", "")
				$aDescription = StringReplace($aDescription, "//", "")
				$aDescription = StringStripWS($aDescription, 1)

				$Description = $aDescription

			EndIf

			If StringInStr($description, " //'") Then

				$description = StringRegExpReplace($description, " //'", "")

			EndIf

			If StringInStr($description, "#") Then

				$description = "*"

			EndIf

			If $description = "" Or $description = "[NONE]" Or $description = "*" Then
			Else
				$description = StringStripWS($description, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
				FileWrite($PartIniFile, "Description=" & $description & @LF)

			EndIf

		EndIf

	Next
	_CFG_Find_Resources($CfgFile)
	_CFG_Find_Modules($CfgFile)

EndFunc   ;==>_CFG_Find_Info

Func _CFG_Find_Resources($CfgFile)

	Local $aResource, $iModules[0], $Pre, $Count = 1, $ResoucreType

	_FileReadToArray($CfgFile, $aResource)
	_ArrayDelete($aResource, 0)

	For $i = 0 To UBound($aResource)
		If $i = UBound($aResource) Then ExitLoop

		If StringRegExp($aResource[$i], "RESOURCE") Then

			If StringInStr($aResource[$i], "//") Then
			Else

				If StringRegExp($aResource[$i + 1], "{") Then

					For $j = $i To UBound($aResource)
						If $j = UBound($aResource) Then ExitLoop

						If StringInStr($aResource[$i], "=") Then

							If StringInStr($aResource[$i], "name") Then

								If $Pre = StringSplit($aResource[$i], "=")[2] Then
									$Count = 1
								Else
									$Count -= 1
								EndIf

								$ResoucreType = StringSplit($aResource[$i], "=")[2]
								$ResoucreType = StringStripWS($ResoucreType, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
								If $Count = 0 Then
									FileWrite($PartIniFile, "[" & $ResoucreType & "]" & @LF)

									$Pre = StringSplit($aResource[$i], "=")[2]
									$Count += 1
								Else
									FileWrite($PartIniFile, "[" & $ResoucreType & $Count + 1 & "]" & @LF)
									$Pre = StringSplit($aResource[$i], "=")[2]
									$Count += 1
								EndIf

							Else

								$KeyName = StringSplit($aResource[$i], "=")[1]
								$KeyName = StringStripWS($KeyName, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

								If StringInStr($KeyName, "//") Then
									$KeyName = "*"
								EndIf

								$KeyValue = StringSplit($aResource[$i], "=")[2]
								$KeyValue = StringStripWS($KeyValue, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

								If $KeyName = "*" Then
									$KeyValue = "*"
								EndIf

								If StringInStr($KeyName, "*") Then
								Else
									If StringInStr($KeyName, "amount") Or StringInStr($KeyName, "maxAmount") Then

										FileWrite($PartIniFile, $KeyName & "=" & $KeyValue & @LF) ;
									Else
									EndIf
								EndIf

							EndIf

						EndIf

						If StringRegExp($aResource[$i], "}") Then
							ExitLoop
						Else
							$i += 1
						EndIf

					Next

				EndIf

			EndIf

		EndIf

	Next

EndFunc   ;==>_CFG_Find_Resources

Func _ShowPreview($Category)

	; Refresh and show the selected parts category preview image
	Global $idPreviewPic
	GUICtrlSetState($idPreviewPic, $GUI_HIDE)
	_LoadPNG($CategoryImagesPath & $Category & ".png", $idPreviewPic)
	GUICtrlSetState($idPreviewPic, $GUI_SHOW)

EndFunc   ;==>_ShowPreview

Func _AutoCatPreview($PartName)

	; Figure out the current parts category, by searching for keywords in the parts title
	; Used for parts where the category is unset, currently for display purposes only

	Local $Category = ""

	If StringInStr($PartName, "Fairing") Then

		$Category = "Payload"

	EndIf

	If StringInStr($PartName, "Service Module") Then

		$Category = "Payload"

	EndIf

	If StringInStr($PartName, "Container") Then

		$Category = "Payload"

	EndIf

	If StringInStr($PartName, "Equipment Module") Then

		$Category = "Payload"

	EndIf

	If StringInStr($PartName, "Command Pod") Then

		$Category = "Pods"

	EndIf

	If StringInStr($PartName, "Control Vehicle") Then

		$Category = "Pods"

	EndIf

	If StringInStr($PartName, "Resupply Pod") Then

		$Category = "Pods"

	EndIf

	If StringInStr($PartName, "Aerospike") Then

		$Category = "Engine"

	EndIf

	If StringInStr($PartName, "engine") Then

		$Category = "Engine"

	EndIf

	If StringInStr($PartName, "Tank") Then

		$Category = "Propulsion"

	EndIf

	If StringInStr($PartName, "Adapter Tank") Then

		$Category = "Propulsion"

	EndIf

	If StringInStr($PartName, "Monopropellant Tank") Then

		$Category = "Propulsion"

	EndIf

	If StringInStr($PartName, "Fuel Tank") Then

		$Category = "Propulsion"

	EndIf

	If StringInStr($PartName, "Reaction Control System") Then

		$Category = "Control"

	EndIf

	If StringInStr($PartName, "RCS Block") Then

		$Category = "Control"

	EndIf

	If StringInStr($PartName, "RCS Port") Then

		$Category = "Control"

	EndIf

	If StringInStr($PartName, "Thruster Block") Then

		$Category = "Control"

	EndIf

	If StringInStr($PartName, "Reaction Thruster") Then

		$Category = "Control"

	EndIf

	If StringInStr($PartName, "Manuevering Thruster") Then

		$Category = "Control"

	EndIf

	If StringInStr($PartName, "antenna") Then

		$Category = "Communication"

	EndIf

	If StringInStr($PartName, "Communications dish") Then

		$Category = "Communication"

	EndIf

	If StringInStr($PartName, "Communications array") Then

		$Category = "Communication"

	EndIf

	If StringInStr($PartName, "High Gain") Then

		$Category = "Communication"

	EndIf

	If StringInStr($PartName, "Probe Core") Then

		$Category = "Pods"

	EndIf

	If StringInStr($PartName, "Avionics and control system") Then

		$Category = "Pods"

	EndIf

	If StringInStr($PartName, "Crew module") Then

		$Category = "Pods"

	EndIf

	If StringInStr($PartName, "Corridoor") Then

		$Category = "Strcutural"

	EndIf

	If StringInStr($PartName, "Docking mechanism") Then

		$Category = "Coupling"

	EndIf

	If StringInStr($PartName, "Structural") Then

		$Category = "Structural"

	EndIf


	If StringInStr($PartName, "Scanner") Then

		$Category = "Science"

	EndIf

	If StringInStr($PartName, "Camera") Then

		$Category = "Science"

	EndIf

	If StringInStr($PartName, "Parachute") Then

		$Category = "Utility"

	EndIf

	If StringInStr($PartName, "Heatshield") Then

		$Category = "Thermal"

	EndIf

	If $Category = "" Then

		ControlSetText($hMain, "", $iStatus, "[NONE]")
		$Category = "None"

	Else


	EndIf

	Return $Category

EndFunc   ;==>_AutoCatPreview

Func _CountPartsPerMod()

	Local $aTreeList, $aTreeFile, $Count

	; List all custom named tree files to an array
	$aTreeList = _FileListToArray($_Index_Path & "Trees\NamedPaths\", "*.tre")
	_ArrayDelete($aTreeList, 0)

	; Iterate through list, increasing count when a part is found
	For $i = 0 To UBound($aTreeList) - 1

		$ModName = StringTrimRight($aTreeList[$i], 4)
		_FileReadToArray($_Index_Path & "Trees\NamedPaths\" & $aTreeList[$i], $aTreeFile, 0)
		$Count = 0

		For $j = 0 To UBound($aTreeFile) - 1

			If StringInStr($aTreeFile[$j], "***") Then

				$Count += 1

			EndIf

		Next

		; Write mod name and part count to ini
		IniWrite($_Index_Path & "_Index_.ini", "ModPartCounts", $ModName, $Count)

	Next

EndFunc   ;==>_CountPartsPerMod


; -Experimental - currently unused:
Func _CFG_Find_Modules($CfgFile)

	Local $aModules, $iModules[0]

	_FileReadToArray($CfgFile, $aModules)
	_ArrayDelete($aModules, 0)
	FileWrite($PartIniFile, "[Modules]" & @LF)

	For $i = 0 To UBound($aModules)
		If $i = UBound($aModules) Then ExitLoop

		If StringRegExp($aModules[$i], "MODULE") Then

			If StringInStr($aModules[$i], "//") Then
			Else

				If StringRegExp($aModules[$i + 1], "{") Then

					_ArrayAdd($iModules, $i)

				EndIf

			EndIf

		EndIf

	Next

	_ArrayAdd($iModules, UBound($aModules))
	Local $mRange = $iModules

	For $i = 0 To UBound($mRange)

		If $i = UBound($mRange) Then ExitLoop

		If $mRange[$i] = $mRange[UBound($mRange) - 1] Then

			ExitLoop

		Else
			Local $mExtract = _ArrayExtract($aModules, $mRange[$i], $mRange[$i + 1] - 1)
			For $j = 0 To UBound($mExtract)

				If $j = UBound($mExtract) Then ExitLoop

				If StringRegExp($mExtract[$j], "//") Then

					_ArrayDelete($mExtract, $j)
					$j -= 1

				EndIf

			Next

			_CFG_Find_ModuleNames($mExtract)

		EndIf

	Next

	Local $aArray

	_FileReadToArray(@TempDir & "modules.tmp", $aArray)
	_ArrayDelete($aArray, 0)
	FileDelete(@TempDir & "modules.tmp")

	For $i = 0 To UBound($aArray)

		If $i = UBound($aArray) Then ExitLoop

		FileWrite($PartIniFile, "MODULE" & $i + 1 & "=" & $aArray[$i] & @LF)

	Next

EndFunc   ;==>_CFG_Find_Modules
; -Experimental - currently unused:
Func _CFG_Find_ModuleNames($mArray)

	Local $sModuleName, $ModuleName

	For $i = 0 To UBound($mArray)

		If $i = UBound($mArray) Then ExitLoop

		If StringInStr($mArray[$i], "name =", 1) Or StringInStr($mArray[$i], "name= ", 1) Then

			If StringInStr($mArray[$i], "module") Then

				$sModuleName = StringSplit($mArray[$i], "=")
				$ModuleName = StringStripWS($sModuleName[2], $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
				FileWrite(@TempDir & "modules.tmp", $ModuleName & @LF)

			EndIf

		EndIf
	Next

EndFunc   ;==>_CFG_Find_ModuleNames



;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                          DATABASE BUILD
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

Func _Draw_DB_Build_UI()
	GUICtrlSetState($Div0, $GUI_HIDE)
	GUICtrlSetState($Btn_Settings, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Btn_Help, $GUI_HIDE + $GUI_DISABLE)
	_Hide_InfoIcons()
	
	If $_UI_High_Dpi = "Enabled" Then

		$ImageFromTop = 553 * $Dpi
		$ImageW = 1510
		$ImageH = 357

	Else

		$ImageFromTop = 553 * $Dpi
		$ImageW = 755
		$ImageH = 179

	EndIf

	Global $LoadingBG = GUICtrlCreatePic("", 0, $ImageFromTop, $ImageW, $ImageH)
	_LoadPNG($BannerImgPath & "VAB.png", $LoadingBG)
	GUICtrlSetState($LoadingBG, $GUI_SHOW)

	Global $Loading1 = GUICtrlCreateLabel("Building Database", 250 * $Dpi, 100 * $Dpi, 260 * $Dpi, 35 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading1, 20, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading1, 0x0080c0)
	GUICtrlSetBkColor($Loading1, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading1b = GUICtrlCreateLabel("This can take some time, please be patient.", 180 * $Dpi, 140 * $Dpi, 400 * $Dpi, 60 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading1b, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading1b, 0x0080c0)
	GUICtrlSetBkColor($Loading1b, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading1c = GUICtrlCreateLabel("(Only required on first run, or if the part count changes)", 150 * $Dpi, 160 * $Dpi, 450 * $Dpi, 60 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading1c, 9, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading1c, 0xff8040)
	GUICtrlSetBkColor($Loading1c, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading2 = GUICtrlCreateLabel("Finding localisation files ...", 250 * $Dpi, 200 * $Dpi, 260 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading2, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading2, 0x0080c0)
	GUICtrlSetBkColor($Loading2, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading2Done = GUICtrlCreateLabel("ü", 500 * $Dpi, 200 * $Dpi, 20 * $Dpi, 20 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading2Done, 10, 400, "", "Wingdings")
	GUICtrlSetColor($Loading2Done, 0x008000)
	GUICtrlSetState($Loading2Done, $GUI_HIDE)
	GUICtrlSetBkColor($Loading2Done, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading3 = GUICtrlCreateLabel("Finding part cfg files ...", 250 * $Dpi, 250 * $Dpi, 260 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading3, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading3, 0x0080c0)
	GUICtrlSetState($Loading3, $GUI_HIDE)
	GUICtrlSetBkColor($Loading3, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading3Done = GUICtrlCreateLabel("ü", 500 * $Dpi, 250 * $Dpi, 20 * $Dpi, 20 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading3Done, 10, 400, "", "Wingdings")
	GUICtrlSetColor($Loading3Done, 0x008000)
	GUICtrlSetState($Loading3Done, $GUI_HIDE)
	GUICtrlSetBkColor($Loading3Done, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading4 = GUICtrlCreateLabel("Extracting raw titles ...", 250 * $Dpi, 275 * $Dpi, 260 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading4, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading4, 0x0080c0)
	GUICtrlSetState($Loading4, $GUI_HIDE)
	GUICtrlSetBkColor($Loading4, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading4Done = GUICtrlCreateLabel("ü", 500 * $Dpi, 275 * $Dpi, 20 * $Dpi, 20 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading4Done, 10, 400, "", "Wingdings")
	GUICtrlSetColor($Loading4Done, 0x008000)
	GUICtrlSetState($Loading4Done, $GUI_HIDE)
	GUICtrlSetBkColor($Loading4Done, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading5 = GUICtrlCreateLabel("Extracting full part names ...", 250 * $Dpi, 300 * $Dpi, 260 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading5, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading5, 0x0080c0)
	GUICtrlSetState($Loading5, $GUI_HIDE)
	GUICtrlSetBkColor($Loading5, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading5Done = GUICtrlCreateLabel("ü", 500 * $Dpi, 300 * $Dpi, 20 * $Dpi, 20 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading5Done, 10, 400, "", "Wingdings")
	GUICtrlSetColor($Loading5Done, 0x008000)
	GUICtrlSetState($Loading5Done, $GUI_HIDE)
	GUICtrlSetBkColor($Loading5Done, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading6 = GUICtrlCreateLabel("Indexing categories ...", 250 * $Dpi, 325 * $Dpi, 260 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading6, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading6, 0x0080c0)
	GUICtrlSetState($Loading6, $GUI_HIDE)
	GUICtrlSetBkColor($Loading6, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading6Done = GUICtrlCreateLabel("ü", 500 * $Dpi, 325 * $Dpi, 20 * $Dpi, 20 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading6Done, 10, 400, "", "Wingdings")
	GUICtrlSetColor($Loading6Done, 0x008000)
	GUICtrlSetState($Loading6Done, $GUI_HIDE)
	GUICtrlSetBkColor($Loading6Done, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading7 = GUICtrlCreateLabel("Indexing mod folders ...", 250 * $Dpi, 350 * $Dpi, 260 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading7, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading7, 0x0080c0)
	GUICtrlSetState($Loading7, $GUI_HIDE)
	GUICtrlSetBkColor($Loading7, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading7Done = GUICtrlCreateLabel("ü", 500 * $Dpi, 350 * $Dpi, 20 * $Dpi, 20 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading7Done, 10, 400, "", "Wingdings")
	GUICtrlSetColor($Loading7Done, 0x008000)
	GUICtrlSetState($Loading7Done, $GUI_HIDE)
	GUICtrlSetBkColor($Loading7Done, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading8 = GUICtrlCreateLabel("Indexing part cfg names ...", 250 * $Dpi, 375 * $Dpi, 260 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading8, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading8, 0x0080c0)
	GUICtrlSetState($Loading8, $GUI_HIDE)
	GUICtrlSetBkColor($Loading8, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading8Done = GUICtrlCreateLabel("ü", 500 * $Dpi, 375 * $Dpi, 20 * $Dpi, 20 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading8Done, 10, 400, "", "Wingdings")
	GUICtrlSetColor($Loading8Done, 0x008000)
	GUICtrlSetState($Loading8Done, $GUI_HIDE)
	GUICtrlSetBkColor($Loading8Done, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading9 = GUICtrlCreateLabel("Indexing cfg paths ...", 250 * $Dpi, 400 * $Dpi, 260 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading9, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading9, 0x0080c0)
	GUICtrlSetState($Loading9, $GUI_HIDE)
	GUICtrlSetBkColor($Loading9, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading9Done = GUICtrlCreateLabel("ü", 500 * $Dpi, 400 * $Dpi, 20 * $Dpi, 20 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading9Done, 10, 400, "", "Wingdings")
	GUICtrlSetColor($Loading9Done, 0x008000)
	GUICtrlSetState($Loading9Done, $GUI_HIDE)
	GUICtrlSetBkColor($Loading9Done, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading10 = GUICtrlCreateLabel("Building tree views . . .", 175 * $Dpi, 425 * $Dpi, 425 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading10, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading10, 0x0080c0)
	GUICtrlSetState($Loading10, $GUI_HIDE)
	GUICtrlSetBkColor($Loading10, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading10Done = GUICtrlCreateLabel("ü", 500 * $Dpi, 425 * $Dpi, 20 * $Dpi, 20 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading10Done, 10, 400, "", "Wingdings")
	GUICtrlSetColor($Loading10Done, 0x008000)
	GUICtrlSetState($Loading10Done, $GUI_HIDE)
	GUICtrlSetBkColor($Loading10Done, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading11 = GUICtrlCreateLabel("Done, loading UI . . .", 175 * $Dpi, 450 * $Dpi, 450 * $Dpi, 30 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading11, 10, 400, "", $Theme_Default_Font)
	GUICtrlSetColor($Loading11, 0x0080c0)
	GUICtrlSetState($Loading11, $GUI_HIDE)
	GUICtrlSetBkColor($Loading11, $GUI_BKCOLOR_TRANSPARENT)

	Global $Loading11Done = GUICtrlCreateLabel("ü", 500 * $Dpi, 450 * $Dpi, 20 * $Dpi, 20 * $Dpi, $SS_CENTER)
	GUICtrlSetFont($Loading11Done, 10, 400, "", "Wingdings")
	GUICtrlSetColor($Loading11Done, 0x008000)
	GUICtrlSetState($Loading11Done, $GUI_HIDE)
	GUICtrlSetBkColor($Loading11Done, $GUI_BKCOLOR_TRANSPARENT)


EndFunc   ;==>_Draw_DB_Build_UI

Func _DB_Build()
	GUICtrlSetState($LoadingGraphic, $GUI_HIDE)

	GUICtrlSetState($Loading2, $GUI_Hide)

	; Stage1 find all localisation files
	ControlSetText($hMain, "", $iStatus, "Stage 1 / 9") ; UI Out
	_DB_List_Localisation_Files()
	GUICtrlSetState($Loading3, $GUI_SHOW)

	; Stage2 find all valid part cfg files
	ControlSetText($hMain, "", $iStatus, "Stage 2 / 9") ; UI Out
	_DB_Identify_PartCfgs()
	GUICtrlSetState($Loading3Done, $GUI_SHOW)
	GUICtrlSetState($Loading4, $GUI_SHOW)

	; Stage3 extract raw titles
	ControlSetText($hMain, "", $iStatus, "Stage 3 / 9") ; UI Out
	_DB_Extract_RawNames()
	GUICtrlSetState($Loading4Done, $GUI_SHOW)
	GUICtrlSetState($Loading5, $GUI_SHOW)

	; Stage4 Name parts from localisation files
	ControlSetText($hMain, "", $iStatus, "Stage 4 / 9") ; UI Out
	_NameParts($PartTitles, $LocalsList)
	GUICtrlSetState($Loading5Done, $GUI_SHOW)
	GUICtrlSetState($Loading6, $GUI_SHOW)

	; Stage5 Index categories
	ControlSetText($hMain, "", $iStatus, "Stage 5 / 9") ; UI Out
	_DB_Index_Categories()
	GUICtrlSetState($Loading6Done, $GUI_SHOW)
	GUICtrlSetState($Loading7, $GUI_SHOW)

	; Stage6 Index mod root folders
	ControlSetText($hMain, "", $iStatus, "Stage 6 / 9") ; UI Out
	_DB_Index_ModFolders()
	GUICtrlSetState($Loading7Done, $GUI_SHOW)
	GUICtrlSetState($Loading8, $GUI_SHOW)

	; Stage7 Index part config file names
	ControlSetText($hMain, "", $iStatus, "Stage 7 / 9") ; UI Out
	_DB_Index_CFGNames()
	GUICtrlSetState($Loading8Done, $GUI_SHOW)
	GUICtrlSetState($Loading9, $GUI_SHOW)

	; Stage8 Index full part paths
	ControlSetText($hMain, "", $iStatus, "Stage 8 / 9") ; UI Out
	_DB_Index_FullPaths()
	GUICtrlSetState($Loading9Done, $GUI_SHOW)
	GUICtrlSetState($Loading10, $GUI_SHOW)

	Local $aIndex[0], $aINI
	ControlSetText($hMain, "", $iStatusText, "Merging Index 1 / 7") ; UI Out
	_FileReadToArray($_Index_Path & "_Index_Part_Count.ini", $aINI, 0)
	FileDelete($_Index_Path & "_Index_Part_Count.ini")
	_ArrayAdd($aIndex, $aINI)
	_ArrayAdd($aIndex, "")

	ControlSetText($hMain, "", $iStatusText, "Merging Index 2 / 7") ; UI Out
	_FileReadToArray($_Index_Path & "_Index_PartsNamed_.ini", $aINI, 0)
	FileDelete($_Index_Path & "_Index_PartsNamed_.ini")
	_ArrayAdd($aIndex, $aINI)
	_ArrayAdd($aIndex, "")

	ControlSetText($hMain, "", $iStatusText, "Merging Index 3 / 7") ; UI Out
	_FileReadToArray($_Index_Path & "_Index_Mod_RootFolders.ini", $aINI, 0)
	FileDelete($_Index_Path & "_Index_Mod_RootFolders.ini")
	_ArrayAdd($aIndex, $aINI)
	_ArrayAdd($aIndex, "")

	ControlSetText($hMain, "", $iStatusText, "Merging Index 4 / 7") ; UI Out
	_FileReadToArray($_Index_Path & "_Index_Categories.ini", $aINI, 0)
	FileDelete($_Index_Path & "_Index_Categories.ini")
	_ArrayAdd($aIndex, $aINI)
	_ArrayAdd($aIndex, "")

	ControlSetText($hMain, "", $iStatusText, "Merging Index 5 / 7") ; UI Out
	_FileReadToArray($_Index_Path & "_Index_Cfg_Names.ini", $aINI, 0)
	FileDelete($_Index_Path & "_Index_Cfg_Names.ini")
	_ArrayAdd($aIndex, $aINI)
	_ArrayAdd($aIndex, "")

	ControlSetText($hMain, "", $iStatusText, "Merging Index 6 / 7") ; UI Out
	_FileReadToArray($_Index_Path & "_Index_NameAndPaths.ini", $aINI, 0)
	FileDelete($_Index_Path & "_Index_NameAndPaths.ini")
	_ArrayAdd($aIndex, $aINI)

	ControlSetText($hMain, "", $iStatusText, "Merging Index 7 / 7") ; UI Out
	_FileWriteFromArray($_Index_Path & "_Index_.ini", $aIndex)

	ControlSetText($hMain, "", $iStatus, "Stage 9 / 9") ; UI Out
	_TreeView_Name_Branches()
	_CountPartsPerMod()
	GUICtrlSetState($Loading10Done, $GUI_SHOW)
	GUICtrlSetState($Loading11, $GUI_SHOW)
	GUICtrlSetState($Loading11Done, $GUI_SHOW)
	GUICtrlSetState($Btn_Settings, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Btn_Help, $GUI_SHOW + $GUI_ENABLE)

	_Hide_DB_Build_UI()
	ControlSetText($hMain, "", $iStatus, "Ready")
	ControlSetText($hMain, "", $iStatusText, "...")
	WinSetTitle($hMain, "", "Cornucopia β")

EndFunc   ;==>_DB_Build

Func _DB_List_Localisation_Files()


	Local $LocFilesList[0], $LocFilesList2[0], $LocFilesList3[0], $_aLocals[0]

	$_aLocals = _FileListToArrayRec($iGameData, "*.cfg", $FLTAR_RECUR, $FLTAR_SORT, 1)
	For $i = 0 To UBound($_aLocals)
		If $i = UBound($_aLocals) Then ExitLoop
		If StringInStr($_aLocals[$i], "local") Or StringInStr($_aLocals[$i], "en-us") Then

			_ArrayAdd($LocFilesList, $iGameData & $_aLocals[$i], $i)

		Else

		EndIf
	Next

	For $i = 0 To UBound($LocFilesList)

		If $i = UBound($LocFilesList) Then ExitLoop

		$aList = FileReadToArray($LocFilesList[$i])

		For $x = 0 To UBound($aList) - 1

			If $x = UBound($aList) Then ExitLoop

			If StringInStr($aList[$x], "en-us") Then
				_ArrayAdd($LocFilesList2, $LocFilesList[$i])
				$iList = StringReplace($LocFilesList[$i], $iGameData, "..\")
				ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($LocFilesList) & " - " & $iList)
			Else
			EndIf
		Next

	Next

	ControlSetText($hMain, "", $iStatusText, " ")

	Global $LocalsList = $LocFilesList2

EndFunc   ;==>_DB_List_Localisation_Files

Func _CombineLocals($CFGList)

	Local $AllLocalsList[0], $AllLocals[0], $iLocal[0]
	$AllLocalsList = $CFGList

	For $i = 1 To UBound($AllLocalsList)
		If $i = UBound($AllLocalsList) Then ExitLoop

		If StringInStr($AllLocalsList[$i], "Squad") Then
		;Ignore
		Else

		_FileReadToArray($AllLocalsList[$i], $iLocal)
		_ArrayAdd($AllLocals, $iLocal)
		Endif
	Next

	Global $aLocalsToSearch = $AllLocals

EndFunc   ;==>_CombineLocals

Func _DB_Identify_PartCfgs()

	$_aCFG = _FileListToArrayRec($iGameData, "*.cfg", $FLTAR_RECUR, $FLTAR_SORT, 1)
	Local $aPartCFGList[0], $cFile
	IniWrite($_Index_Path & "_Index_Part_Count.ini", "CfgCount", "Total", UBound($_aCFG))

	For $i = 0 To UBound($_aCFG)
		If $i = UBound($_aCFG) Then ExitLoop

		$iFilePath = $iGameData & $_aCFG[$i]

		_FileReadToArray($iFilePath, $cFile, 0)

		For $j = 0 To UBound($cFile)
			If $j = UBound($cFile) Then ExitLoop
			If $j + 1 = UBound($cFile) Then ExitLoop

			If StringInStr($cFile[$j], "PART") Then

				If StringInStr($cFile[$j + 1], "{") Then

					If StringInStr($cFile[$j], "@PART[") Then

						;Ignore

					Else

						If StringInStr($cFile[$j], "_") Then

							;Ignore

						Else

							If StringInStr($cFile[$j], ":") Then

								;Ignore

							Else

								If StringInStr($cFile[$j], "//") Then

									;Ignore

								Else

									If StringInStr($cFile[$j], "@") Or StringInStr($cFile[$j], "+") Then

										;Ignore

									Else

										If StringInStr($cFile[$j], "Upgrade") Then

											;Ignore

										Else
											If StringInStr($cFile[$j], "PARTS") Then

												;Ignore

											Else

												If StringInStr($cFile[$j], "PARTI") Then

													;Ignore

												Else

													If StringInStr($cFile[$j], "MODULE") Then

														;Ignore

													Else

														_ArrayAdd($aPartCFGList, $iFilePath)
														$aPath = StringSplit($iFilePath, "\")

															For $k = 0 To Ubound($aPath)-1
															If StringInStr($aPath[$k], "GameData") Then
																$ModRootFolder = $aPath[$k+1]
																Exitloop
																Endif
															Next

														$ModFullName = IniRead(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder", $ModRootFolder, "-N/F-")
														
														If $ModFullName = "-N/F-" Then
															IniWrite(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder", $ModRootFolder, $ModRootFolder)
														EndIf

														ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($_aCFG) & " - " & $ModFullName)

													EndIf

												EndIf

											EndIf

										EndIf

									EndIf

								EndIf

							EndIf

						EndIf

					EndIf

				EndIf

			EndIf

		Next

	Next
	ControlSetText($hMain, "", $iStatusText, " ")

	_SortModNames()
	_INIRevModNames()

	Global $PartCFGList = $aPartCFGList

EndFunc   ;==>_DB_Identify_PartCfgs

Func _DB_Extract_RawNames()

	Local $aPartNameList[0], $CFGList[0], $NamesList[0], $tIndex, $sTitle, $sLoc, $Pre
	Local $p

	For $i = 0 To UBound($PartCFGList)
		If $i = UBound($PartCFGList) Then ExitLoop

		$aPartNameList = FileReadToArray($PartCFGList[$i])
		$tIndex = _ArraySearch($aPartNameList, "title", 0, "", 1, 1)
		If @error = 6 Then

		Else
			$sTitle = String($aPartNameList[$tIndex])

			If StringInStr($sTitle, @TAB) Then
				$sTitle = StringReplace($sTitle, @TAB, '')
			EndIf

			If StringInStr($sTitle, "title = ") Then
				$sTitle = StringReplace($sTitle, "title = ", '')
			EndIf

			If StringInStr($sTitle, "title =") Then
				$sTitle = StringReplace($sTitle, "title =", '')
			EndIf

			If StringInStr($sTitle, "#autoLOC_") Then

				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
				Local $Rxp, $sRxp
				$Rxp = StringRegExp($sTitle, '#[a-zA-Z]+_[0-9]+', $STR_REGEXPARRAYMATCH)
				If @error Then
					$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
				Else
					$sRxp = String($Rxp[0])
					$sTitle = StringStripWS($sRxp, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
				EndIf
			EndIf

			If StringInStr($sTitle, "#LOC.") Then
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
				Local $Split, $sSplit
				$Split = StringSplit($sTitle, "//")
				$sSplit = String($Split[1])

				$sTitle = StringStripWS($sSplit, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "//") Then

				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
				Local $Split
				$Split = StringSplit($sTitle, "//")

			EndIf


			If StringInStr($sTitle, "title = ") Then
				$sTitle = StringReplace($sTitle, "title = ", '')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf


			If StringInStr($sTitle, "title        = ") Then
				$sTitle = StringReplace($sTitle, "title        = ", '')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "//") Then
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
				Local $Split
				$Split = StringSplit($sTitle, "//")
				$sTitle = $Split[1]
			EndIf

			If StringInStr($sTitle, "    ") Then
				$sTitle = StringReplace($sTitle, "    ", '')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "  ") Then
				$sTitle = StringReplace($sTitle, "  ", '')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "manufacturer = ") Then
				$sTitle = StringReplace($sTitle, "manufacturer = ", '')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "title= ") Then
				$sTitle = StringReplace($sTitle, "title= ", '')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "title=") Then
				$sTitle = StringReplace($sTitle, "title=", '')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "@#") Then
				$sTitle = StringReplace($sTitle, "@#", '#')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "@") Then
				$sTitle = StringReplace($sTitle, "@", '')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, " #") Then
				$sTitle = StringReplace($sTitle, " #", '#')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "_.") Then
				$sTitle = StringReplace($sTitle, "_.", '.')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "®") Then
				$sTitle = StringReplace($sTitle, "®", '(R)')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "ī") Then
				$sTitle = StringReplace($sTitle, "ī", 'i')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "ō") Then
				$sTitle = StringReplace($sTitle, "ō", 'o')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "ʻ") Then
				$sTitle = StringReplace($sTitle, "ʻ", '''')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "ā") Then
				$sTitle = StringReplace($sTitle, "ā", 'a')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "™") Then
				$sTitle = StringReplace($sTitle, "™", '(TM)')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If StringInStr($sTitle, "^=") Then
				$sTitle = StringReplace($sTitle, $sTitle, '')
				$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
			EndIf

			If $sTitle = "" Then
				; Ignore
			Else

				If $Pre == $sTitle Then

				Else

					_ArrayAdd($CFGList, $PartCFGList[$i])

					_ArrayAdd($NamesList, StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES))
					ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($PartCFGList) & " - " & $sTitle)

					$Pre = $sTitle

				EndIf

			EndIf

		EndIf

	Next
	ControlSetText($hMain, "", $iStatusText, " ")

	Global $PartCFGList = $CFGList

	IniWrite($_Index_Path & "_Index_Part_Count.ini", "PartCount", "Total", UBound($PartCFGList))

	Global $PartTitles = $NamesList

EndFunc   ;==>_DB_Extract_RawNames

Func _NameParts($List, $CFGList)

	FileDelete($_Index_Path & "_Index_NameAndPaths.ini")
	FileDelete($_Index_Path & "_Index_PartsNamed_.ini")

	FileWrite($_Index_Path & "_Index_NameAndPaths.ini", "[Paths_AltName_Index]" & @LF)
	FileWrite($_Index_Path & "_Index_PartsNamed_.ini", "[PART_NAMES]" & @LF)

	$ListOfNames = $PartTitles

	_CombineLocals($CFGList)
	;Global $_FX_Limit = UBound($ListOfNames)
	
	For $i = 0 To UBound($ListOfNames)-1
	;	If $i = UBound($ListOfNames) Then ExitLoop

		; Search for name in ini
		If StringInStr($ListOfNames[$i], "#") Then

			$DBName = IniRead(@ScriptDir & "\Files\PartNames.ini", "DB_Names", $ListOfNames[$i], "[NF]2")

			; If its not there then
			If $DBName = "[NF]2" Then

				Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
				Local $aPathSplit = _PathSplit($PartCFGList[$i], $sDrive, $sDir, $sFileName, $sExtension)
				$DBName = $sFileName

				; Search the locals found array
				For $j = 0 to Ubound($aLocalsToSearch)-1

					; If the line in the the array has a # then
					If StringinStr($aLocalsToSearch[$j], "#") Then

						$Search = StringStripWS($ListOfNames[$i], 3)
						$Loc = StringStripWS($aLocalsToSearch[$j], 3)
						$Loc = StringReplace($Loc, @TAB, "")

						; Try to match the name
						If StringInStr($loc, $Search) Then

							; If found then save the name to the ini
							$DBName = StringStripWS(StringSplit($loc, "=")[2], 1)
							IniWrite(@ScriptDir & "\Files\PartNames.ini", "DB_Names", $Search, $DBName)


							ExitLoop

						Endif

					Endif

				Next

				FileWrite($_Index_Path & "_Index_PartsNamed_.ini", $i + 1 & "=" & $DBName & @LF)
				FileWrite($_Index_Path & "_Index_NameAndPaths.ini", "(" & $DBName & ")=" & $i + 1 & @LF)
				ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($ListOfNames) & " - " & $DBName)

			Else

				FileWrite($_Index_Path & "_Index_PartsNamed_.ini", $i + 1 & "=" & $DBName & @LF)
				FileWrite($_Index_Path & "_Index_NameAndPaths.ini", "(" & $DBName & ")=" & $i + 1 & @LF)
				ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($ListOfNames) & " - " & $DBName)

			EndIf


		Else

			$Name = StringStripWS($ListOfNames[$i], $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

			ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($ListOfNames) & " - " & $Name)

			FileWrite($_Index_Path & "_Index_PartsNamed_.ini", $i + 1 & "=" & $Name & @LF)
			FileWrite($_Index_Path & "_Index_NameAndPaths.ini", "(" & $Name & ")=" & $i + 1 & @LF)

		EndIf

	Next
	ControlSetText($hMain, "", $iStatusText, " ")

EndFunc   ;==>_NameParts

Func _DB_Index_Categories()

	Local $aCats, $iCats, $sCat, $iCat, $Count = 1

	$aCats = $PartCFGList

	FileDelete($_Index_Path & "_Index_Categories.ini")
	FileWrite($_Index_Path & "_Index_Categories.ini", "[PART_CATEGORIES]" & @LF)

	For $i = 0 To UBound($aCats)
		If $i = UBound($aCats) Then ExitLoop


		_FileReadToArray($aCats[$i], $iCats)
		For $j = 0 To UBound($iCats)
			If $j = UBound($iCats) Then ExitLoop

			If StringRegExp(StringStripWS($iCats[$j], $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES), "category = ") Or _
					StringRegExp(StringStripWS($iCats[$j], $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES), "category= ") Or _
					StringRegExp(StringStripWS($iCats[$j], $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES), "category =") Then

				If StringRegExp($iCats[$j], "subcategory") Then
					;
				Else

					$sCat = StringSplit($iCats[$j], "=")

					$iCat = StringStripWS($sCat[2], $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
					ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($aCats) & " - " & $iCat)

					FileWrite($_Index_Path & "_Index_Categories.ini", $i + 1 & "=" & $iCat & @LF)
					$Count += 1

				EndIf

			Else

			EndIf

		Next

	Next
	ControlSetText($hMain, "", $iStatusText, " ")

EndFunc   ;==>_DB_Index_Categories

Func _DB_Index_ModFolders()

	Local $ModCfgList, $sSplit, $nTrim, $aModNames[0], $Pre, $lPre, $_mCFG, $iCFG, $aCfg[0], $ModFolder
	$sMessage = " "

	$ModCfgList = $PartCFGList

	FileDelete($_Index_Path & "_Index_Mod_RootFolders.ini")
	FileWrite($_Index_Path & "_Index_Mod_RootFolders.ini", "[ModFolderNames]" & @LF)

	For $i = 0 To UBound($ModCfgList)
		If $i = UBound($ModCfgList) Then ExitLoop

		Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
		Local $aPathSplit = _PathSplit($ModCfgList[$i], $sDrive, $sDir, $sFileName, $sExtension)

		$sStrip = StringSplit($sDir, "\")
		$nTrim = _ArraySearch($sStrip, "GameData")

		$ModFolder = $sStrip[$nTrim + 1]


		If $Pre = $sStrip[$nTrim + 1] Then
			;
		Else
			$_mCFG = _FileListToArrayRec($iGameData & $ModFolder & "\", "*.cfg", $FLTAR_RECUR, $FLTAR_SORT, 1)
			_ArrayDelete($_mCFG, "0")

			_ArrayAdd($aModNames, $ModFolder)

			$Pre = $ModFolder
		EndIf

	Next

	For $i = 0 To UBound($aModNames)
		If $i = UBound($aModNames) Then ExitLoop

		FileWrite($_Index_Path & "_Index_Mod_RootFolders.ini", $aModNames[$i] & "= " & $i + 1 & @LF)
		ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($aModNames) & " - " & $aModNames[$i])

	Next
	ControlSetText($hMain, "", $iStatusText, " ")

EndFunc   ;==>_DB_Index_ModFolders

Func _DB_Index_CFGNames()

	Local $aFiles, $sTrim, $fList[0], $fListDd, $Key = 1, $ModNamePre

	$aFiles = $PartCFGList

	For $i = 0 To UBound($aFiles)
		If $i = UBound($aFiles) Then ExitLoop

		Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
		Local $aPathSplit = _PathSplit($aFiles[$i], $sDrive, $sDir, $sFileName, $sExtension)
		Local $fPath = $sDir

		$sTrim = StringReplace($fPath, $iGameData, "")

		Local $aModName = StringSplit($sTrim, "\")
		Local $ModName = $aModName[1]

		If StringInStr($sFileName & $sExtension, "part.cfg") Then

			$sPartNcfg = StringSplit($aFiles[$i], "\")
			$NameEx = $sPartNcfg[UBound($sPartNcfg) - 2] & "___" & $sPartNcfg[UBound($sPartNcfg) - 1]

			$sFileName = StringTrimRight($NameEx, 4)

		EndIf

		IniWrite($_Index_Path & "_Index_Cfg_Names.ini", "PartNames_Index", $sFileName, $Key)
		ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($aFiles) & " - " & $sFileName)

		$ModNamePre = $aModName[1]
		$Key += 1

		_ArrayAdd($fList, $sTrim, $i)

	Next
	ControlSetText($hMain, "", $iStatusText, " ")

EndFunc   ;==>_DB_Index_CFGNames

Func _DB_Index_FullPaths()

	Local $aNameList[0], $aPathList[0], $aPartNmLst
	Local $OutFile = $_Index_Path & "_Index_NameAndPaths.ini"

	$aPathList = $PartCFGList

	FileWrite($OutFile, "[Paths_Index]" & @LF)

	For $i = 0 To UBound($aPathList)
		If $i = UBound($aPathList) Then ExitLoop

		FileWrite($OutFile, $i + 1 & "=" & $aPathList[$i] & @LF)
		$iPath = StringReplace($aPathList[$i], $iGameData, "..\")
		ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($aPathList) & " - " & $iPath)

	Next
	ControlSetText($hMain, "", $iStatusText, " ")

EndFunc   ;==>_DB_Index_FullPaths

Func _DB_Index_PartCount()
	ControlSetText($hMain, "", $iStatus, "Loading ...")
	$_aCFG = _FileListToArrayRec($iGameData, "*.cfg", $FLTAR_RECUR, $FLTAR_SORT, 1)

	$PreviousCount = IniRead($_Index_Path & "_Index_.ini", "CfgCount", "Total", "-")
	If UBound($_aCFG) = $PreviousCount Then
	Else
		_DB_Compare_PartCount()
	EndIf

EndFunc   ;==>_DB_Index_PartCount

Func _DB_Compare_PartCount()

	ControlSetText($hMain, "", $iStatus, "Counting ...")

	$_aCFG = _FileListToArrayRec($iGameData, "*.cfg", $FLTAR_RECUR, $FLTAR_SORT, 1)

	Local $aPartCount[0], $cFile

	_ArrayDelete($_aCFG, "0")
	For $i = 0 To UBound($_aCFG)
		If $i = UBound($_aCFG) Then ExitLoop

		$iFilePath = $iGameData & $_aCFG[$i]
		_FileReadToArray($iFilePath, $cFile)
		_ArrayDelete($cFile, 0)

		For $j = 0 To UBound($cFile)
			If $j = UBound($cFile) Then ExitLoop
			If $j + 1 = UBound($cFile) Then ExitLoop

			If StringInStr($cFile[$j], "PART") Then

				If StringInStr($cFile[$j + 1], "{") Then

					If StringInStr($cFile[$j], "@PART[") Then

						;Ignore

					Else

						If StringInStr($cFile[$j], "_") Then

							;Ignore

						Else

							If StringInStr($cFile[$j], ":") Then

								;Ignore

							Else

								If StringInStr($cFile[$j], "//") Then

									;Ignore

								Else

									If StringInStr($cFile[$j], "@") Or StringInStr($cFile[$j], "+") Then

										;Ignore

									Else

										If StringInStr($cFile[$j], "Upgrade") Then
											;Ignore
										Else
											If StringInStr($cFile[$j], "PARTS") Then

												;Ignore

											Else

												If StringInStr($cFile[$j], "PARTI") Then

													;Ignore

												Else

													If StringInStr($cFile[$j], "MODULE") Then

														;Ignore

													Else

														ControlSetText($hMain, "", $iStatusText, "Searching for new parts : " & $i & " / " & UBound($_aCFG))
														_ArrayAdd($aPartCount, $iFilePath)

													EndIf

												EndIf

											EndIf

										EndIf

									EndIf

								EndIf

							EndIf

						EndIf

					EndIf

				EndIf

			EndIf

		Next
	Next

	If UBound($aPartCount) = IniRead($_Index_Path & "_Index_.ini", "PartCount", "Total", "-") Then
		ControlSetText($hMain, "", $iStatus, "Ready")
		ControlSetText($hMain, "", $iStatusText, "...")

	Else
		_Draw_DB_Build_UI()
		_DB_Build()
	EndIf
	$aPartCount = ""

EndFunc   ;==>_DB_Compare_PartCount


;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                         TREE GENERATION
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

Func _TreeView_Grow_Tree()

	Local $aFiles[0], $sTrim, $fList[0], $fListDd

	$aFiles = $PartCFGList

	For $i = 0 To UBound($aFiles)
		If $i = UBound($aFiles) Then ExitLoop

		Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
		Local $aPathSplit = _PathSplit($aFiles[$i], $sDrive, $sDir, $sFileName, $sExtension)

		$sTrim = StringReplace($aFiles[$i], $iGameData, "")

		If StringInStr($sTrim, "\part.cfg") Then

			$sPartNcfg = StringSplit($sTrim, "\")
			$NameEx = $sPartNcfg[UBound($sPartNcfg) - 2] & "___" & $sPartNcfg[UBound($sPartNcfg) - 1]
			$sPathEx = StringReplace($sTrim, "Part.cfg", $NameEx)

			$sTrim = $sPathEx
			ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($aFiles) & " - " & $sTrim)

		EndIf

		ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($aFiles) & " - " & $sTrim)

		_FileCreate(@TempDir & "\TREE_TMP\" & "GameData\" & $sTrim)

	Next
	ControlSetText($hMain, "", $iStatusText, " ")

EndFunc   ;==>_TreeView_Grow_Tree

Func _TreeView_CFGName_FromPath($sFullPath)

	Local $aSplit = StringSplit($sFullPath, "\")

	If $aSplit[0] Then
		ControlSetText($hMain, "", $iStatusText, $aSplit[$aSplit[0]])

		Return $aSplit[$aSplit[0]]
	EndIf
	ControlSetText($hMain, "", $iStatusText, " ")

EndFunc   ;==>_TreeView_CFGName_FromPath

Func _TreeView_ModFolder_FromPath($sFullPath)

	Local $aSplit = StringSplit($sFullPath, "\")

	If $aSplit[0] Then

		ControlSetText($hMain, "", $iStatusText, $aSplit[$aSplit[0]])
		Return $aSplit[$aSplit[0]]
	EndIf
	ControlSetText($hMain, "", $iStatusText, " ")

EndFunc   ;==>_TreeView_ModFolder_FromPath

Func _TreeView_Map_Branches($iTreeTempPath, $sFolderBar = "\", $sTreeBar = "|", $sSeparator = "-", $iNSeparator = 3)

	Local $aFiles = _FileListToArrayRec($iTreeTempPath, "*", $FLTAR_FILESFOLDERS, $FLTAR_RECUR, $FLTAR_SORT)
	Local $sFilePath = ""
	Local $sAttrib = ""
	Local $sFolderName = ""
	Local $sIndentation = ""
	Local $sRelativePath = ""
	Local $sFinalTree = ""

	If $aFiles[0] Then

		Local $sNode = $aFiles[1]

		For $i = 1 To $aFiles[0]

			$sRelativePath = $aFiles[$i]
			$sFilePath = $iTreeTempPath & "\" & $sRelativePath
			$sAttrib = FileGetAttrib($sFilePath)

			If StringInStr($sAttrib, "D") Then

				$sFolderName = _TreeView_ModFolder_FromPath($sFilePath)
				$sIndentation = _TreeView_Set_Branches($iTreeTempPath, $sRelativePath, $sFolderBar, $sTreeBar, $sSeparator)
				$sFinalTree &= $sIndentation & $sFolderName & @CRLF
				ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($aFiles) & " - " & $sFolderName)

			Else

				$sFolderName = _TreeView_CFGName_FromPath($sFilePath)
				$sIndentation = _TreeView_Set_Branches($iTreeTempPath, $sRelativePath, $sFolderBar, $sTreeBar, $sSeparator)
				$sFinalTree &= $sIndentation & $sFolderName & @CRLF
				ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($aFiles) & " - " & $sFolderName)

			EndIf

		Next

	EndIf
	ControlSetText($hMain, "", $iStatusText, " ")

	Return $sFinalTree

EndFunc   ;==>_TreeView_Map_Branches

Func _TreeView_Check_Branches($iTreeTempPath)

	Local $iRet = 0
	Local $hSearch = FileFindFirstFile($iTreeTempPath & "\" & "*")

	If $hSearch = -1 Then
		Return $iRet
	EndIf

	Local $sFileName = ""
	Local $iCount = 0

	While 1
		$sFileName = FileFindNextFile($hSearch)
		ControlSetText($hMain, "", $iStatusText, $sFileName)
		If @error Then
			ExitLoop
		EndIf
		$iCount += 1
		If $iCount > 1 Then
			$iRet = $iCount
			ExitLoop
		EndIf
	WEnd
	FileClose($hSearch)
	Return $iCount
	ControlSetText($hMain, "", $iStatusText, " ")

EndFunc   ;==>_TreeView_Check_Branches

Func _TreeView_Set_Branches($iTreeTempPath, $sFolderRelativePath, $sFolderBar, $sTreeBar, $sSeparator, $iNSeparator = 1)

	Local $aSplit = StringSplit($sFolderRelativePath, "\")

	If $aSplit[0] > 1 Then
		Local $sBars = ""
		Local $iFiles = ""
		Local $sFilePath = ""

		For $i = 1 To $aSplit[0] - 1

			$sFilePath = _ArrayToString($aSplit, "\", 1, $i)
			$iFiles = _TreeView_Check_Branches($iTreeTempPath & "\" & $sFilePath)
			ControlSetText($hMain, "", $iStatusText, $iFiles)

			If @error Then
				ContinueLoop
			EndIf

			If $iFiles > 1 Or $aSplit[0] - 1 = $i Then

				$sBars &= ($i = $aSplit[0] - 1) ? $sFolderBar & _StringRepeat($sSeparator, $iNSeparator) : $sTreeBar & _StringRepeat(" ", $iNSeparator)

			Else

				$sBars &= "" & _StringRepeat(" ", $iNSeparator)

			EndIf

		Next

		Return $sBars

	EndIf
	ControlSetText($hMain, "", $iStatusText, " ")

	Return ""

EndFunc   ;==>_TreeView_Set_Branches

Func _TreeView_Name_Branches()

	FileDelete($_Index_Path & "Trees\PartFolders.tre")
	FileDelete($_Index_Path & "Trees\PartNames.tre")

	_TreeView_Grow_Tree()

	Local $aSymbols[][] = [['', '', '#']]

	Global $iTreeTempPath = String(@TempDir & "\TREE_TMP")
	Local $sTree = ""
	Local $sFileName = ""

	For $i = 0 To 0

		$sTree = _TreeView_Map_Branches($iTreeTempPath, $aSymbols[$i][0], $aSymbols[$i][1], $aSymbols[$i][2])
		$sFileName = $iTreeTempPath & "\Tree-" & String($i + 1) & ".txt"
		ControlSetText($hMain, "", $iStatusText, $i & " Writing : " & $sFileName)

		FileDelete($sFileName)
		FileWrite($sFileName, $sTree)

	Next

	Local $sTree = "", $sPartName, $iName, $pKey, $iPartName, $PartName, $iSpaces

	_FileReadToArray($iTreeTempPath & "\Tree-1.txt", $sTree)
	_ArrayDelete($sTree, 0)
	_ArrayDelete($sTree, 0) ; GameData
	FileDelete(@ScriptDir & "\Files\tree.tmp")
	_FileWriteFromArray($_Index_Path & "Trees\PartFolders.tre", $sTree)
	_TreeView_Split_PerMod($_Index_Path & "Trees\PartFolders.tre", $_Index_Path & "Trees\OriginalPaths\")

	For $i = 0 To UBound($sTree)
		If $i = UBound($sTree) Then ExitLoop

		If StringInStr($sTree[$i], "#") Then

			If StringInStr($sTree[$i], ".cfg") Then

				If StringInStr($sTree[$i], "part.cfg") Then

				EndIf

				$iName = StringReplace($sTree[$i], ".cfg", "")

				$sPartName = StringReplace($iName, "#", "")
				$pKey = IniRead($_Index_Path & "_Index_.ini", "PARTNAMES_INDEX", $sPartName, Default)
				$iPartName = IniRead($_Index_Path & "_Index_.ini", "PART_NAMES", $pKey, Default)
				ControlSetText($hMain, "", $iStatusText, "Listing : " & $PartName)
				$iSpaces = StringSplit($sTree[$i], "#")

				$PartName = $iSpaces[1] & "#" & $pKey

				FileWrite(@ScriptDir & "\Files\tree.tmp", $PartName & "***" & @LF)

			Else

				FileWrite(@ScriptDir & "\Files\tree.tmp", $sTree[$i] & @LF)
				ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($sTree) & " - " & $sTree[$i])

			EndIf

		Else

			FileWrite(@ScriptDir & "\Files\tree.tmp", "#" & $sTree[$i] & @LF)
			ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($sTree) & " - " & $sTree[$i])

		EndIf

	Next
	ControlSetText($hMain, "", $iStatusText, " ")

	FileDelete($iTreeTempPath & "\Tree-1.txt")

	_TreeView_Apply_ModNames()

EndFunc   ;==>_TreeView_Name_Branches

Func _TreeView_Apply_ModNames()

	Local $sTree, $aModFNames, $aModFolders, $fName, $aName, $iSpaces, $ModName, $sModName, $Pre

	$aModFNames = IniReadSection($_Index_Path & "_Index_.ini", "ModFolderNames")
	_ArrayDelete($aModFNames, "0")
	$aModFolders = $aModFNames

	_FileReadToArray(@ScriptDir & "\Files\tree.tmp", $sTree)
	FileDelete(@ScriptDir & "\Files\tree.tmp")
	_ArrayDelete($sTree, "0")


	For $i = 0 To UBound($sTree)
		If $i = UBound($sTree) Then ExitLoop

		For $j = 0 To UBound($aModFolders)
			If $j = UBound($aModFolders) Then ExitLoop

			If StringRegExp($sTree[$i], $aModFolders[$j][0]) Then

				If $Pre == $aModFolders[$j][0] Then
					;
				Else

					$fName = StringReplace($sTree[$i], "#", "")
					$aName = IniRead(@ScriptDir & "\Files\ModNames.ini", "ModNamesByFolder", $fName, "Unlisted")

					If $aName = "Unlisted" Then

						$aName = $aModFolders[$j][0]

					EndIf

					$iSpaces = StringSplit($sTree[$i], "#")
					$ModName = $iSpaces[1] & "#" & $aName
					$ModName = StringReplace($ModName, "#", "# ")
					ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($sTree) & " - " & $ModName)

					FileWrite($_Index_Path & "Trees\PartNames.tre", $ModName & @LF)
					$i += 1
					$Pre = $aModFolders[$j][0]

				EndIf

			Else

			EndIf

		Next
		
		ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($sTree) & " - " & $sModName)
		$sModName = StringReplace($sTree[$i], "#", "# ")
		FileWrite($_Index_Path & "Trees\PartNames.tre", $sModName & @LF)

	Next
	ControlSetText($hMain, "", $iStatusText, " ")

	_TreeView_Split_PerMod($_Index_Path & "Trees\PartNames.tre", $_Index_Path & "Trees\NamedPaths\")
	DirRemove($iTreeTempPath, 1)

EndFunc   ;==>_TreeView_Apply_ModNames

Func _TreeView_Tag_Parts($SubNameN, $LevelN, $ParentLVL)

	If StringInStr($SubNameN, ".cfg") Then

	If StringInStr($SubNameN, "___") Then

		;MsgBox("", "", $SubNameN, 0.5)
		$iName = StringSplit($SubNameN, "___")
		$SubNameN = "part.cfg - " & $iName[1]
		;MsgBox("", "", $SubNameN, 0.5)

	Endif


		$LevelN = GUICtrlCreateTreeViewItem($SubNameN, $ParentLVL)
		GUICtrlSetColor($LevelN, 0xff8040)
		GUICtrlSetOnEvent($LevelN, "_Part_Selected")

		_ArrayAdd($hTreeArray, $SubNameN)

	EndIf

	If StringInStr($SubNameN, "***") Then

		$iName = IniRead($_Index_Path & "_Index_.ini", "PART_NAMES", StringTrimRight($SubNameN, 3), "-N/F-")
		$iName = _SwapSpecialChars($iName)

		If StringInStr($iName, "-N/F-") Then
		Else

			$LevelN = GUICtrlCreateTreeViewItem("● " & $iName, $ParentLVL)
			_ArrayAdd($hTreeArray, "● " & $iName)
			ControlSetText($hMain, "", $iStatusText, " Adding : ● " & $iName)

			If StringInStr($iName, "Deprecated") Or StringInStr($iName, "Obsolete") Then

				GUICtrlSetColor($LevelN, 0x800000)

			Else
				GUICtrlSetColor($LevelN, $Theme_Default_File_Color)

			EndIf

			GUICtrlSetOnEvent($LevelN, "_Part_Selected")
			$iName = ""

		EndIf

	EndIf

EndFunc   ;==>_TreeView_Tag_Parts

Func _TreeView_Build_All($aTree)

	Local $Paths
	Global $hTreeArray[0]

	_GUICtrlTreeView_BeginUpdate($hTree)
	$aFiles = $PartCFGList

	For $i = 1 To $aTree[0]
		$Line = StringStripCR($aTree[$i])
		$level = StringInStr($Line, "#")

		If $level = 1 Then
			$ModName = StringMid($Line, $level + 1)
			$iModName = _SwapSpecialChars($ModName)

			$TopLevel = GUICtrlCreateTreeViewItem($iModName, $hTree)
			GUICtrlSetOnEvent(-1, "_ModName_Selected")
			GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			Global $Ctx_Menu = GUICtrlCreateContextMenu($TopLevel)
			Global $Ctx_Rename = GUICtrlCreateMenuItem("Set name", $Ctx_Menu)
			GUICtrlSetOnEvent($Ctx_Rename, "_ContextMenu_Action")

		EndIf

		If $level = 2 Then

			$SubName2 = StringMid($Line, $level + 1)

			If StringInStr($SubName2, ".cfg") Or StringInStr($SubName2, "***") Then
				$Level2 = "Level" & $level
				_TreeView_Tag_Parts($SubName2, $Level2, $TopLevel)

			Else
				$SubName2 = StringMid($Line, $level + 1)
				$Level2 = GUICtrlCreateTreeViewItem($SubName2, $TopLevel)
				_Treeview_Mark_Deprecated($SubName2)
				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 3 Then

			$SubName3 = StringMid($Line, $level + 1)

			If StringInStr($SubName3, ".cfg") Or StringInStr($SubName3, "***") Then

				$Level3 = "Level" & $level
				_TreeView_Tag_Parts($SubName3, $Level3, $Level2)

			Else

				$SubName3 = StringMid($Line, $level + 1)
				$Level3 = GUICtrlCreateTreeViewItem($SubName3, $Level2)
				_Treeview_Mark_Deprecated($SubName3)
				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf


		If $level = 4 Then

			$SubName4 = StringMid($Line, $level + 1)

			If StringInStr($SubName4, ".cfg") Or StringInStr($SubName4, "***") Then

				$Level4 = "Level" & $level
				_TreeView_Tag_Parts($SubName4, $Level4, $Level3)

			Else
				$SubName4 = StringMid($Line, $level + 1)
				$Level4 = GUICtrlCreateTreeViewItem($SubName4, $Level3)
				_Treeview_Mark_Deprecated($SubName4)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 5 Then

			$SubName5 = StringMid($Line, $level + 1)

			If StringInStr($SubName5, ".cfg") Or StringInStr($SubName5, "***") Then
				$Level5 = "Level" & $level
				_TreeView_Tag_Parts($SubName5, $Level5, $Level4)

			Else
				$SubName5 = StringMid($Line, $level + 1)
				$Level5 = GUICtrlCreateTreeViewItem($SubName5, $Level4)
				_Treeview_Mark_Deprecated($SubName5)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 6 Then

			$SubName6 = StringMid($Line, $level + 1)

			If StringInStr($SubName6, ".cfg") Or StringInStr($SubName6, "***") Then
				$Level6 = "Level" & $level
				_TreeView_Tag_Parts($SubName6, $Level6, $Level5)

			Else
				$SubName6 = StringMid($Line, $level + 1)
				$Level6 = GUICtrlCreateTreeViewItem($SubName6, $Level5)
				_Treeview_Mark_Deprecated($SubName6)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 7 Then

			$SubName7 = StringMid($Line, $level + 1)

			If StringInStr($SubName7, ".cfg") Or StringInStr($SubName7, "***") Then
				$Level7 = "Level" & $level
				_TreeView_Tag_Parts($SubName7, $Level7, $Level6)

			Else
				$SubName7 = StringMid($Line, $level + 1)
				$Level7 = GUICtrlCreateTreeViewItem($SubName7, $Level6)
				_Treeview_Mark_Deprecated($SubName7)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 8 Then

			$SubName8 = StringMid($Line, $level + 1)

			If StringInStr($SubName8, ".cfg") Or StringInStr($SubName8, "***") Then
				$Level8 = "Level" & $level
				_TreeView_Tag_Parts($SubName8, $Level8, $Level7)

			Else
				$SubName8 = StringMid($Line, $level + 1)
				$Level8 = GUICtrlCreateTreeViewItem($SubName8, $Level7)
				_Treeview_Mark_Deprecated($SubName8)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 9 Then

			$SubName9 = StringMid($Line, $level + 1)

			If StringInStr($SubName9, ".cfg") Or StringInStr($SubName9, "***") Then
				$Level8 = "Level" & $level
				_TreeView_Tag_Parts($SubName9, $Level9, $Level8)

			Else
				$SubName9 = StringMid($Line, $level + 1)
				$Level9 = GUICtrlCreateTreeViewItem($SubName9, $Level8)
				_Treeview_Mark_Deprecated($SubName9)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 10 Then

			$SubName10 = StringMid($Line, $level + 1)

			If StringInStr($SubName10, ".cfg") Or StringInStr($SubName10, "***") Then
				$Level10 = "Level" & $level
				_TreeView_Tag_Parts($SubName10, $Level10, $Level9)

			Else
				$SubName10 = StringMid($Line, $level + 1)
				$Level10 = GUICtrlCreateTreeViewItem($SubName10, $Level9)
				_Treeview_Mark_Deprecated($SubName10)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 11 Then

			$SubName11 = StringMid($Line, $level + 1)

			If StringInStr($SubName11, ".cfg") Or StringInStr($SubName11, "***") Then
				$Level11 = "Level" & $level
				_TreeView_Tag_Parts($SubName11, $Level11, $Level10)

			Else
				$SubName11 = StringMid($Line, $level + 1)
				$Level11 = GUICtrlCreateTreeViewItem($SubName11, $Level10)
				_Treeview_Mark_Deprecated($SubName11)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 12 Then

			$SubName12 = StringMid($Line, $level + 1)

			If StringInStr($SubName12, ".cfg") Or StringInStr($SubName12, "***") Then
				$Level12 = "Level" & $level
				_TreeView_Tag_Parts($SubName12, $Level12, $Level11)

			Else
				$SubName12 = StringMid($Line, $level + 1)
				$Level12 = GUICtrlCreateTreeViewItem($SubName12, $Level11)
				_Treeview_Mark_Deprecated($SubName12)
				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 13 Then

			$SubName13 = StringMid($Line, $level + 1)

			If StringInStr($SubName13, ".cfg") Or StringInStr($SubName13, "***") Then
				$Level13 = "Level" & $level
				_TreeView_Tag_Parts($SubName13, $Level13, $Level12)

			Else
				$SubName13 = StringMid($Line, $level + 1)
				$Level13 = GUICtrlCreateTreeViewItem($SubName13, $Level12)
				_Treeview_Mark_Deprecated($SubName13)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 14 Then

			$SubName14 = StringMid($Line, $level + 1)

			If StringInStr($SubName14, ".cfg") Or StringInStr($SubName14, "***") Then
				$Level14 = "Level" & $level
				_TreeView_Tag_Parts($SubName14, $Level14, $Level13)

			Else
				$SubName14 = StringMid($Line, $level + 1)
				$Level14 = GUICtrlCreateTreeViewItem($SubName14, $Level13)
				_Treeview_Mark_Deprecated($SubName14)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 15 Then

			$SubName15 = StringMid($Line, $level + 1)

			If StringInStr($SubName15, ".cfg") Or StringInStr($SubName15, "***") Then
				$Level15 = "Level" & $level
				_TreeView_Tag_Parts($SubName15, $Level15, $Level14)

			Else
				$SubName15 = StringMid($Line, $level + 1)
				$Level15 = GUICtrlCreateTreeViewItem($SubName15, $Level14)
				_Treeview_Mark_Deprecated($SubName15)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 16 Then

			$SubName16 = StringMid($Line, $level + 1)

			If StringInStr($SubName16, ".cfg") Or StringInStr($SubName16, "***") Then
				$Level16 = "Level" & $level
				_TreeView_Tag_Parts($SubName16, $Level16, $Level15)

			Else
				$SubName16 = StringMid($Line, $level + 1)
				$Level16 = GUICtrlCreateTreeViewItem($SubName16, $Level15)
				_Treeview_Mark_Deprecated($SubName16)

				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 17 Then

			$SubName17 = StringMid($Line, $level + 1)

			If StringInStr($SubName17, ".cfg") Or StringInStr($SubName16, "***") Then
				$Level17 = "Level" & $level
				_TreeView_Tag_Parts($SubName17, $Level17, $Level16)

			Else
				$SubName17 = StringMid($Line, $level + 1)
				$Level17 = GUICtrlCreateTreeViewItem($SubName17, $Level16)
				_Treeview_Mark_Deprecated($SubName17)
				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 18 Then

			$SubName18 = StringMid($Line, $level + 1)

			If StringInStr($SubName18, ".cfg") Or StringInStr($SubName18, "***") Then
				$Level18 = "Level" & $level
				_TreeView_Tag_Parts($SubName18, $Level18, $Level17)

			Else
				$SubName18 = StringMid($Line, $level + 1)
				$Level18 = GUICtrlCreateTreeViewItem($SubName18, $Level17)
				_Treeview_Mark_Deprecated($SubName18)
				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf
		EndIf

		If $level = 19 Then

			$SubName19 = StringMid($Line, $level + 1)

			If StringInStr($SubName19, ".cfg") Or StringInStr($SubName19, "***") Then
				$Level19 = "Level" & $level
				_TreeView_Tag_Parts($SubName19, $Level19, $Level18)

			Else
				$SubName19 = StringMid($Line, $level + 1)
				$Level19 = GUICtrlCreateTreeViewItem($SubName19, $Level18)
				_Treeview_Mark_Deprecated($SubName19)
				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

		If $level = 20 Then

			$SubName20 = StringMid($Line, $level + 1)

			If StringInStr($SubName20, ".cfg") Or StringInStr($SubName20, "***") Then
				$Level20 = "Level" & $level
				_TreeView_Tag_Parts($SubName20, $Level20, $Level19)

			Else
				$SubName20 = StringMid($Line, $level + 1)
				$Level20 = GUICtrlCreateTreeViewItem($SubName20, $Level19)
				_Treeview_Mark_Deprecated($SubName20)
				GUICtrlSetOnEvent(-1, "_SubFolder_Selected")
				GUICtrlSetColor(-1, $Theme_Defualt_Font_Color)

			EndIf

		EndIf

	Next
	_GUICtrlTreeView_EndUpdate($hTree)

EndFunc   ;==>_TreeView_Build_All

Func _Treeview_Mark_Deprecated($SName)

	If StringInStr($SName, "Deprecated") Or _
			StringInStr($SName, "Obsolete") Then
		GUICtrlSetColor(-1, 0x800000)
	EndIf

EndFunc   ;==>_Treeview_Mark_Deprecated

Func _TreeView_Split_PerMod($SourceTree, $TreePath)

	Local $aTree, $aIndices[0], $LineCount

	$aTree = FileReadToArray($SourceTree)

	For $i = 0 To UBound($aTree)
		If $i = UBound($aTree) Then ExitLoop

		If StringInStr($aTree[$i], " #") Then
			$LineCount += 1
		Else
			_ArrayAdd($aIndices, $i)
			$LineCount += 1
		EndIf

	Next

	_ArrayAdd($aIndices, $LineCount, UBound($aIndices))

	For $i = 0 To UBound($aIndices)
		If $i = UBound($aIndices) Then ExitLoop

		If $aIndices[$i] = $LineCount Then
			ExitLoop

		Else

			$aStart = $aIndices[$i]
			$aEnd = $aIndices[$i + 1] - 1
			$FileName = StringReplace($aTree[$aStart], "# ", "")
			$FileName = StringReplace($aTree[$aStart], "#", "")

			If StringInStr($TreePath, "Named") Then

				$File = $TreePath & StringTrimLeft($FileName, 1) & ".tre"

			Else

				$File = $TreePath & $FileName & ".tre"

			EndIf

			ControlSetText($hMain, "", $iStatusText, $i+1 & " / " & UBound($aIndices) & " - " & $File)

			FileDelete($File)
			_FileWriteFromArray($File, $aTree, $aStart, $aEnd, Default)

		EndIf

	Next

EndFunc   ;==>_TreeView_Split_PerMod

Func _TreeView_Load_Branches($TvFileNm)

	Dim $aTree = StringSplit(FileRead($TvFileNm, FileGetSize($TvFileNm)), @LF)
	_TreeView_Build_All($aTree)

EndFunc   ;==>_TreeView_Load_Branches

;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                      UI ELEMENTS SHOW/HIDE
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

Func _Hide_Dividers()

	GUICtrlSetState($Div1, $GUI_HIDE)
	GUICtrlSetState($Div2, $GUI_HIDE)
	GUICtrlSetState($Div3, $GUI_HIDE)
	GUICtrlSetState($Div4, $GUI_HIDE)

EndFunc   ;==>_Hide_Dividers

Func _Show_Dividers()

	GUICtrlSetState($Div1, $GUI_SHOW)
	GUICtrlSetState($Div2, $GUI_SHOW)
	GUICtrlSetState($Div3, $GUI_SHOW)
	GUICtrlSetState($Div4, $GUI_SHOW)

EndFunc   ;==>_Show_Dividers

Func _Hide_MainBtns()

	GUICtrlSetState($_BG_Loading_Pic, $GUI_HIDE)
	GUICtrlSetState($Btn_FullNames_View, $GUI_HIDE)
	GUICtrlSetState($Btn_FileAndFolder_View, $GUI_HIDE)
	GUICtrlSetState($hCombo, $GUI_HIDE)
	GUICtrlSetState($SearchInput, $GUI_HIDE)
	GUICtrlSetState($Btn_Search, $GUI_HIDE)
	GUICtrlSetState($Btn_WebSearch, $GUI_HIDE)
	GUICtrlSetState($Btn_Paste, $GUI_HIDE)
	GUICtrlSetState($Btn_SearchSpaceDock, $GUI_HIDE)
	GUICtrlSetState($Btn_ModDownload, $GUI_HIDE)
	GUICtrlSetState($_BG_Pic, $GUI_HIDE)
	GUICtrlSetState($Btn_ModSearch, $GUI_HIDE)

EndFunc   ;==>_Hide_MainBtns

Func _Show_MainBtns()

	GUICtrlSetState($_BG_Loading_Pic, $GUI_SHOW)
	GUICtrlSetState($Btn_FullNames_View, $GUI_SHOW)
	GUICtrlSetState($Btn_FileAndFolder_View, $GUI_SHOW)
	GUICtrlSetState($hCombo, $GUI_SHOW)
	GUICtrlSetState($SearchInput, $GUI_SHOW)
	GUICtrlSetState($Btn_Search, $GUI_SHOW)
	GUICtrlSetState($Btn_WebSearch, $GUI_SHOW)
	GUICtrlSetState($Btn_Paste, $GUI_SHOW)
	GUICtrlSetState($Btn_SearchSpaceDock, $GUI_SHOW)

EndFunc   ;==>_Show_MainBtns

Func _Hide_TreeCtrlBtns()

	GUICtrlSetState($Btn_TreeEnd, $GUI_HIDE)
	GUICtrlSetState($Btn_TreePrev, $GUI_HIDE)
	GUICtrlSetState($Btn_TreeNext, $GUI_HIDE)
	GUICtrlSetState($Btn_TreeTop, $GUI_HIDE)
	GUICtrlSetState($TV_Collapse, $GUI_HIDE)
	GUICtrlSetState($TV_Expand, $GUI_HIDE)

EndFunc   ;==>_Hide_TreeCtrlBtns

Func _Show_TreeCtrlBtns()

	GUICtrlSetState($Btn_TreeEnd, $GUI_SHOW)
	GUICtrlSetState($Btn_TreePrev, $GUI_SHOW)
	GUICtrlSetState($Btn_TreeNext, $GUI_SHOW)
	GUICtrlSetState($Btn_TreeTop, $GUI_SHOW)
	GUICtrlSetState($TV_Collapse, $GUI_SHOW)
	GUICtrlSetState($TV_Expand, $GUI_SHOW)

EndFunc   ;==>_Show_TreeCtrlBtns

Func _Hide_InfoIcons()

	$info1 = ControlCommand($hMain, "", $Display_ModName, "IsVisible", "")
	$info2 = ControlCommand($hMain, "", $Display_PartName, "IsVisible", "")
	$info3 = ControlCommand($hMain, "", $Display_Category, "IsVisible", "")

	If $info1 = 1 Or _
			$info2 = 1 Or _
			$info3 = 1 Then

		GUICtrlSetState($Display_PartName, $GUI_HIDE)
		GUICtrlSetState($Display_ModName, $GUI_HIDE)
		GUICtrlSetState($idPreviewPic, $GUI_HIDE)
		GUICtrlSetState($iDescription, $GUI_HIDE)
		GUICtrlSetState($Display_DescriptionIMG, $GUI_HIDE)
		GUICtrlSetState($Display_Amount1, $GUI_HIDE)
		GUICtrlSetState($Display_Amount2, $GUI_HIDE)
		GUICtrlSetState($Display_Amount3, $GUI_HIDE)
		GUICtrlSetState($Display_Amount4, $GUI_HIDE)
		GUICtrlSetState($Display_BreakingForce, $GUI_HIDE)
		GUICtrlSetState($Display_BreakingForceIMG, $GUI_HIDE)
		GUICtrlSetState($Display_Buoy, $GUI_HIDE)
		GUICtrlSetState($Display_BuoyIMG, $GUI_HIDE)
		GUICtrlSetState($Display_Capacity1, $GUI_HIDE)
		GUICtrlSetState($Display_Capacity2, $GUI_HIDE)
		GUICtrlSetState($Display_Capacity3, $GUI_HIDE)
		GUICtrlSetState($Display_Capacity4, $GUI_HIDE)
		GUICtrlSetState($Display_Category, $GUI_HIDE)
		GUICtrlSetState($Display_CategoryIMG, $GUI_HIDE)
		GUICtrlSetState($Display_CrewCapacity, $GUI_HIDE)
		GUICtrlSetState($Display_CrewCapacityIMG, $GUI_HIDE)
		GUICtrlSetState($Display_Drag, $GUI_HIDE)
		GUICtrlSetState($Display_DragIMG, $GUI_HIDE)
		GUICtrlSetState($Display_Funds, $GUI_HIDE)
		GUICtrlSetState($Display_FundsIMG, $GUI_HIDE)
		GUICtrlSetState($Display_Mass, $GUI_HIDE)
		GUICtrlSetState($Display_MassIMG, $GUI_HIDE)
		GUICtrlSetState($Display_Resource1, $GUI_HIDE)
		GUICtrlSetState($Display_Resource1IMG, $GUI_HIDE)
		GUICtrlSetState($Display_Resource2, $GUI_HIDE)
		GUICtrlSetState($Display_Resource2IMG, $GUI_HIDE)
		GUICtrlSetState($Display_Resource3, $GUI_HIDE)
		GUICtrlSetState($Display_Resource3IMG, $GUI_HIDE)
		GUICtrlSetState($Display_Resource4, $GUI_HIDE)
		GUICtrlSetState($Display_Resource4IMG, $GUI_HIDE)
		GUICtrlSetState($Display_Temp, $GUI_HIDE)
		GUICtrlSetState($Display_TempIMG, $GUI_HIDE)
		GUICtrlSetState($Display_Tol, $GUI_HIDE)
		GUICtrlSetState($Display_TolIMG, $GUI_HIDE)
		GUICtrlSetState($Display_VesselType, $GUI_HIDE)
		GUICtrlSetState($Display_VesselTypeIMG, $GUI_HIDE)

	EndIf

EndFunc   ;==>_Hide_InfoIcons

Func _Show_InfoIcons()

	GUICtrlSetState($Display_PartName, $GUI_SHOW)
	GUICtrlSetState($Display_ModName, $GUI_SHOW)
	GUICtrlSetState($idPreviewPic, $GUI_SHOW)
	GUICtrlSetState($iDescription, $GUI_HIDE)
	GUICtrlSetState($Display_DescriptionIMG, $GUI_SHOW)
	GUICtrlSetState($Display_Amount1, $GUI_SHOW)
	GUICtrlSetState($Display_Amount2, $GUI_SHOW)
	GUICtrlSetState($Display_Amount3, $GUI_SHOW)
	GUICtrlSetState($Display_Amount4, $GUI_SHOW)
	GUICtrlSetState($Display_BreakingForce, $GUI_SHOW)
	GUICtrlSetState($Display_BreakingForceIMG, $GUI_SHOW)
	GUICtrlSetState($Display_Buoy, $GUI_SHOW)
	GUICtrlSetState($Display_BuoyIMG, $GUI_SHOW)
	GUICtrlSetState($Display_Capacity1, $GUI_SHOW)
	GUICtrlSetState($Display_Capacity2, $GUI_SHOW)
	GUICtrlSetState($Display_Capacity3, $GUI_SHOW)
	GUICtrlSetState($Display_Capacity4, $GUI_SHOW)
	GUICtrlSetState($Display_Category, $GUI_SHOW)
	GUICtrlSetState($Display_CategoryIMG, $GUI_SHOW)
	GUICtrlSetState($Display_CrewCapacity, $GUI_SHOW)
	GUICtrlSetState($Display_CrewCapacityIMG, $GUI_SHOW)
	GUICtrlSetState($Display_Drag, $GUI_SHOW)
	GUICtrlSetState($Display_DragIMG, $GUI_SHOW)
	GUICtrlSetState($Display_Funds, $GUI_SHOW)
	GUICtrlSetState($Display_FundsIMG, $GUI_SHOW)
	GUICtrlSetState($Display_Mass, $GUI_SHOW)
	GUICtrlSetState($Display_MassIMG, $GUI_SHOW)
	GUICtrlSetState($Display_Resource1, $GUI_SHOW)
	GUICtrlSetState($Display_Resource1IMG, $GUI_SHOW)
	GUICtrlSetState($Display_Resource2, $GUI_SHOW)
	GUICtrlSetState($Display_Resource2IMG, $GUI_SHOW)
	GUICtrlSetState($Display_Resource3, $GUI_SHOW)
	GUICtrlSetState($Display_Resource3IMG, $GUI_SHOW)
	GUICtrlSetState($Display_Resource4, $GUI_SHOW)
	GUICtrlSetState($Display_Resource4IMG, $GUI_SHOW)
	GUICtrlSetState($Display_Temp, $GUI_SHOW)
	GUICtrlSetState($Display_TempIMG, $GUI_SHOW)
	GUICtrlSetState($Display_Tol, $GUI_SHOW)
	GUICtrlSetState($Display_TolIMG, $GUI_SHOW)
	GUICtrlSetState($Display_VesselType, $GUI_SHOW)
	GUICtrlSetState($Display_VesselTypeIMG, $GUI_SHOW)

EndFunc   ;==>_Show_InfoIcons

Func _Hide_CategoryBtns()

	GUICtrlSetState($Cat_Aero, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Cargo, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Communication, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Control, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Coupling, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Electrical, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Engine, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_FuelTank, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Ground, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Payload, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Pods, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Science, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Structural, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Thermal, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_Utility, $GUI_HIDE + $GUI_DISABLE)
	GUICtrlSetState($Cat_UnKnown, $GUI_HIDE + $GUI_DISABLE)

EndFunc   ;==>_Hide_CategoryBtns

Func _Show_CategoryBtns()

	_LoadPNG($CategoryButtonsPath & "Pods.png", $Cat_Pods)
	_LoadPNG($CategoryButtonsPath & "FuelTank.png", $Cat_FuelTank)
	_LoadPNG($CategoryButtonsPath & "Engine.png", $Cat_Engine)
	_LoadPNG($CategoryButtonsPath & "Control.png", $Cat_Control)
	_LoadPNG($CategoryButtonsPath & "Structural.png", $Cat_Structural)
	_LoadPNG($CategoryButtonsPath & "Coupling.png", $Cat_Coupling)
	_LoadPNG($CategoryButtonsPath & "Payload.png", $Cat_Payload)
	_LoadPNG($CategoryButtonsPath & "Aero.png", $Cat_Aero)
	_LoadPNG($CategoryButtonsPath & "Ground.png", $Cat_Ground)
	_LoadPNG($CategoryButtonsPath & "Thermal.png", $Cat_Thermal)
	_LoadPNG($CategoryButtonsPath & "Electrical.png", $Cat_Electrical)
	_LoadPNG($CategoryButtonsPath & "Communication.png", $Cat_Communication)
	_LoadPNG($CategoryButtonsPath & "Science.png", $Cat_Science)
	_LoadPNG($CategoryButtonsPath & "Cargo.png", $Cat_Cargo)
	_LoadPNG($CategoryButtonsPath & "Utility.png", $Cat_Utility)
	_LoadPNG($CategoryButtonsPath & "UnKnown.png", $Cat_UnKnown)

	GUICtrlSetState($Cat_Aero, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Cargo, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Communication, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Control, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Coupling, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Electrical, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Engine, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_FuelTank, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Ground, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Payload, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Pods, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Science, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Structural, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Thermal, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_UnKnown, $GUI_SHOW + $GUI_ENABLE)
	GUICtrlSetState($Cat_Utility, $GUI_SHOW + $GUI_ENABLE)

EndFunc   ;==>_Show_CategoryBtns

Func _Disable_CategoryBtns()

	If $ListViewMode = True Then

		GUICtrlDelete($Cat_Aero)
		GUICtrlDelete($Cat_Cargo)
		GUICtrlDelete($Cat_Communication)
		GUICtrlDelete($Cat_Control)
		GUICtrlDelete($Cat_Coupling)
		GUICtrlDelete($Cat_Electrical)
		GUICtrlDelete($Cat_Engine)
		GUICtrlDelete($Cat_FuelTank)
		GUICtrlDelete($Cat_Ground)
		GUICtrlDelete($Cat_Payload)
		GUICtrlDelete($Cat_Pods)
		GUICtrlDelete($Cat_Science)
		GUICtrlDelete($Cat_Structural)
		GUICtrlDelete($Cat_Thermal)
		GUICtrlDelete($Cat_UnKnown)
		GUICtrlDelete($Cat_Utility)

	EndIf

EndFunc   ;==>_Disable_CategoryBtns

Func _Hide_DB_Build_UI()

	GUICtrlSetState($LoadingBG, $GUI_HIDE)
	GUICtrlSetState($Loading1, $GUI_HIDE)
	GUICtrlSetState($Loading10, $GUI_HIDE)
	GUICtrlSetState($Loading10Done, $GUI_HIDE)
	GUICtrlSetState($Loading11, $GUI_HIDE)
	GUICtrlSetState($Loading11Done, $GUI_HIDE)
	GUICtrlSetState($Loading1b, $GUI_HIDE)
	GUICtrlSetState($Loading1c, $GUI_HIDE)
	GUICtrlSetState($Loading2, $GUI_HIDE)
	GUICtrlSetState($Loading2Done, $GUI_HIDE)
	GUICtrlSetState($Loading3, $GUI_HIDE)
	GUICtrlSetState($Loading3Done, $GUI_HIDE)
	GUICtrlSetState($Loading4, $GUI_HIDE)
	GUICtrlSetState($Loading4Done, $GUI_HIDE)
	GUICtrlSetState($Loading5, $GUI_HIDE)
	GUICtrlSetState($Loading5Done, $GUI_HIDE)
	GUICtrlSetState($Loading6, $GUI_HIDE)
	GUICtrlSetState($Loading6Done, $GUI_HIDE)
	GUICtrlSetState($Loading7, $GUI_HIDE)
	GUICtrlSetState($Loading7Done, $GUI_HIDE)
	GUICtrlSetState($Loading8, $GUI_HIDE)
	GUICtrlSetState($Loading8Done, $GUI_HIDE)
	GUICtrlSetState($Loading9, $GUI_HIDE)
	GUICtrlSetState($Loading9Done, $GUI_HIDE)
	GUICtrlSetState($Loading11, $GUI_HIDE)
	GUICtrlSetState($LoadingGraphic, $GUI_HIDE)

EndFunc   ;==>_Hide_DB_Build_UI

Func _HideDraw_Settings_UI()


	$info = ControlCommand($hMain, "", $_Grp_Database, "IsVisible", "")

	If $info = 1 Then

		GUICtrlDelete($_Grp_Database)
		GUICtrlDelete($Btn_RebuilDB)
		GUICtrlDelete($Btn_EditSetttings)
		GUICtrlDelete($_Grp_WinSettings)
		GUICtrlDelete($Btn_OnTop)
		GUICtrlDelete($Btn_WinPositon)
		GUICtrlDelete($Btn_LargeUI)
		GUICtrlDelete($Btn_CenterWin)
		GUICtrlDelete($Btn_MakeShortCut)
		GUICtrlDelete($BannerIMG)
		GUICtrlDelete($_Grp_Support)
		GUICtrlDelete($IMG_Support)
		GUICtrlDelete($Btn_Donate)
		$SettingsMode = False

	EndIf

EndFunc   ;==>_HideDraw_Settings_UI

;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                          HOVER ACTIONS
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

;╭──────────────────────-───────────────────────╮
;                   MAIN BUTTONS
;╰──────────────────────-───────────────────────╯

; - Tree view button

Func FullNames_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_FullNames_View

			GUICtrlSetState($Btn_FullNames_View, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "TreeB.png", $Btn_FullNames_View)
			GUICtrlSetState($Btn_FullNames_View, $GUI_Show)

	EndSwitch
EndFunc   ;==>FullNames_Hover

Func FullNames_Leave_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_FullNames_View

			GUICtrlSetState($Btn_FullNames_View, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "TreeA.png", $Btn_FullNames_View)
			GUICtrlSetState($Btn_FullNames_View, $GUI_Show)

	EndSwitch
EndFunc   ;==>FullNames_Leave_Hover

; - Tree folder view button

Func Folder_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_FileAndFolder_View

			GUICtrlSetState($Btn_FileAndFolder_View, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "FolderTreeB.png", $Btn_FileAndFolder_View)
			GUICtrlSetState($Btn_FileAndFolder_View, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Folder_Hover

Func Folder_Leave_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_FileAndFolder_View
			GUICtrlSetState($Btn_FileAndFolder_View, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "FolderTreeA.png", $Btn_FileAndFolder_View)
			GUICtrlSetState($Btn_FileAndFolder_View, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Folder_Leave_Hover

; - Open folder button

Func OpenFolder_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_OpenFolder

			GUICtrlSetState($Btn_OpenFolder, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "FolderB.png", $Btn_OpenFolder)
			GUICtrlSetState($Btn_OpenFolder, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>OpenFolder_Hover

Func OpenFolder_Leave_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_OpenFolder
			GUICtrlSetState($Btn_OpenFolder, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "FolderA.png", $Btn_OpenFolder)
			GUICtrlSetState($Btn_OpenFolder, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>OpenFolder_Leave_Hover

; - Open edit cfg button

Func EditCFG_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_EditCFG

			GUICtrlSetState($Btn_EditCFG, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "EditB.png", $Btn_EditCFG)
			GUICtrlSetState($Btn_EditCFG, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>EditCFG_Hover

Func EditCFG_Leave_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_EditCFG
			GUICtrlSetState($Btn_EditCFG, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "EditA.png", $Btn_EditCFG)
			GUICtrlSetState($Btn_EditCFG, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>EditCFG_Leave_Hover

; - Search tree button

Func Search_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_Search

			GUICtrlSetState($Btn_Search, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "SearchB.png", $Btn_Search)
			GUICtrlSetState($Btn_Search, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Search_Hover

Func Search_Leave_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_Search
			GUICtrlSetState($Btn_Search, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "Search.png", $Btn_Search)
			GUICtrlSetState($Btn_Search, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Search_Leave_Hover

; - Search Spacedock button

Func WebSearch_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_SearchSpaceDock

			GUICtrlSetState($Btn_SearchSpaceDock, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "WebSearchB.png", $Btn_SearchSpaceDock)
			GUICtrlSetState($Btn_SearchSpaceDock, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>WebSearch_Hover

Func WebSearch_Leave_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_SearchSpaceDock
			GUICtrlSetState($Btn_SearchSpaceDock, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "WebSearch.png", $Btn_SearchSpaceDock)
			GUICtrlSetState($Btn_SearchSpaceDock, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>WebSearch_Leave_Hover

; - Paste button

Func Paste_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_Paste

			GUICtrlSetState($Btn_Paste, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "PasteB.png", $Btn_Paste)
			GUICtrlSetState($Btn_Paste, $GUI_SHOW)
			GUICtrlSetTip($Btn_Paste, "One click!", "Paste & Search")

	EndSwitch
EndFunc   ;==>Paste_Hover

Func Paste_Leave_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_Paste
			GUICtrlSetState($Btn_Paste, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "Paste.png", $Btn_Paste)
			GUICtrlSetState($Btn_Paste, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Paste_Leave_Hover

; - KSP Forum Search button

Func WebSearch2_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_WebSearch
			GUICtrlSetState($Btn_WebSearch, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "GoogleB.png", $Btn_WebSearch)
			GUICtrlSetState($Btn_WebSearch, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>WebSearch2_Hover

Func WebSearch2_Leave_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_WebSearch
			GUICtrlSetState($Btn_WebSearch, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "Google.png", $Btn_WebSearch)
			GUICtrlSetState($Btn_WebSearch, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>WebSearch2_Leave_Hover

; - Settings button

Func Settings_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_Settings
			GUICtrlSetState($Btn_Settings, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "SettingsB.png", $Btn_Settings)
			GUICtrlSetState($Btn_Settings, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Settings_Hover

Func Settings_Leave_Hover($iCtrlID)
	Switch $iCtrlID
		Case $Btn_Settings
			GUICtrlSetState($Btn_Settings, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & "Settings.png", $Btn_Settings)
			GUICtrlSetState($Btn_Settings, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Settings_Leave_Hover

; - Help button

Func Help_Hover($iCtrlID)

	Local $iCategory = $Btn_Help
	Local $iFname = "Help"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Help_Hover

Func Help_Leave_Hover($iCtrlID)

	Local $iCategory = $Btn_Help
	Local $iFname = "Help"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Help_Leave_Hover

; - Download button

Func ModDownload_Hover($iCtrlID)

	Local $iCategory = $Btn_ModDownload
	Local $iFname = "Download"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>ModDownload_Hover

Func ModDownload_Leave_Hover($iCtrlID)

	Local $iCategory = $Btn_ModDownload
	Local $iFname = "Download"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($MainButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>ModDownload_Leave_Hover


;╭──────────────────────-───────────────────────╮
;                  TREE CONTROLS
;╰──────────────────────-───────────────────────╯

; - Tree goto top button

Func TreeTop_Hover($iCtrlID)

	Switch $iCtrlID
		Case $Btn_TreeTop

			GUICtrlSetState($Btn_TreeTop, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "GotoTopB.png", $Btn_TreeTop)
			GUICtrlSetState($Btn_TreeTop, $GUI_SHOW)
			GUICtrlSetTip($Btn_TreeTop, "Goto to top")

	EndSwitch

EndFunc   ;==>TreeTop_Hover

Func TreeTop_Leave_Hover($iCtrlID)

	Switch $iCtrlID
		Case $Btn_TreeTop

			GUICtrlSetState($Btn_TreeTop, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "GotoTop.png", $Btn_TreeTop)
			GUICtrlSetState($Btn_TreeTop, $GUI_SHOW)

	EndSwitch

EndFunc   ;==>TreeTop_Leave_Hover

; - Tree next button

Func TreeNext_Hover($iCtrlID)

	Switch $iCtrlID
		Case $Btn_TreeNext

			GUICtrlSetState($Btn_TreeNext, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "NextB.png", $Btn_TreeNext)
			GUICtrlSetState($Btn_TreeNext, $GUI_SHOW)
			GUICtrlSetTip($Btn_TreeNext, "Next level")

	EndSwitch

EndFunc   ;==>TreeNext_Hover

Func TreeNext_Leave_Hover($iCtrlID)

	Switch $iCtrlID
		Case $Btn_TreeNext

			GUICtrlSetState($Btn_TreeNext, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "Next.png", $Btn_TreeNext)
			GUICtrlSetState($Btn_TreeNext, $GUI_SHOW)

	EndSwitch

EndFunc   ;==>TreeNext_Leave_Hover

; - Tree next button

Func TreePrev_Hover($iCtrlID)

	Switch $iCtrlID
		Case $Btn_TreePrev

			GUICtrlSetState($Btn_TreePrev, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "PreviousB.png", $Btn_TreePrev)
			GUICtrlSetState($Btn_TreePrev, $GUI_SHOW)
			GUICtrlSetTip($Btn_TreePrev, "Previous level")

	EndSwitch

EndFunc   ;==>TreePrev_Hover

Func TreePrev_Leave_Hover($iCtrlID)

	Switch $iCtrlID
		Case $Btn_TreePrev

			GUICtrlSetState($Btn_TreePrev, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "Previous.png", $Btn_TreePrev)
			GUICtrlSetState($Btn_TreePrev, $GUI_SHOW)

	EndSwitch

EndFunc   ;==>TreePrev_Leave_Hover

; - Tree end button

Func TreeEnd_Hover($iCtrlID)

	Switch $iCtrlID
		Case $Btn_TreeEnd

			GUICtrlSetState($Btn_TreeEnd, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "GotoBottomB.png", $Btn_TreeEnd)
			GUICtrlSetState($Btn_TreeEnd, $GUI_SHOW)
			GUICtrlSetTip($Btn_TreeEnd, "Goto end")

	EndSwitch

EndFunc   ;==>TreeEnd_Hover

Func TreeEnd_Leave_Hover($iCtrlID)

	Switch $iCtrlID
		Case $Btn_TreeEnd

			GUICtrlSetState($Btn_TreeEnd, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "GotoBottom.png", $Btn_TreeEnd)
			GUICtrlSetState($Btn_TreeEnd, $GUI_SHOW)

	EndSwitch

EndFunc   ;==>TreeEnd_Leave_Hover

; - Tree expand button

Func TvEx_Hover($iCtrlID)

	Switch $iCtrlID
		Case $TV_Expand

			GUICtrlSetState($TV_Expand, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "ExpandB.png", $TV_Expand)
			GUICtrlSetState($TV_Expand, $GUI_SHOW)
			GUICtrlSetTip($TV_Expand, "Expand All")

	EndSwitch

EndFunc   ;==>TvEx_Hover

Func TvEx_Leave_Hover($iCtrlID)

	Switch $iCtrlID
		Case $TV_Expand

			GUICtrlSetState($TV_Expand, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "Expand.png", $TV_Expand)
			GUICtrlSetState($TV_Expand, $GUI_SHOW)

	EndSwitch

EndFunc   ;==>TvEx_Leave_Hover

; - Tree collapse button

Func TvCol_Hover($iCtrlID)

	Switch $iCtrlID
		Case $TV_Collapse

			GUICtrlSetState($TV_Collapse, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "CollapseB.png", $TV_Collapse)
			GUICtrlSetState($TV_Collapse, $GUI_SHOW)
			GUICtrlSetTip($TV_Collapse, "Collapse all")

	EndSwitch

EndFunc   ;==>TvCol_Hover

Func TvCol_Leave_Hover($iCtrlID)

	Switch $iCtrlID

		Case $TV_Collapse

			GUICtrlSetState($TV_Collapse, $GUI_HIDE)
			_LoadPNG($TreeCtrlButtonsPath & "Collapse.png", $TV_Collapse)
			GUICtrlSetState($TV_Collapse, $GUI_SHOW)
	EndSwitch

EndFunc   ;==>TvCol_Leave_Hover

;╭──────────────────────-───────────────────────╮
;               CATEGORY BUTTONS
;╰──────────────────────-───────────────────────╯

; - Filter payload Button

Func Cat_Payload_Hover($iCtrlID)

	Local $iCategory = $Cat_Payload
	Local $iFname = "Payload"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Payload_Hover

Func Cat_Payload_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Payload
	Local $iFname = "Payload"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Payload_Leave_Hover

; - Filter pods Button

Func Cat_Pods_Hover($iCtrlID)

	Local $iCategory = $Cat_Pods
	Local $iFname = "Pods"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Pods_Hover

Func Cat_Pods_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Pods
	Local $iFname = "Pods"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Pods_Leave_Hover

; - Filter fuel tank Button

Func Cat_FuelTank_Hover($iCtrlID)

	Local $iCategory = $Cat_FuelTank
	Local $iFname = "FuelTank"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_FuelTank_Hover

Func Cat_FuelTank_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_FuelTank
	Local $iFname = "FuelTank"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_FuelTank_Leave_Hover

; - Filter engines Button

Func Cat_Engine_Hover($iCtrlID)

	Local $iCategory = $Cat_Engine
	Local $iFname = "Engine"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Engine_Hover

Func Cat_Engine_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Engine
	Local $iFname = "Engine"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Engine_Leave_Hover

; - Filter control Button

Func Cat_Control_Hover($iCtrlID)

	Local $iCategory = $Cat_Control
	Local $iFname = "Control"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Control_Hover

Func Cat_Control_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Control
	Local $iFname = "Control"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Control_Leave_Hover

; - Filter structural Button

Func Cat_Structural_Hover($iCtrlID)

	Local $iCategory = $Cat_Structural
	Local $iFname = "Structural"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Structural_Hover

Func Cat_Structural_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Structural
	Local $iFname = "Structural"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Structural_Leave_Hover

; - Filter coupling Button

Func Cat_Coupling_Hover($iCtrlID)

	Local $iCategory = $Cat_Coupling
	Local $iFname = "Coupling"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Coupling_Hover

Func Cat_Coupling_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Coupling
	Local $iFname = "Coupling"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Coupling_Leave_Hover

; - Filter aero Button

Func Cat_Aero_Hover($iCtrlID)

	Local $iCategory = $Cat_Aero
	Local $iFname = "Aero"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Aero_Hover

Func Cat_Aero_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Aero
	Local $iFname = "Aero"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Aero_Leave_Hover

; - Filter ground Button

Func Cat_Ground_Hover($iCtrlID)

	Local $iCategory = $Cat_Ground
	Local $iFname = "Ground"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Ground_Hover

Func Cat_Ground_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Ground
	Local $iFname = "Ground"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Ground_Leave_Hover

; - Filter thermal Button

Func Cat_Thermal_Hover($iCtrlID)

	Local $iCategory = $Cat_Thermal
	Local $iFname = "Thermal"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Thermal_Hover

Func Cat_Thermal_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Thermal
	Local $iFname = "Thermal"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Thermal_Leave_Hover

; - Filter electrical Button

Func Cat_Electrical_Hover($iCtrlID)

	Local $iCategory = $Cat_Electrical
	Local $iFname = "Electrical"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Electrical_Hover

Func Cat_Electrical_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Electrical
	Local $iFname = "Electrical"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Electrical_Leave_Hover

; - Filter communication Button

Func Cat_Communication_Hover($iCtrlID)

	Local $iCategory = $Cat_Communication
	Local $iFname = "Communication"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Communication_Hover

Func Cat_Communication_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Communication
	Local $iFname = "Communication"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Communication_Leave_Hover

; - Filter science Button

Func Cat_Science_Hover($iCtrlID)

	Local $iCategory = $Cat_Science
	Local $iFname = "Science"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Science_Hover

Func Cat_Science_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Science
	Local $iFname = "Science"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Science_Leave_Hover

; - Filter cargo Button

Func Cat_Cargo_Hover($iCtrlID)

	Local $iCategory = $Cat_Cargo
	Local $iFname = "Cargo"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Cargo_Hover

Func Cat_Cargo_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Cargo
	Local $iFname = "Cargo"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Cargo_Leave_Hover

; - Filter utility Button

Func Cat_Utility_Hover($iCtrlID)

	Local $iCategory = $Cat_Utility
	Local $iFname = "Utility"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Utility_Hover

Func Cat_Utility_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_Utility
	Local $iFname = "Utility"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Utility_Leave_Hover

; - Filter unknown Button

Func Cat_Unknown_Hover($iCtrlID)

	Local $iCategory = $Cat_UnKnown
	Local $iFname = "Unknown"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)



	EndSwitch
EndFunc   ;==>Cat_Unknown_Hover

Func Cat_Unknown_Leave_Hover($iCtrlID)

	Local $iCategory = $Cat_UnKnown
	Local $iFname = "Unknown"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($CategoryButtonsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)
			

	EndSwitch
EndFunc   ;==>Cat_Unknown_Leave_Hover


;╭──────────────────────-───────────────────────╮
;                 INFOVIEW ICONS
;╰──────────────────────-───────────────────────╯


Func Category_Hover($iCtrlID)

	Local $iCategory = $Display_CategoryIMG
	Local $iFname = "Category"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Category_Hover

Func Category_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_CategoryIMG
	Local $iFname = "Category"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Category_Leave_Hover

Func VesselType_Hover($iCtrlID)

	Local $iCategory = $Display_VesselTypeIMG
	Local $iFname = "VesselType"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>VesselType_Hover

Func VesselType_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_VesselTypeIMG
	Local $iFname = "VesselType"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>VesselType_Leave_Hover

Func Mass_Hover($iCtrlID)

	Local $iCategory = $Display_MassIMG
	Local $iFname = "Mass"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Mass_Hover

Func Mass_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_MassIMG
	Local $iFname = "Mass"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Mass_Leave_Hover

Func Funds_Hover($iCtrlID)

	Local $iCategory = $Display_FundsIMG
	Local $iFname = "Funds"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Funds_Hover

Func Funds_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_FundsIMG
	Local $iFname = "Funds"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Funds_Leave_Hover

Func CrewCapacity_Hover($iCtrlID)

	Local $iCategory = $Display_CrewCapacityIMG
	Local $iFname = "CrewCapacity"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>CrewCapacity_Hover

Func CrewCapacity_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_CrewCapacityIMG
	Local $iFname = "CrewCapacity"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>CrewCapacity_Leave_Hover

Func Resource1_Hover($iCtrlID)

	Local $iCategory = $Display_Resource1IMG
	Local $iFname = "Resource"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Resource1_Hover

Func Resource1_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_Resource1IMG
	Local $iFname = "Resource"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Resource1_Leave_Hover

Func Resource2_Hover($iCtrlID)

	Local $iCategory = $Display_Resource2IMG
	Local $iFname = "Resource"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Resource2_Hover

Func Resource2_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_Resource2IMG
	Local $iFname = "Resource"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Resource2_Leave_Hover

Func Resource3_Hover($iCtrlID)

	Local $iCategory = $Display_Resource3IMG
	Local $iFname = "Resource"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Resource3_Hover

Func Resource3_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_Resource3IMG
	Local $iFname = "Resource"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Resource3_Leave_Hover

Func Resource4_Hover($iCtrlID)

	Local $iCategory = $Display_Resource4IMG
	Local $iFname = "Resource"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Resource4_Hover

Func Resource4_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_Resource4IMG
	Local $iFname = "Resource"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Resource4_Leave_Hover

Func maxTemp_Hover($iCtrlID)

	Local $iCategory = $Display_TempIMG
	Local $iFname = "maxTemp"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>maxTemp_Hover

Func maxTemp_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_TempIMG
	Local $iFname = "maxTemp"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>maxTemp_Leave_Hover

Func crashTolerence_Hover($iCtrlID)

	Local $iCategory = $Display_TolIMG
	Local $iFname = "crashTolerence"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>crashTolerence_Hover

Func crashTolerence_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_TolIMG
	Local $iFname = "crashTolerence"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>crashTolerence_Leave_Hover

Func BreakingForce_Hover($iCtrlID)

	Local $iCategory = $Display_BreakingForceIMG
	Local $iFname = "BreakingForce"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>BreakingForce_Hover

Func BreakingForce_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_BreakingForceIMG
	Local $iFname = "BreakingForce"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>BreakingForce_Leave_Hover

Func Buoyancy_Hover($iCtrlID)

	Local $iCategory = $Display_BuoyIMG
	Local $iFname = "Buoyancy"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Buoyancy_Hover

Func Buoyancy_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_BuoyIMG
	Local $iFname = "Buoyancy"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Buoyancy_Leave_Hover

Func Drag_Hover($iCtrlID)

	Local $iCategory = $Display_DragIMG
	Local $iFname = "Drag"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & "B.png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Drag_Hover

Func Drag_Leave_Hover($iCtrlID)

	Local $iCategory = $Display_DragIMG
	Local $iFname = "Drag"

	Switch $iCtrlID
		Case $iCategory
			GUICtrlSetState($iCategory, $GUI_HIDE)
			_LoadPNG($InfoIconsPath & $iFname & ".png", $iCategory)
			GUICtrlSetState($iCategory, $GUI_SHOW)

	EndSwitch
EndFunc   ;==>Drag_Leave_Hover


;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;                                 WINDOWS DPI AWARENESS FUNCTIONS
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

Func _DpiConfig()

	Global Enum $DPI_AWARENESS_INVALID = -1, $PROCESS_DPI_UNAWARE = 0, $PROCESS_SYSTEM_DPI_AWARE, $PROCESS_PER_MONITOR_DPI_AWARE
	Global Enum $Context_UnawareGdiScaled = -5, $Context_PerMonitorAwareV2, $Context_PerMonitorAware, $Context_SystemAware, $Context_Unaware
	Global Const $WM_DPICHANGED = 0x02E0, $WM_GETDPISCALEDSIZE = 0x02E4
	Global $dpiScaledX, $dpiScaledY, $aCtrlFS[5][2], $hGUI, $hGUI_child, $g_iDPI_ratio2

	_WinAPI_SetDPIAwareness()

	Local $iDPI

	If @OSBuild < 14393 Then

		$iDPI = _GDIPlus_GraphicsGetDPIRatio()

	Else

		Local $hGUI_dummy = GUICreate("", 1, 1)
		$iDPI = _WinAPI_GetDpiForWindow($hGUI_dummy)
		GUIDelete($hGUI_dummy)

	EndIf

	Global $Dpi = $iDPI / 96
	$g_iDPI_ratio2 = 96 / $iDPI

EndFunc   ;==>_DpiConfig

Func ResizeFont($hWnd)

	If $hWnd = $hGUI Then

		Local $iDPI = _WinAPI_GetDpiForWindow($hWnd)
		Local $i, $dpi_ratio = $iDPI / 96

		For $i = 0 To UBound($aCtrlFS) - 1

			GUICtrlSetFont($aCtrlFS[$i][0], $aCtrlFS[$i][1] * $dpi_ratio * $g_iDPI_ratio2, 400, 0, "Segoe UI", 5)

		Next

	EndIf

EndFunc   ;==>ResizeFont

Func _WinAPI_FindWindowEx($hWndParent, $hWndChildAfter = 0, $sClassName = "", $sWindowName = "")

	Local $aResult = DllCall("user32.dll", "hwnd", "FindWindowEx", "hwnd", $hWndParent, "hwnd", $hWndChildAfter, "wstr", $sClassName, "wstr", $sWindowName)

	If @error Then Return SetError(@error, @extended, 0)
	Return $aResult[0]

EndFunc   ;==>_WinAPI_FindWindowEx

Func _WinAPI_GetDpiForWindow($hWnd)

	Local $aResult = DllCall("user32.dll", "uint", "GetDpiForWindow", "hwnd", $hWnd) ;requires Win10 v1607+ / no server support

	If @error Then Return SetError(@error, @extended, 0)
	Return $aResult[0]

EndFunc   ;==>_WinAPI_GetDpiForWindow

Func _GDIPlus_GraphicsGetDPIRatio($iDPIDef = 96)

	_GDIPlus_Startup()

	Local $hGfx = _GDIPlus_GraphicsCreateFromHWND(0)

	If @error Then Return SetError(1, @extended, 0)

	Local $aResult = DllCall($__g_hGDIPDll, "int", "GdipGetDpiX", "handle", $hGfx, "float*", 0)
	If @error Then Return SetError(2, @extended, 0)

	_GDIPlus_GraphicsDispose($hGfx)
	_GDIPlus_Shutdown()

	Return $aResult[2]

EndFunc   ;==>_GDIPlus_GraphicsGetDPIRatio

Func WM_GETDPISCALEDSIZE($hWnd, $iMsg, $wParam, $lParam)

	Local $tSize = DllStructCreate($tagSIZE, $lParam)

	Return True

EndFunc   ;==>WM_GETDPISCALEDSIZE

Func WM_DPICHANGED($hWnd, $iMsg, $wParam, $lParam)

	Local $tRECT = DllStructCreate($tagRECT, $lParam)
	Local $iX = $tRECT.left, $iY = $tRECT.top, $iW = $tRECT.right - $iX, $iH = $tRECT.bottom - $iY

	_WinAPI_SetWindowPos($hWnd, 0, $iX, $iY, $iW, $iH, BitOR($SWP_NOZORDER, $SWP_NOACTIVATE))
	ResizeFont($hWnd)
	$tRECT = 0

	Return 1

EndFunc   ;==>WM_DPICHANGED

Func _WinAPI_SetDPIAwareness($hGUI = 0)

	Switch @OSBuild

		Case 6000 To 9199
			If Not DllCall("user32.dll", "bool", "SetProcessDPIAware") Then Return SetError(1, 0, 0)
			Return 1

		Case 9200 To 13999
			_WinAPI_SetProcessDpiAwareness($PROCESS_PER_MONITOR_DPI_AWARE)
			If @error Then Return SetError(2, 0, 0)
			Return 1

		Case @OSBuild > 13999
			_WinAPI_SetProcessDpiAwarenessContext($Context_PerMonitorAwareV2, $hGUI, 1)
			If @error Then Return SetError(3, @error, 0)
			Return 1

	EndSwitch

	Return -1

EndFunc   ;==>_WinAPI_SetDPIAwareness

Func _WinAPI_SetProcessDpiAwareness($DPIAware)

	Local $aResult = DllCall("Shcore.dll", "long", "SetProcessDpiAwareness", "int", $DPIAware)

	If @error Then Return SetError(1, 0, 0)

	Return 1

EndFunc   ;==>_WinAPI_SetProcessDpiAwareness

Func _WinAPI_SetProcessDpiAwarenessContext($DPIAwareContext = $Context_PerMonitorAware, $hGUI = 0, $iMode = 1)

	$DPIAwareContext = ($DPIAwareContext < -5) ? -5 : ($DPIAwareContext > -1) ? -1 : $DPIAwareContext
	$iMode = ($iMode < 1) ? 1 : ($iMode > 3) ? 3 : $iMode

	Switch $iMode

		Case 1
			Local $hDC = _WinAPI_GetDC($hGUI)
			Local $aResult1 = DllCall("user32.dll", "int", "GetDpiFromDpiAwarenessContext", "ptr", $hDC)
			If @error Or Not IsArray($aResult1) Then Return SetError(11, 0, 0)
			_WinAPI_ReleaseDC(0, $hDC)
			Local $aResult = DllCall("user32.dll", "Bool", "SetProcessDpiAwarenessContext", "int", $aResult1[0] + $DPIAwareContext)
			If @error Or Not IsArray($aResult) Then Return SetError(12, 0, 0)

		Case 2
			Local $aResult2 = DllCall("user32.dll", "int", "GetWindowDpiAwarenessContext", "ptr", $hGUI)
			If @error Or Not IsArray($aResult2) Then Return SetError(21, 0, 0)
			Local $aResult = DllCall("user32.dll", "Bool", "SetProcessDpiAwarenessContext", "int", $aResult2[0] + $DPIAwareContext)
			If @error Or Not IsArray($aResult) Then Return SetError(22, 0, 0)

		Case 3
			Local $aResult31 = DllCall("user32.dll", "ptr", "GetThreadDpiAwarenessContext")
			If @error Or Not IsArray($aResult31) Then Return SetError(31, 0, 0)
			Local $aResult32 = DllCall("user32.dll", "int", "GetAwarenessFromDpiAwarenessContext", "ptr", $aResult31[0])
			If @error Or Not IsArray($aResult32) Then Return SetError(32, 0, 0)
			Local $aResult = DllCall("user32.dll", "Bool", "SetThreadDpiAwarenessContext", "int", $aResult32[0] + $DPIAwareContext)
			If @error Or Not IsArray($aResult) Then Return SetError(33, 0, 0)

	EndSwitch

	Return 1

EndFunc   ;==>_WinAPI_SetProcessDpiAwarenessContext

Func WM_Notify_Events($hWndGUI, $MsgID, $wParam, $lParam)

	#forceref $hWndGUI, $MsgID, $wParam
	Local $tagNMHDR, $event, $hwndFrom, $code
	$tagNMHDR = DllStructCreate("int;int;int", $lParam)

	If @error Then Return
	$event = DllStructGetData($tagNMHDR, 3)

	Select

		Case $wParam = $hTree
		
				Select

				Case $event = $NM_CLICK
					TreeView_Click()
		
				Case $event = $NM_DBLCLK
					TreeView_DoubleClick()
		
				Case $event = $NM_RCLICK
					Local Const $TVHT_NOWHERE = 1
					Local Const $TVHT_ONITEMICON = 2
					Local Const $TVHT_ONITEMLABEL = 4
					Local Const $TVHT_ONITEMINDENT = 8
					Local Const $TVHT_ONITEMBUTTON = 16
					Local Const $TVHT_ONITEMRIGHT = 32
					Local Const $TVHT_ONITEMSTATEICON = 64
					Local Const $TVHT_ABOVE = 256
					Local Const $TVHT_BELOW = 512
					Local Const $TVHT_TORIGHT = 1024
					Local Const $TVHT_TOLEFT = 2048
					Local Const $TEST = BitOR($TVHT_ONITEMICON, $TVHT_ONITEMLABEL, $TVHT_ONITEMSTATEICON, $TVHT_ONITEMINDENT, $TVHT_ONITEMBUTTON, $TVHT_ONITEMRIGHT)
					$opt_bak = Opt("MouseCoordMode", 2)
					$mpos = MouseGetPos()
		
					Opt("MouseCoordMode", $opt_bak)
					$tpos = ControlGetPos("", "", $hTree)
		
					If Not @error Then
						$x = $mpos[0] - $tpos[0] ;left offset
						$y = $mpos[1] - $tpos[1] ;$top offset
						$hitinfo = DllStructCreate("int;int;uint;uint")
		
						If Not @error Then
							DllStructSetData($hitinfo, 1, $x)
							DllStructSetData($hitinfo, 2, $y)
							DllStructSetData($hitinfo, 3, 0)
							DllStructSetData($hitinfo, 4, 0)
							GUICtrlSendMsg($hTree, $TVM_HITTEST, 0, DllStructGetPtr($hitinfo))
							$hit = DllStructGetData($hitinfo, 3) ;flags returned
							$i = DllStructGetData($hitinfo, 4) ;handle
							$hitinfo = 0
							If BitAND($hit, $TVHT_ONITEMRIGHT) Then Return 0
							If BitAND($hit, $TEST) = 0 Then Return 0
		
							TreeView_RightClick(_GUICtrlTreeViewGetText($hTree, $i))
		
						EndIf
		
					EndIf
		
			EndSelect
	
	EndSelect
	
	$tagNMHDR = 0
	$event = 0
	$lParam = 0

EndFunc   ;==>WM_Notify_Events


;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;|                                            CODE END                                            |
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯


;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;|                                                                                                |
;|                                   /@@@@@#*//(###%%##(//**,\                                    |
;|                              .***/#/@#*//(###%%##(//\\\\\.(##,)                                |
;|                          ,/%*&&&/&((//////\\\\\\\\\\///,(*/&%&,(/,                             |
;|                          &&&                                  .,/#%#)                          |
;|                       &&&/.                                        .,))                        |
;|                     *&&*.              ...        ..                 .((                       |
;|                   ,&%*                     ..   .   ..                 ..)                     |
;|                  &@/             ...,*/((/(%&(,.,...**//*.. .           ..)                    |
;|                 #&#,            ../(##%%%%%%##/**,*(#####(//, .           ,)                   |
;|                #@(.          . .,/##%%%%%&%%&%%%###%%%%%##((/,             ,))                 |
;|               %@(              ./(#%%%%%%%&%&&%%%%%%%%%%%##((*,             .((                |
;|              &&/*              .*(#%%%%%%%&&&&&&&%&&%%%%%%###(/,             ./)               |
;|             &&*.              ..*(#%%%%%&&&&&&&&&&&&%%%%%%###(/*              ,*(              |
;|            &&*.           .  .,/(#%%%%%%&&&&&&&&&&&%%%%%####(/*.                ,(,            |
;|           .&&/.        .      .,/(##%%%%%%%%&&&&&&&%%%%%%%###((*.               .*)            |
;|          .&&/         .   ...,*((#&@@@@@@@@%%%%%%%%%%%%####((/*..  .. .          ,)            |
;|          ,&&,       ..........*/(%&@*@@@@@&&##%%%%%%%%###@@@*&%(.....    .. ..  . .)           |
;|          ,&&*    ............,*/(%&   @@&&&%##%%%%%%%###@@@   %#.... .           ,,)           |
;|          ,&...           .. ....*/*/(_##%######%%%%%%%%###&&&_&%).. .  .  .     .',)           |
;|          .*#... ...............*/(#########%%%%%%%%%%%###(#((&/*.,.,.,.., , ...,.  (           |
;|          ,(##*..,.,,,,,,,....../(((######%%%%%%%%%%%%%%####(/*,,,,,....... .....  */           |
;|           *(#.*.........,,...../(#####%%%%%%%%%%%%%%%%%%%###((/*.......,,,,.....  /            |
;|            (#.*,,,.,,,,,,,,,,.*((((*,,,....,,,,,,,****,*****//*,,,,,,,,.,,..,,  ,./            |
;|              /#,*,,...,.,,,,...*/((#,*                   ,** /**...,,,,,...,  ,,,/             |
;|               *##/..,,.,,,.....**//((#&&&@@@@@@@@@@@@@@&&%#%#,,,,,,,,,,,..,..../               |
;|                 ,(((((__,..........,,,***////(((((((((////**,,,,....,__...  (//                |
;|                   ,/(////((((((((((((((((#(((((#(#(####(((((((((((((/////*,)                   |
;|                        ,*//***/////////////////////////////*//*/*/****,                        |
;|                          .,***,,,,,,,****,*****,********,,,,,,,,,.                             |
;|                          .*/*//*,,***//,(/(***/(#***,(/*****,,.,*.                             |
;|                                ,***##*((/##///*#//*#/(/(*(#***,.                               |
;|                              .////*,, .,**,,...,,,,,...,,,****/*.                              |
;|                          ,((((//***,,,.,... (/..#/#. ..,,,,,**/(((/*.                          |
;|                        ,/*/*/**,,,.   .,*//../(//////.. .  .,*////((((()                       |
;|                      *((#(//.. ./   .//////***((###((/..,,    .,((####(#*                      |
;|                     .*****//*,,., .*///((//,/((((((////..//. ./((/***(/*,;                     |
;|                     .***/(((##(##(,////(//,,/((((((/////.(#######(/***,,,;                     |
;|                      /////((((((/.,*/////,...,/////////*(/(((((((/////*.;                      |
;|                       *////////*,(,,****,,,. ,,***,**/(///////((////**.;                       |
;|                        .,*******,.*//**,.,,.,....,,*/((/,*//********,;                         |
;|                            ..... .**/**,,,.       ,.**/((((,,,,,,;                             |
;|                                  ,//***,,,.,       *//(((#((/.                                 |
;|                                  */(((/////*,     ,/(((#####//                                 |
;|                                  /((((((///*,*    *//((((##(((/.                               |
;|                                 ,//**//////**,*   ,*//*,....,///                               |
;|                               .,,,.,,,*,.    .        ,,....,****                              |
;|                          .***,...,     .   .           ....,*///*,                             |
;|                         .*/##*..     .                 .,/##///**.                             |
;|                            ....   .                     ...,..,*.                              |
;|                                                                                                |
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯
;╭───────────────────────────────────────────────-────────────────────────────────────────────────╮
;|                                                                                                |
;|                                          Cornucopia β                                          |
;|                                            By 001                                              |
;|                                                                                                |
;|                                         Reddit u\0-0-1                                         |
;|                                         KSP Forum: 001                                         |
;|                                                                                                |
;╰───────────────────────────────────────────────-────────────────────────────────────────────────╯

; My email in binary, for the determined:
; 01101000 01100001 01101101 01100101 01100101 01100100 01000000 01100111 01101101 01100001 01101001 01101100 00101110 01100011 01101111 01101101
