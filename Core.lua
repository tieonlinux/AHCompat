local _G = getfenv(0)
local FOLDER_NAME, private = ...


local PostAuction = _G.PostAuction

local function GetWowBuild()
    local buildstr = select(2, _G.GetBuildInfo())
    assert(type(buildstr) == "string")
    return tonumber(buildstr)
end

local function initial_checks()
    assert(GetWowBuild() >= 27481, "this addon isn't for you")
    assert(PostAuction and type(PostAuction) == "function")
end

function private.HookedStartAuction(...)
    if not private.warning then
        private.warning = true
        _G.DEFAULT_CHAT_FRAME:AddMessage(string.format( "%s is now active", FOLDER_NAME ))
    end
    return PostAuction(...)
end

local function HookStartAuction()
    assert(_G.Original_StartAuction == nil)
    assert(_G.StartAuction ~= nil)
    _G.Original_StartAuction = _G.StartAuction
    _G.StartAuction = private.HookedStartAuction
end


local function init()
    initial_checks()
    HookStartAuction()
end

return init()