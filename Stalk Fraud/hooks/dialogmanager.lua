Hooks:Add("LocalizationManagerPostInit", "SfLocalization", function(loc)
	if Global.game_settings.level_id == "thechase" then
		LocalizationManager:add_localized_strings({
		["menu_description_bain"] = "Pain's Plan"
		})
	else
		return
	end
end)