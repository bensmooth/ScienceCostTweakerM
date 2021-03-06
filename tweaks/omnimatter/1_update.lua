if mods["omnimatter_science"] and (mods["omnimatter_crystal"]  or mods["omnimatter-crystal"]) then
	sctm.debug(serpent.block(data.raw.tool["omni-pack"]))
	sctm.debug(serpent.block(data.raw.recipe["omni-pack"]))
	if data.raw.tool["omni-pack"] and data.raw.recipe["omni-pack"] then
		-- remove omnipack from all labs
		for _i, lab in pairs(data.raw["lab"]) do
			if lab.inputs then
				for _j, inputs in pairs(lab.inputs) do
					if inputs == "omni-pack" then
						table.remove(lab.inputs, _j)
						break
					end
				end
			end
		end
		table.insert(data.raw["lab"]["sct-lab-t2"].inputs, "omni-pack")
		table.insert(data.raw.technology["sct-lab-t3"].prerequisites, "sct-research-omni")
		table.insert(data.raw["lab"]["sct-lab-t3"].inputs, "omni-pack")
		table.insert(data.raw["lab"]["sct-lab-t4"].inputs, "omni-pack")	
		if data.raw.tool["omni-pack"] then
			if settings.startup["sct-hd-icons"] and settings.startup["sct-hd-icons"].value == true then
				data.raw.tool["omni-pack"].icons =
				{
					{
						icon_size = 64,
						icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack-64.png",
					},
				}
			else
				data.raw.tool["omni-pack"].icons =
				{
					{
						icon_size = 32,
						icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack.png",
					},
				}
			end
		end
		-- fix missing omnipack in bobs alien lab
		if data.raw.lab["lab-alien"] then
			local omniin = false
			for _j, input in pairs (data.raw.lab["lab-alien"].inputs) do
				if input == "omni-pack" then
					omniin = true
					break
				end
			end
			if omniin == false then
				table.insert(data.raw.lab["lab-alien"].inputs, "omni-pack")
			end
		end
	else
		data.raw.technology["sct-research-omni"].enabled = false
	end
end
