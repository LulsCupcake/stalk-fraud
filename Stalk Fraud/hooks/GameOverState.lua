Hooks:PostHook(GameOverState, "at_enter", "thechase_fail", function(self, ...)
		self._success = false
		managers.music:post_event("painsk_game_over")
		
		GameOverState.super.at_enter(self, ...)
end)