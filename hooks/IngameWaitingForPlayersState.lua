Hooks:PreHook(IngameWaitingForPlayersState, "sync_start", "thechase_stop_brief", function(self)
    managers.music:stop("painsk_briefing")
end)