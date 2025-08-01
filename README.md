# ZF Mission Follow Ups
A UI Script to show progression of the jobs/missions!
Join up our [Discord]([https://discord.gg/FdbnkuhnkS)!

## Exports:
`ShowUI(title, content)`
- Shows the Mission Followup UI.
Ex:
```lua
(Context: Player is doing a chopshop mission and is in queue.)
exports['zf-missionfollowups']:ShowUI('Waiting for job...', false)
```
![image](https://github.com/zf-labo/zf-missionfollowups/assets/48424078/62d8bb14-d103-42b4-8fd9-a68c0e6b9a4f)
</br></br>

`EditUI(title, content)`
- Changes the desired values from the UI.
Ex:
```lua
(Context: Player just received the Chopshop Mission)
exports['zf-missionfollowups']:EditUI('Chopping Missing', 'Go to the GPS Location marked on your Map.')

(Context: Player have arrived to the chopping location and we only want to change the content and not the title "Chopping Mission".)
exports['zf-missionfollowups']:EditUI(false, 'Now, Chop the parts!')
```
![image](https://github.com/zf-labo/zf-missionfollowups/assets/48424078/1e7f7491-c30f-4c4a-b368-ac18ad1ae745)
![image](https://github.com/zf-labo/zf-missionfollowups/assets/48424078/cc4daa40-6297-4422-ac4a-11861ee681fb)
</br></br>

`HideUI()`
- Simply hides the UI and clear the UI informations.
Ex:
```lua
exports['zf-missionfollowups']:HideUI()
```
![image](https://github.com/zf-labo/zf-missionfollowups/assets/48424078/cdc6c7c5-1933-48a3-be7e-75697e2a52d6)
</br></br>

`GetCurrentUI()`
- Returns the current a table with the currents values for `title` and `content`.
Ex:
```lua
local currentUI = exports['zf-missionfollowups']:GetCurrentUI()
print(currentUI.title)
print(currentUI.content)
```
![image](https://github.com/zf-labo/zf-missionfollowups/assets/48424078/5191f8e5-fc21-4efd-a19a-77dbf3a2a3bb)
</br></br>

`IsUIVisible()`
- Returns true or false depending on if a Mission Followup is shown on screen
- Ex:
```lua
local UIShown = exports['zf-missionfollowups']:IsUIVisible()
print(UIShown)
```
![image](https://github.com/zf-labo/zf-missionfollowups/assets/48424078/c79f55c2-5b0f-400e-b9e1-5da19476d3de)
![image](https://github.com/zf-labo/zf-missionfollowups/assets/48424078/83df049e-c838-474f-9425-e17d1bc61640)
