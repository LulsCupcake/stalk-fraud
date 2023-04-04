Hooks:PostHook(InteractionTweakData, "init", "pain2_interactions", function(self, tweak_data)
    self.pick_lock_hard_no_skill.timer = 5
	self.pick_lock_easy_no_skill.timer = 5
	self.pick_lock_easy.timer = 5
	self.pick_lock_hard.timer = 5
	self.drill_jammed.timer = 3
	self.hold_dab = {
		text_id = "grab_dab",
		action_text_id = "hold_dabbing",
		start_active = false,
		axis = "y",
		timer = 0.5
	}
	self.methlab_gas_to_salt = {
		icon = "develop",
		text_id = "Add_staple",
		equipment_text_id = "no_staple",
		special_equipment = "stapler",
		equipment_consume = true,
		start_active = false,
		timer = 1,
		action_text_id = "3rd_staple",
		sound_start = "bar_bag_generic",
		sound_interupt = "bar_bag_generic_cancel",
		sound_done = "bar_bag_generic_finished"
	}
	self.methlab_bubbling = {
		icon = "develop",
		text_id = "add_files",
		equipment_text_id = "no_files",
		special_equipment = "briefcase",
		equipment_consume = false,
		start_active = false,
		timer = 1,
		action_text_id = "3rd_files",
		sound_start = "bar_shuffle_papers",
		sound_interupt = "bar_shuffle_papers_cancel",
		sound_done = "bar_shuffle_papers_finished"
	}
	self.methlab_caustic_cooler = {
		icon = "develop",
		text_id = "add_ink",
		equipment_text_id = "no_ink",
		special_equipment = "printer_ink",
		equipment_consume = true,
		start_active = false,
		timer = 1,
		action_text_id = "3rd_ink",
		sound_start = "bar_insert_printer_ink",
		sound_interupt = "bar_insert_printer_ink_cancel"
	}
	self.bike_mu = {
		icon = "develop",
		text_id = "hud_int_methlab_bubbling",
		equipment_text_id = "hud_int_no_acid",
		special_equipment = "acid",
		equipment_consume = true,
		start_active = false,
		timer = 1,
		action_text_id = "hud_action_methlab_bubbling",
		sound_start = "liquid_pour",
		sound_interupt = "liquid_pour_stop",
		sound_done = "liquid_pour_stop"
	}
	self.bike_cs = {
		icon = "develop",
		text_id = "hud_int_methlab_caustic_cooler",
		equipment_text_id = "hud_int_no_caustic_soda",
		special_equipment = "caustic_soda",
		equipment_consume = true,
		start_active = false,
		timer = 1,
		action_text_id = "hud_action_methlab_caustic_cooler",
		sound_start = "liquid_pour",
		sound_interupt = "liquid_pour_stop",
		sound_done = "liquid_pour_stop"
	}
	self.bike_hcl = {
		icon = "develop",
		text_id = "hud_int_methlab_gas_to_salt",
		equipment_text_id = "hud_int_no_hydrogen_chloride",
		special_equipment = "hydrogen_chloride",
		equipment_consume = true,
		start_active = false,
		timer = 1,
		action_text_id = "hud_action_methlab_gas_to_salt",
		sound_start = "bar_bag_generic",
		sound_interupt = "bar_bag_generic_cancel",
		sound_done = "bar_bag_generic_finished"
	}
	self.taking_meth = {
		text_id = "take_meth",
		action_text_id = "taking_meth",
		timer = 3,
		sound_start = "bar_bag_money",
		sound_interupt = "bar_bag_money_cancel",
		sound_done = "bar_bag_money_finished",
		blocked_hint = "carry_block"
	}
	self.tag_take_stapler = {
		text_id = "take_stapler",
		interact_distance = 100,
		start_active = false
	}
	self.open_door_with_keys = {
		contour = "interactable_icon",
		icon = "equipment_bank_manager_key",
		text_id = "hud_int_try_keys",
		start_active = false,
		timer = 5,
		action_text_id = "hud_action_try_keys",
		interact_distance = 100,
		sound_start = "bar_unlock_grate_door",
		sound_interupt = "bar_unlock_grate_door_cancel",
		sound_done = "bar_unlock_grate_door_finished",
		special_equipment = "keychain",
		equipment_text_id = "missed_secret",
		is_lockpicking = true
	}
end)