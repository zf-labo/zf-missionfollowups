local currentUi = nil

local function ShowUI(title, content)
    currentUi = { title = title or false, content = content or false }
    SendNUIMessage({
        action = "show",
        title = title or false,
        content = content or false
    })
end exports('ShowUI', ShowUI)

local function EditUI(title, content)
    currentUi = { title = title and title or currentUi.title, content = content and content or currentUi.content}
    SendNUIMessage({
        action = "edit",
        title = title and title or false,
        content = content and content or false
    })
end exports('EditUI', EditUI)

local function HideUI()
    currentUi = nil
    SendNUIMessage({ action = "hide" })
end exports('HideUI', HideUI)

local function GetCurrentUI()
    return currentUi or {}
end exports('GetCurrentUI', GetCurrentUI)

local function IsUIVisible()
    return currentUi ~= nil
end exports('IsUIVisible', IsUIVisible)