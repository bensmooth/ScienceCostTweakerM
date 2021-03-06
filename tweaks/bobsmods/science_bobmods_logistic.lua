-- science groups
data:extend ({
	{
		type = "item-subgroup",
		name = "sct-science-pack-logistic",
		group = "sct-science",
		order = "h_a[logistic]",
	},
})

-- logistic pack items
data:extend ({
	{
		type = "item",
		name = "sct-logistic-cargo-unit",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-cargo-unit.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-science-pack-logistic",
		order = "h_a[logistic]-b[cargo]",
		stack_size = 200,
	},

	{
		type = "item",
		name = "sct-logistic-unimover",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-unimover.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-science-pack-logistic",
		order = "h_a[logistic]-c[unimover]",
		stack_size = 200,
	},

	{
		type = "item",
		name = "sct-logistic-automated-storage",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-automated-storage.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-science-pack-logistic",
		order = "h_a[logistic]-d[storage]",
		stack_size = 200,
	},

	{
		type = "item",
		name = "sct-logistic-memory-unit",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-memory-unit.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-science-pack-logistic",
		order = "h_a[logistic]-e[memory-unit]",
		stack_size = 200,
	},	
})

-- logistic intermediate recipes
data:extend ({
	{
		type = "recipe",
		name = "sct-logistic-cargo-unit",
		subgroup = "sct-science-pack-logistic",
		order = "h_a[logistic]-b[cargo]",
		expensive =
		{
			enabled = false,
			energy_required = 7.5,
			ingredients =
			{
				{"sct-logistic-unimover", 2},
				{"sct-logistic-automated-storage", 3},
			},
			results = 
			{
				{type="item", name="sct-logistic-cargo-unit", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 3,
			ingredients =
			{
				{"sct-logistic-unimover", 1},
				{"sct-logistic-automated-storage", 1},
			},
			results = 
			{
				{type="item", name="sct-logistic-cargo-unit", amount=1},
			},
		},
	},
	
	{
		type = "recipe",
		name = "sct-logistic-unimover",
		subgroup = "sct-science-pack-logistic",
		order = "h_a[logistic]-c[unimover]",
		expensive =
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"flying-robot-frame", 2},
				{"express-transport-belt", 5},
			},
			results = 
			{
				{type="item", name="sct-logistic-unimover", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{"flying-robot-frame", 1},
				{"express-transport-belt", 2},
			},
			results = 
			{
				{type="item", name="sct-logistic-unimover", amount=1},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-logistic-automated-storage",
		subgroup = "sct-science-pack-logistic",
		order = "h_a[logistic]-d[storage]",
		expensive =
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"filter-inserter", 2},
				{"steel-chest", 5},
			},
			results = 
			{
				{type="item", name="sct-logistic-automated-storage", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{"filter-inserter", 1},
				{"steel-chest", 2},
			},
			results = 
			{
				{type="item", name="sct-logistic-automated-storage", amount=1},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-logistic-memory-unit",
		subgroup = "sct-science-pack-logistic",
		order = "h_a[logistic]-e[memory-unit]",
		expensive =
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"arithmetic-combinator", 2},
				{"constant-combinator", 5},
			},
			results = 
			{
				{type="item", name="sct-logistic-memory-unit", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{"arithmetic-combinator", 1},
				{"constant-combinator", 2},
			},
			results = 
			{
				{type="item", name="sct-logistic-memory-unit", amount=1},
			},
		},
	},
})

-- technology
data:extend({
	{
		type = "technology",
		name = "sct-research-logistic",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/logistic-science-pack-128.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "logistic-science-pack",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-logistic-cargo-unit",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-logistic-memory-unit",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-logistic-unimover",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-logistic-automated-storage",
			},
		},
		prerequisites =
		{
			"robotics",
			"sct-research-t3",
			"circuit-network",
		},
		unit =
		{
			count = 90,
			ingredients = 
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
			},
			time = 3,
		},
		order = "sct-pack-d[logistic]",
	},
})
