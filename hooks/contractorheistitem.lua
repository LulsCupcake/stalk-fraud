Hooks:PostHook(ContractBrokerHeistItem, "init", "pain_002_ee", function(self, parent_panel, job_data, idx)
    local job_tweak = tweak_data.narrative:job_data(self._job_data.job_id)

    if job_tweak.pain_002 then
        if self._image_panel then
            local padding = 2 
            local easter_egg_indicator_panel = self._image_panel:panel({
                h = 32,
                w = 32
            })

            easter_egg_indicator_panel:rect({
                alpha = 0.8,
                layer = 1000,
                color = Color.black,
                halign = "scale",
                valign = "scale"
            })

            easter_egg_indicator_panel:set_bottom(self._image_panel:bottom() - 12)
            easter_egg_indicator_panel:set_right(self._image_panel:right() - padding)

            BoxGuiObject:new(easter_egg_indicator_panel:panel({layer = 1001}), {sides = {
                1,
                1,
                1,
                1
            }})

            if job_tweak.pain_002_icon then
                local key = "sf_secret_done"
                local unlocked = Global.mission_manager.saved_job_values[key] == 1

                local ee_icon = easter_egg_indicator_panel:bitmap({
                    texture = job_tweak.pain_002_icon,
                    w = 24,
                    h = 24,
                    x = 4,
                    y = 4,
                    layer = 1001,
                    visible = unlocked
                })
            end
        end
    end

end)