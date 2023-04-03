Hooks:PostHook(CarryTweakData, "init", "pain2_carry", function(self, tweak_data)
   self.meth = {
		type = "coke_light",
		name_id = "carry_tax_form",
		bag_value = "meth",
		visual_unit_name = "units/payday2/characters/npc_acc_loot_bag_1/npc_acc_loot_bag_1",
		AI_carry = {
			SO_category = "enemies"
		}
	}
end)