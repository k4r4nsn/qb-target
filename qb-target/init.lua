function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 7.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Whether to have the target as a toggle or not
Config.Toggle = false

-- The color of the outline in rgb, the first value is red, the second value is green and the last value is blue. Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = {255, 255, 255}

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = true

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 238

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {

}

Config.PolyZones = {

}

Config.TargetBones = {

}

Config.TargetModels = {
	["VehicleRental"] = {
		models = {
			`a_m_y_business_03`,
		},
		options = {
			{
				type = "client",
				event = "qb-rental:client:openMenu",
				icon = "fas fa-car",
				label = "Rent Vehicle",
				MenuType = "vehicle"
			},
		},
		distance = 3.0
	},
	["AircraftRental"] = {
		models = {
			`s_m_y_airworker`,
		},
		options = {
			{
				type = "client",
				event = "qb-rental:client:openMenu",
				icon = "fas fa-plane",
				label = "Rent Aircraft",
				MenuType = "aircraft"
			},
		},
		distance = 3.0
	},
	["Boatrental"] = {
		models = {
			`mp_m_boatstaff_01`,
		},
		options = {
			{
				type = "client",
				event = "qb-rental:client:openMenu",
				icon = "fas fa-ship",
				label = "Rent Boat",
				MenuType = "boat"
			},
		},
		distance = 3.0
	},
	["Atms"] = {
        models = {
        "prop_atm_01",
        "prop_atm_02",
        "prop_atm_03",
        "prop_fleeca_atm",
        },
        options = {
            {
                type = "command",
                event = "atm",
                icon = "fas fa-money-check",
                label = "Open ATM",
            },
        },
        distance = 1.0,
    },

	["VehicleRental"] = {
        models = {
            `a_m_y_business_03`,
        },
        options = {
            {
                type = "client",
                event = "qb-rental:openMenu",
                icon = "fas fa-car",
                label = "Rent Vehicle",
            },
        },
        distance = 4.0
    },	
	["burgershotgarage"] = {
		models = {
			"ig_floyd"
		},
		options = {
			{
				type = "client",
				event = "garage:BurgerShotGarage",
				icon = "fas fa-car",
				label = "BurgerShot Garage",
				job = "burgershot",
			}
		},
		distance = 2.5,
	},
    ["24/7 shops"] = {
        models = {
            "mp_m_shopkeep_01",
        },
        options = {
            {
                type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-store",
                label = "Buy Items",
            },
        },
        distance = 2.5,
    },
    ["ammunation shops"] = {
        models = {
            "s_m_y_ammucity_01",
        },
        options = {
            {
                type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-shopping-cart",
                label = "Buy Weapons",
            },
        },
        distance = 2.5,
    },
    ["youtool shops"] = {
        models = {
            "s_m_m_lathandy_01",
        },
        options = {
            {
                type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-wrench",
                label = "Buy Tools",
            },
        },
        distance = 2.5,
    },
    ["sea world"] = {
        models = {
            "cs_dom",
        },
        options = {
            {
                type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-circle",
                label = "Buy Gear",
            },
        },
        distance = 2.5,
    },
}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}

Config.Peds = {
	["legionbank"] = {
        model = 'u_m_m_bankman',
        coords = vector4(149.45, -1042.13, 29.37, 338.33),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-banking:openBankScreen",
                    icon = 'fas fa-piggy-bank',
                    label = 'Open Bank',
                },
            },
            distance = 2.5,
        },
        currentpednumber = 0,
    },
    ["pinkcagebank"] = { --near pink cage
        model = 'u_m_m_bankman',
        coords = vector4(313.75, -280.45, 54.16, 334.3),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-banking:openBankScreen",
                    icon = 'fas fa-piggy-bank',
                    label = 'Open Bank',
                },
            },
            distance = 2.5,
        },
        currentpednumber = 0,
    },
    ["lscbank"] = { --near LSC
        model = 'u_m_m_bankman',
        coords = vector4(-351.41, -51.27, 49.04, 340.99),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-banking:openBankScreen",
                    icon = 'fas fa-piggy-bank',
                    label = 'Open Bank',
                },
            },
            distance = 2.5,
        },
        currentpednumber = 0,
    },
    ["hayesautobank"] = { --near Hayes Auto
        model = 'u_m_m_bankman',
        coords = vector4(-1211.94, -331.93, 37.78, 24.71),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-banking:openBankScreen",
                    icon = 'fas fa-piggy-bank',
                    label = 'Open Bank',
                },
            },
            distance = 2.5,
        },
        currentpednumber = 0,
    },
    ["pacificbank"] = { --pacific bank
        model = 'u_m_m_bankman',
        coords = vector4(248.83, 224.45, 106.29, 158.88),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-banking:openBankScreen",
                    icon = 'fas fa-piggy-bank',
                    label = 'Open Bank',
                },
            },
            distance = 2.5,
        },
        currentpednumber = 0,
    },
    ["greatoceanbank"] = { --great ocean
        model = 'u_m_m_bankman',
        coords = vector4(-2961.13, 482.85, 15.7, 83.25),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-banking:openBankScreen",
                    icon = 'fas fa-piggy-bank',
                    label = 'Open Bank',
                },
            },
            distance = 2.5,
        },
        currentpednumber = 0,
    },
    ["sandyshoresbank"] = { --sandy shores
        model = 'u_m_m_bankman',
        coords = vector4(1174.98, 2708.21, 38.09, 175.52),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-banking:openBankScreen",
                    icon = 'fas fa-piggy-bank',
                    label = 'Open Bank',
                },
            },
            distance = 2.5,
        },
        currentpednumber = 0,
    },
    ["paletobank"] = { --paleto
        model = 'u_m_m_bankman',
        coords = vector4(-112.22, 6471.03, 31.63, 131.47),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        target = {
            options = {
                {
                    type = "client",
                    event = "qb-banking:openBankScreen",
                    icon = 'fas fa-piggy-bank',
                    label = 'Open Bank',
                },
            },
            distance = 2.5,
        },
        currentpednumber = 0,
    },
	["garbageman"] = {
		model = 's_m_y_garbage',
		coords = vector4(-322.25, -1545.84, 31.02, 273.78),
		minusOne = true,
		freeze = true,
		invincible = true,
		target = {
			options = {
				{
					type = "client",
					event = "getGarbagePaySlip",
					icon = "far fa-money-bill-wave",
					label = "Collect Paycheck"
				},
				{
					type = "client",
					event = "GarbageTruckSpawn",
					icon = "far fa-truck-moving",
					label = "Spawn Garbage-Truck"
				},
			},
			distance = 2.5,
		},
		currentpednumber = 0,
	},
	["trashsearch"] = {
        models = {
	-1096777189,
	666561306,
	1437508529,
	-1426008804,
	-228596739,
	161465839,
	651101403,
        -58485588,
        218085040,
        -206690185,

        },
        options = {
            {
                type = "client",
                event = "qb-trashsearch:client:searchtrash",
                icon = "fas fa-dumpster",
                label = "Dumpster Dive",
            },
        },
        distance = 3.0
    },
    {  -------Youtool Shop------
	model = `s_m_m_lathandy_01`,
	coords = vector4(45.48, -1748.85, 28.55, 55.1),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{  -------Youtool Shop------
	model = `s_m_m_lathandy_01`,
	coords = vector4(2748.07, 3472.72, 54.70, 238.96),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-3242.23, 999.97, 11.85, 351.66),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(24.5, -1346.63, 28.60, 273.18),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-47.18, -1758.46, 28.45, 39.64),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-706.02, -913.9, 18.35, 86.17),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-1486.75, -377.57, 39.20, 132.60),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
	-- San Andreas Ave Robs Liquor
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-1221.30, -907.82, 11.40, 34.60),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Carrson Ave
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(372.6, 327.06, 102.55, 258.49),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- North Rockford
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-1819.96, 794.04, 137.10, 126.36),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Great Ocean South
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-3039.89, 584.21, 6.90, 16.15),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Great Ocean Robs Liquor
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-2966.41, 391.62, 14.05, 84.40),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Mirror Park
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1164.72, -323.04, 68.25, 93.92),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Vespucci Boulevard Robs Liquor
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1134.32, -983.25, 45.45, 278.23),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Route 68
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(549.24, 2670.37, 41.25, 94.15),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Sandy
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1959.72, 3740.68, 31.40, 297.43),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Sandy Shores Robs Liquor
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1165.25, 2710.80, 38.16, 183.01),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Grape Seed
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1697.8, 4923.14, 41.10, 321.33),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Great Ocean North
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1728.33, 6416.21, 34.05, 241.78),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- LS Freeway
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(2677.32, 3279.69, 54.30, 323.82),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{---by youtool
	model = 'mp_m_shopkeep_01',
	coords = vector4(2557.28, 380.78, 107.65, 359.83),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Ammunations
{   ----vesspuci
	model = 's_m_y_ammucity_01',
	coords = vector4(-661.98, -933.57, 20.80, 181.76),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Legion Square
{
	model = 's_m_y_ammucity_01',
	coords = vector4(22.59, -1105.55, 28.80, 159.83),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Popular Street
{
	model = 's_m_y_ammucity_01',
	coords = vector4(810.21, -2159.02, 28.60, 1.43),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Vespucci Boulevard
{
	model = 's_m_y_ammucity_01',
	coords = vector4(842.42, -1035.31, 27.20, 358.67),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Vinewood Hills
{
	model = 's_m_y_ammucity_01',
	coords = vector4(253.87, -50.58, 68.95, 67.39),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Palomino Freeway
{
	model = 's_m_y_ammucity_01',
	coords = vector4(2567.97, 292.64, 107.80, 358.18),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Route 68
{
	model = 's_m_y_ammucity_01',
	coords = vector4(-1118.98, 2699.77, 17.60, 223.39),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Sandy Shores
{
	model = 's_m_y_ammucity_01',
	coords = vector4(1692.21, 3760.91, 33.70, 229.39),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Paleto
{
	model = 's_m_y_ammucity_01',
	coords = vector4(-331.61, 6084.92, 30.55, 226.57),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{ --sea world
	model = 'cs_dom',
	coords = vector4(-1686.39, -1072.48, 12.15, 50.1),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
----------------CLOTHING---------------------
["clothing1"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(427.1, -806.15, 29.49, 90.64),
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},
["clothing2"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(73.89, -1392.95, 29.38, 262.3),
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
["clothing3"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(127.02, -224.21, 54.56, 70.92),
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
["clothing4"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(-708.2, -153.04, 37.42, 119.84), 
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
["clothing5"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(-164.45, -301.57, 39.73, 258.45), 
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
["clothing6"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(-1449.85, -239.18, 49.81, 43.98), 
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
["clothing7"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(-823.18, -1072.3, 11.33, 209.94), 
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
	["clothing8"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(-1204.69, -1458.99, 4.34, 35.11), 
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
["clothing9"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(612.99, 2761.69, 42.09, 274.06), 
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
["clothing10"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(1196.69, 2711.71, 38.22, 177.3), 
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
["clothing11"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(-1102.55, 2711.58, 19.11, 236.85), 
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
	["clothing12"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(1695.4, 4823.06, 42.06, 91.61), 
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
	["clothing13"] = {
	model = 'a_f_o_indian_01',
	coords = vector4(5.81, 6511.37, 31.88, 40.06), 
	minusOne = true,
	freeze = true,
	invincible = true,
	blockevents = true,
	target = {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fas fa-tshirt",
				label = "Open Clothing Store",
			},
		},
		distance = 2.5,
	},
	currentpednumber = 0,
},	
}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCount() return true end
local function CitizenCheck() return true end

CreateThread(function()
	local state = GetResourceState('qb-core')
	if state ~= 'missing' then
		if state ~= 'started' then
			local timeout = 0
			repeat
				timeout += 1
				Wait(0)
			until GetResourceState('qb-core') == 'started' or timeout > 100
		end
		Config.Standalone = false
	end
	if Config.Standalone then
		local firstSpawn = false
		local event = AddEventHandler('playerSpawned', function()
			SpawnPeds()
			firstSpawn = true
		end)
		-- Remove event after it has been triggered
		while true do
			if firstSpawn then
				RemoveEventHandler(event)
				break
			end
			Wait(1000)
		end
	else
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCount = function(item)
			for _, v in pairs(PlayerData.items) do
				if v.name == item then
					return true
				end
			end
			return false
		end

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and not ItemCount(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end