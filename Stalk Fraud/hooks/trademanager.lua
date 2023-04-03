Hooks:PostHook(TradeManager, "_increment_trade_index", "thechase_nocivinc", function(self, tweak_data)
	if self._hostage_trade_index > 10000 then
		self._hostage_trade_index = 0
	else
		self._hostage_trade_index = 0
	end
end)
Hooks:PostHook(TradeManager, "hostages_killed_by_name", "thechase_nohostagedeath", function(self, tweak_data)
	for _, crim in ipairs(self._criminals_to_respawn) do
		if crim.id == character_name then
			return 0
		end
	end

	return 0
end)

function TradeManager:get_best_hostage(pos, use_existing)
	if use_existing and self._hostage_to_trade then
		return self._hostage_to_trade
	end
	
	local trade_dist = tweak_data.group_ai.optimal_trade_distance
	local optimal_trade_dist = math.random(trade_dist[1], trade_dist[2])
	optimal_trade_dist = optimal_trade_dist * optimal_trade_dist
	local best_hostage_d, best_hostage = nil
	local all_enemies = managers.enemy:all_enemies()
	local all_hostages = managers.groupai:state():all_hostages()

	for _, h_key in ipairs(all_hostages) do

		local hostage = all_enemies[h_key]

		if hostage then
			local d = math.abs(mvector3.distance_sq(hostage.m_pos, pos) - optimal_trade_dist)

			if not best_hostage_d or d < best_hostage_d then
				best_hostage_d = d
				best_hostage = hostage
			end
		end
	end

	if not best_hostage then
		for u_key, unit in pairs(managers.groupai:state():all_converted_enemies()) do
			best_hostage = all_enemies[u_key]
		end
	end

	if best_hostage then
		best_hostage.initialized = false
	end

	return best_hostage
end