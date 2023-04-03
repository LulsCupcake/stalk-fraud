Hooks:PostHook(ingamewaitingforrespawn, "init", "thechase_waitingforrespawn", function(self)
	self:trade_death(respawn_delay)
end)