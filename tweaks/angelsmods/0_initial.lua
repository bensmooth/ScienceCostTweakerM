if mods["angelsbioprocessing"] then
	require("science_angels")
	
	if settings.startup["sct-bio"].value == "tier1" then
        table.insert(data.raw["lab"]["lab"].inputs, "sct-science-pack-bio")
	else
		table.insert(data.raw.technology["sct-research-bio"].prerequisites, "sct-lab-t2")
	end
	table.insert(data.raw["lab"]["sct-lab-t2"].inputs, "sct-science-pack-bio")
	table.insert(data.raw["lab"]["sct-lab-t3"].inputs, "sct-science-pack-bio")
	table.insert(data.raw["lab"]["sct-lab-t4"].inputs, "sct-science-pack-bio")
end
