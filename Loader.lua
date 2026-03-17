local PLUGIN_NAME = "ClassicDB"
local PLUGIN_VERSION = "1.1.6"

if not QuestiePluginAPI then
    if DEFAULT_CHAT_FRAME then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF4444[Questie-X]|r ClassicDB requires Questie-X to be installed and enabled.")
    end
    return
end

local plugin = QuestiePluginAPI:RegisterPlugin(PLUGIN_NAME)
if not plugin then return end

plugin:FinishLoading("ClassicDB")

Questie:Debug(Questie.DEBUG_INFO, "[ClassicDB] Plugin loaded v" .. PLUGIN_VERSION)
