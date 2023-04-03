Hooks:PostHook(MoneyManager, "get_civilian_deduction", "thechase_nocivdeduction", function(self, tweak_data)
	if managers.mutators:should_disable_statistics() then
		return 0
	end

	local has_active_job = managers.job:has_active_job()
	local job_and_difficulty_stars = has_active_job and managers.job:current_job_and_difficulty_stars() or 1

	if managers.crime_spree:is_active() then
		job_and_difficulty_stars = tweak_data.crime_spree.base_difficulty_index or job_and_difficulty_stars
	end

	local multiplier = 0
	multiplier = multiplier * managers.player:upgrade_value("player", "cleaner_cost_multiplier", 1)

	return math.round(self:get_tweak_value("money_manager", "killing_civilian_deduction", job_and_difficulty_stars) * multiplier)
end)
Hooks:PostHook(MoneyManager, "civilian_killed", "thechase_nocivkilled", function(self, tweak_data)
	local deduct_amount = 1

	if deduct_amount == 0 then
		return
	end

	local text = managers.localization:text("hud_good_job_desc")
	
	local title = managers.localization:text("hud_good_job")


	managers.hud:present_mid_text({
		time = 4,
		text = text,
		title = title
	})
	self:_deduct_from_total(0)
end)