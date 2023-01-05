
<p align="center"><img src="https://cdn.discordapp.com/attachments/927728569382236180/1060666841644683434/Group_1.png"></p>

# MTA:SA RDX

- This Script Display DX/GUI for All screen formats, Where the way to use it is easy and you do not need practice to use it
- For more details, go to [MTA:SA Wiki](https://wiki.multitheftauto.com/wiki/Resource:RDX)

# Requirement

- `1` . You need to change the resolution from `rdx/config/data.lua` to your resolution.<br>
- `2` . Do not change any thing in `rdx/server/update.lua` or `rdx/update.cfg`.<br>
- `3` . Do not remove `rdx/update.cfg`, so you can update.
- `4` . To update the resource you need to type `/update-rdx`.<br>

# Functions
* [dxText](https://wiki.multitheftauto.com/wiki/dxDrawText)
* [dxImage](https://wiki.multitheftauto.com/wiki/dxDrawImage)
* [dxRectangle](https://wiki.multitheftauto.com/wiki/dxDrawRectangle)
* [dxRoundedRectangle](https://wiki.multitheftauto.com/wiki/RoundedRectangle)
* [dxIsInPosition](https://wiki.multitheftauto.com/wiki/isMouseInPosition)
* [dxCricle](https://wiki.multitheftauto.com/wiki/dxDrawCircle)
* [dxImageSection](https://wiki.multitheftauto.com/wiki/dxDrawImageSection)
* [guiWindow](https://wiki.multitheftauto.com/wiki/guiCreateWindow)
* [guiButton](https://wiki.multitheftauto.com/wiki/guiCreateButton)
* [guiMemo](https://wiki.multitheftauto.com/wiki/guiCreateMemo)
* [guiLabel](https://wiki.multitheftauto.com/wiki/guiCreateLabel)
* [guiCheckBox](https://wiki.multitheftauto.com/wiki/guiCreateCheckBox)
* [guiEdit](https://wiki.multitheftauto.com/wiki/guiCreateEdit)
* [guiProgress](https://wiki.multitheftauto.com/wiki/guiCreateProgressBar)
* [guiRadioButton](https://wiki.multitheftauto.com/wiki/guiCreateRadioButton)
* [guiGridList](https://wiki.multitheftauto.com/wiki/guiCreateGridList)
* [guiTabPanel](https://wiki.multitheftauto.com/wiki/guiCreateTabPanel)
* [guiTab](https://wiki.multitheftauto.com/wiki/guiCreateTab)
* [guiImage](https://wiki.multitheftauto.com/wiki/guiCreateStaticImage)
* [guiScrollBar](https://wiki.multitheftauto.com/wiki/guiCreateScrollBar)
* [guiScrollPane](https://wiki.multitheftauto.com/wiki/guiCreateScrollPane)
* [guiComboBox](https://wiki.multitheftauto.com/wiki/guiCreateComboBox)

# Installation

- `1` . Clone the repo by running
```
git clone https://github.com/OfficialMr3b/rdx
```
- `2` . add this resource to your server `:mods/deathmatch/resources/`
- `3` . type this command in your server `refresh` and `start rdx`

# How to uses

- import this function for use the rdx
```lua
loadstring(exports.rdx:import())()
```
- Example:
```lua
loadstring(exports.rdx:import())()

addEventHandler("onClientRender", root, function()
    dxRectangle(468, 279, 430, 211, tocolor(255, 255, 255, 255), false)
    dxText("MTA RDX", 468, 279, 898, 307, tocolor(0, 0, 0, 254), 1.00, "default", "center", "center", false, false, false, false, false)
    dxImage(622, 338, 123, 92, ":guieditor/images/examples/mtalogo.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
end)
```

# Contributors
| <img src="https://i.imgur.com/9eOHGEq.png" style="border-radius: 50%;"><br><sub>Mr3b#8603<br></sub> | <img src="https://i.imgur.com/a3flkPs.png" style="border-radius: 50%;"><br><sub>vaxeus.#2335<br></sub> |
| :---------------------------------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------------: |
