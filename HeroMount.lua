
SlashCmdList['HERO_MOUNT'] = function()
	if (IsMounted()) then
		Dismount()
		return
	end
	
	if (UnitLevel("player") < 20) then
		CastSpellByName("Invocation d’un chauffeur")
		return
	end
	
	timer, initial, maxvalue, scale, paused, label = GetMirrorTimerInfo(2)	
	if (timer == 'BREATH' and paused == 0) then
		-- breath timer is running: player is underwater
		CastSpellByName("Raie de la Grande mer")
		return
	end
	
	if (IsFlyableArea()) then
		CastSpellByName("Expérience 12-B")
		return
	end
	
	CastSpellByName("Seigneur corbeau")
end

SLASH_HERO_MOUNT1 = '/heromount'