-- omnipack technology
data:extend({
	{
		type = "technology",
		name = "sct-research-omni",
		icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack-128.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "omni-pack",
			},
		},
		prerequisites =
		{
			"crystallology-1", 
			"sct-research-t2",
			"logistics-2",
		},
		unit =
		{
			count = 60,
			ingredients = 
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
			},
			time = 2,
		},
		order = "sct-pack-c[omni]",
	},
})