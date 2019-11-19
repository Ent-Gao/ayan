--I N D E X
------------
--TOOLS
--LIGHTS
--SURVIVAL
--FOOD
--SCIENCE
--FIGHT
--STRUCTURES
--TURFS
--REFINE
--MAGIC
--DRESS
--ANCIENT
--BOOKS
--CARTOGRAPHY
--CONSTRUCTION
--CRITTERS
--SCULPT
--EVENTS
--PLANTS
--OBJECTS
--CAVES
--RUINS
--MONSTERS
--NEUTRAL ANIMALS
--PASSIVE ANIMALS
--TALLBIRD
--BOSSES
--OTHER MOBS
--PLAYERS
--MEATS
--FRUITS
--VEGETABLES
--CROCK POT
--OTHER FOOD
--MISC ITEMS
--ADVENTURE MODE
--UNIMPLEMENTED
--ANNOUNCEMENTS
------------

return {

	DESCRIBE_GENERIC = "Check this shit out.", --Generic
	DESCRIBE =
	{
		--(TOOLS)--
		AXE = "去砍树！去砍树！", --Axe
		GOLDENAXE = "这可是金斧子呐", --Luxury Axe
		SHOVEL = "挖！挖！挖！", --Shovel
		GOLDENSHOVEL = "金铲子呐，真浪费", --Regal Shovel
		PICKAXE = "凿！凿！凿！", --Pickaxe
		GOLDENPICKAXE = "金的硬度其实不大", --Opulent Pickaxe
		RAZOR = "If I ever need a clean shave.", --Razor
		HAMMER = "Break all kinds of shit with this.", --Hammer
		PITCHFORK = "I should be on a farm.", --Pitchfork
		LUCY = "Who's ever heard of a talkin' axe?", --Lucy the Axe
		FEATHERPENCIL = "The only way to write down shit.", --Feather Pencil
		BRUSH = "This ain't for me.", --Brush
        SADDLE_BASIC = "Guess this makes me a jockey.", --Saddle
        SADDLE_WAR = "This'll put the hurt on anyone.", --War Saddle
        SADDLE_RACE = "This thing's got some speed.", --Glossamer Saddle
        SADDLEHORN = "Gives me some distance to take that seat off.", --Saddlehorn
        SALTLICK = "It's too much of a good thing.", --Salt Lick
		
		
		
		
		--(LIGHTS)--
		CAMPFIRE = --Campfire
		{
			NORMAL = "Let there be light.",
			EMBERS = "That ain't burnin' so good.",
			LOW = "Needs more fuel.",
			HIGH = "Woah SHIT! That fire's crazy!",
		},
		FIREPIT = --Fire Pit
		{
			NORMAL = "Let there be light.",
			OUT = "We can make camp here.",
			EMBERS = "That ain't burnin' so good.",
			LOW = "Needs more fuel.",
			HIGH = "Woah SHIT! That fire's crazy!",
		},
		TORCH = "Though I walk through the valley of the shadow of death, I will fear no evil.", --Torch
		MINERHAT = "Now I can hussle in the dark.", --Miner Hat
		PUMPKIN_LANTERN = "Puttin' that pumpkin to good use.", --Pumpkin Lantern
		LANTERN = "I've been needin' a better light.", --Lantern
		COLDFIRE = --Endothermic Fire
		{
			NORMAL = "This is some weird ass fire.",
			EMBERS = "That ain't burnin' so good.",
			LOW = "Needs more fuel.",
			HIGH = "Woah SHIT! That fire's crazy!",
		},
		COLDFIREPIT = --Endothermic Fire Pit
		{
			NORMAL = "This is some weird ass fire.",
			OUT = "Gotta stay cool somehow.",
			EMBERS = "That ain't burnin' so good.",
			LOW = "Needs more fuel.",
			HIGH = "Woah SHIT! That fire's crazy!",
		},
		MOLEHAT = "It's a weird way of seein' things but hell, it works.", --Moggles
        MUSHROOM_LIGHT = --Mushlight
        {
            ON = "That really lights up.",
            OFF = "Any light is better than no light.",
			BURNING = "Oh come on!",
            BURNT = "Well that didn't last.",
        },
        MUSHROOM_LIGHT2 = --Glowcap
        {
            ON = "This shit's pretty cool.",
            OFF = "Any light is better than no light.",
			BURNING = "Oh come on!",
            BURNT = "Well that didn't last.",
        },
		LIGHTER  = "It's the girl's lighter.", --Willow's Lighter
		--CUSTOM
		DELUXE_FIREPIT = --Deluxe Firepit
		{
			NORMAL = "That's a damn good firepit.",
			OUT = "Camping in style.",
			EMBERS = "That ain't burnin' so good.",
			LOW = "Needs more fuel.",
			HIGH = "Woah SHIT! That fire's crazy!",
		},
		ENDO_FIREPIT = --Deluxe Endothermic Fire
		{
			NORMAL = "That's a damn good firepit.",
			OUT = "That's one rightous cold firepit.",
			EMBERS = "That ain't burnin' so good.",
			LOW = "Needs more fuel.",
			HIGH = "Woah SHIT! That fire's crazy!",
		},
		--HEAT_STAR = "", --Star of Anchiale
		--ICE_STAR = "", --Star of Boreas
		
		
		
		
		--(SURVIVAL)--
		BACKPACK = "For all my carrying needs.", --Backpack
		PIGGYBACK = "That's got some room.", --Piggyback
		BIRDTRAP = "Snag me a bird.", --Bird Trap
		BUGNET = "Them bugs better watch out.", --Bug Net
		FISHINGROD = "Been a while since I tossed a line.", --Fishing Rod
		BEDROLL_STRAW = "Beats sleepin' on the ground.", --Straw Roll
		BEDROLL_FURRY = "Best bedroll you ever did see.", --Fur Roll
		TENT = --Tent
		{
			"Thank you Jesus. A tent!",
			BURNING = "Tent's burnin' up!",
			BURNT = "Aw hell, not the tent!",
		},
		TRAP = "Gonna trap me some bitches!", --Trap
		BANDAGE = "Let's get patched up.", --Honey Poultice
		HEALINGSALVE = "This shit'll help.", --Healing Salve
		UMBRELLA = "This'll keep the rain off me.", --Umbrella
		COMPASS = --Compass
		{
			"Which way am I facing?",
			N = "North",
			S = "South",
			E = "East",
			W = "West",
			NE = "Northeast",
			SE = "Southeast",
			NW = "Northwest",
			SW = "Southwest",
		},
		ICEPACK = "When you gotta snack on the run.", --Insulated Pack
		FEATHERFAN = "That's a real nice draft.", --Luxury Fan
		SIESTAHUT = --Siesta Lean-to
		{
			"If the days get too hot, I know where I'm headin'.",
			BURNING = "That ain't helpin'!",
			BURNT = "How am I suppose to cool off now?",
		},
		HEATROCK = --Thermal Stone
		{
			"Feels like any old rock.",
			FROZEN = "Cool as ice.",
			COLD = "Chilly.",
			WARM = "It's all warm.",
			HOT = "That's hot as hell.",
		},
		GRASS_UMBRELLA = "Not much of an umbrella.", --Pretty Parasol
		REVIVER = "The next best thing to a defib unit.", --Telltale Heart
		LIFEINJECTOR = "It's a shot of some kind.", --Booster Shot
		MINIFAN = "Gotta beat the heat somehow.", --Whirly Fan
		BERNIE_ACTIVE = "I must be dreamin'...", --Bernie
		BERNIE_INACTIVE = --Bernie
		{
			"It ain't very cuddly.",
			BROKEN = "It finally gave up.",
		},
        BUNDLEWRAP = "Can wrap me anything I want.", --Bundling Wrap
        BUNDLE = "Sealed up nice and tight.", --Bundled Supplies
		--CUSTOM
		PAINPILLS = --Pain Pills
		{
			"Pills here!", 
			"We got pills!",
			"Anyone need some pills?!",
		},
		ADRENALINE = "Adrenaline shot here!", --Adrenaline Shot
		HEALTHKIT = --First Aid Kit
		{
			"First aid here!", 
			"First aid kit here!",
		},
		DEFIBRILLATOR = --Defibrillator
		{
			"Chest paddles here!",
			"Defib unit here!",
		},
		SMALL_MEDKIT = "Damn right. Gonna take everything I can.",
		MED_MEDKIT = "Anyone need a kit?",
		LARGE_MEDKIT = "Not a bad first aid kit.",
		
		
		
		
		--(FOOD)--
		COOKPOT = --Crock Pot
		{
			EMPTY = "Finally something that makes sense to me.",
			COOKING_LONG = "Oh come on baby! Come on!",
			COOKING_SHORT = "Won't be long now.",
			DONE = "Now we're cookin'.",
			BURNING = "Not the pot!",
			BURNT = "Poor crock pot never stood a chance...",
		},
		BEEBOX = --Bee Box
		{
			"Bees in a box.",
			READY = "It's ready!",
			NOHONEY = "Bees in a box.",
			SOMEHONEY = "Looking good!",
			FULLHONEY = "That thing is just oozin' with honey!",
			BURNING = "Save yourselves little bees!",
			BURNT = "Poor bees.",
		},
		FARMPLOT = --Basic Farm, Improved Farm
		{
			"Living off the land.",
			GROWING = "Come on. Keep it up.",
			NEEDSFERTILIZER = "Needs a kick of something.",
			BURNING = "Oh shit, the farms!",
			BURNT = "It's growin' days are over.",
		},
		ICEBOX = "Good food needs a good home.", --Ice Box
		MEATRACK = --Drying Rack
		{
			"Need's meat.",
			DRYING = "I can hardly wait.",
			DONE = "Jerky for me.",
			DRYINGINRAIN = "Dammit, rain's just makin' it worse.",
			BURNING = "Oh hell, post is gettin' roasted!",
			BURNT = "That's a little TOO dry.",
		},
		MUSHROOM_FARM = --Mushroom Planter
		{
			EMPTY = "A dank log that grows shrooms.",
			SOME = "They're poppin' out.",
			LOTS = "That's growin' real good.",
			STUFFED = "Damn, I'm impressed.",
			ROTTEN = "Log's finally died out.",
			BURNING = "The log's on fire!",
			BURNT = "Smells like burnt shit.",
			SNOWCOVERED = "Snow's trouble for the shrooms.",
		},
		FERTILIZER = "The only way I'd work with shit.", --Bucket-o-poop
		--CUSTOM
		DELUXPOT = --Deluxe Pot
		{
			EMPTY = "That's one hell of a crock pot.",
			COOKING_LONG = "Oh come on baby! Come on!",
			COOKING_SHORT = "Won't be long now.",
			DONE = "Now we're cookin'.",
			BURNING = "Not the pot!",
			BURNT = "Poor crock pot never stood a chance...",
		},
		
		
		
		
		--(SCIENCE)--
		RESEARCHLAB = --Science Machine
		{	
			"It's uhh... well it's something.",
			BURNING = "Oh shit! The machine's on fire!",
			BURNT = "I don't think it's suppose to look like that.",
		},
		RESEARCHLAB2 = --Alchemy Engine
		{
			"This shit just confuses me more.",
			BURNING = "Oh shit! The machine's on fire!",
			BURNT = "That can't be all that's left.",
		},
		WINTEROMETER = --Thermal Measurer
		{
			"What's the temperature?",
			BURNING = "It's on fire!",
			BURNT = "Couldn't take the heat.",
		},
		RAINOMETER =  --Rainometer
		{	
			"Today's forecast...",
			BURNING = "It's on fire!",
			BURNT = "Suppose I'll look at the sky instead.",
		},
		LIGHTNING_ROD = --Lightning Rod
		{
			"Now them storms won't be so dangerous.",
			CHARGED = "I'll be damned. Even I didn't think that was gonna work.",
		},
		GUNPOWDER = "Alright now this is gonna blow some shit up.", --Gunpowder
		FIRESUPPRESSOR =  --Ice Flingomatic
		{	
			ON = "It's workin'.",
			OFF = "It's off.",
			LOWFUEL = "Let's get this thing fueled up!",
		},
		TRANSISTOR = "Some kind of doohickey.", --Electrical Doodad
		CARTOGRAPHYDESK = --Cartographer's Desk
		{
			"Can make maps and shit.",
			BURNING = "Shit's on fire!",
			BURNT = "God dammit.",
		},
   		SCULPTINGTABLE= --Potter's Wheel
   		{
			EMPTY = "Where to even begin...",
			BLOCK = "Let's get to work.",
			SCULPTURE = "Lookin' good!",
			BURNING = "Shit's on fire!",
			BURNT = "Son of a bitch.",
   		},
		ACCOMPLISHMENT_SHRINE = "They better name a school after me for this shit.", --Accomploshrine
		
		
		
		
		--(FIGHT)--
		SPEAR = "I'm not a violent man, but I ain't stupid neither.", --Spear
		HAMBAT = "What a waste of a perfectly good ham.", --Ham Bat
		BOOMERANG = "Never tossed one of these before.", --Boomerang
		BLOWDART_PIPE = "That levels the playing field.", --Blow Dart
		BLOWDART_FIRE = "Let's burn some shit UP!", --Fire Dart
		BLOWDART_SLEEP = "Puts bitches to sleep.", --Sleep Dart
		BLOWDART_YELLOW = "Poor sons of bitches won't know what zapped them.", --Electric Dart
		FOOTBALLHAT = "Just like when I use to play college ball.", --Football Helmet
		ARMORGRASS = "It ain't much protection but it'll do.", --Grass Suit
		ARMORWOOD = "Now I won't hurt as bad.", --Log Suit
		ARMORMARBLE = "Ain't nobody going to beat my ass with this.", --Marble Suit
		BEEMINE = "Anyone messing with that is gonna be in a world of shit.", --Bee Mine
		TRAP_TEETH = "Hehe... Watch that first step baby.", --Tooth Trap
		ARMORDRAGONFLY = "This shit is FIRE!", --Scalemail
		NIGHTSTICK = "This thing's electric.", --Morning Star
		STAFF_TORNADO = "Squall's really startin' now.", --Weather Pain
		WATHGRITHRHAT = "Looks like Wiggy's hat.", --Battle Helm
		SPEAR_WATHGRITHR = "Yeah... This is my kind of weapon.", --Battle Spear
        WHIP = "Crack a lackin'!", --Tail o' Three Cats
        SLEEPBOMB = "You snooze, you lose.", --Napsack
		--CUSTOM
		--BONESAW = "",
		--UBERSAW = "",
		--VITASAW = "",
		--BLOWDART_HEALTH = "",
		
		
		
		
		--(STRUCTURES)--
		BIRDCAGE = --Birdcage
		{
			"Could use a bird.",
			OCCUPIED = "Wassup little guy.",
			SLEEPING = "Sleep tight now.",
			HUNGRY = "You hungry? Yeah me too.",
			STARVING = "You don't look so good.",
			DEAD = "Damn... Shoulda taken better care of you.",
			SKELETON = "Should probably clean the cage...",
		},
		PIGHOUSE = --Pig House
		{
			"Those pigs must feel safe livin' in there.",
			FULL = "I wonder if they got dinner cookin'.",
			LIGHTSOUT = "Anyone home?!",
			BURNING = "That pig house is lit up!",
			BURNT = "That's a nasty damn mess.",
		},
		RABBITHOUSE = --Rabbit Hutch
		{
			"This is some crazy ass world we live in now.",
			BURNING = "Big ass carrot's on fire!",
			BURNT = "That's a nasty damn mess.",
		},
		WALL_HAY_ITEM = "Hay hay hay!", --Hay Wall
		WALL_HAY = --Hay Wall
		{	
			"This ain't much of a wall.",
			BURNING = "The wall's on fire!",
			BURNT = "Well that didn't last.",
		},
		WALL_WOOD_ITEM = "Walls made from logs.", --Wood Wall
		WALL_WOOD = --Wood Wall
		{
			"Some good fortification.",
			BURNING = "The wall's on fire!",
			BURNT = "So much for structure.",
		},
		WALL_STONE_ITEM = "Rocks for walls.", --Stone Wall
		WALL_STONE = "Looks solid.", --Stone Wall
		WALL_MOONROCK_ITEM = "This moon shit makes for good walls.", --Moon Rock Wall
		WALL_MOONROCK = "That there's one hell of a wall.", --Moon Rock Wall
		TREASURECHEST = --Chest
		{
			"A place to keep your goods safe.",
			BURNING = "All that shit's gettin' torched!",
			BURNT = "Aw hell... That's a damn shame.",
		},
		DRAGONFLYCHEST = "Well I'll be damned, a fireproof chest.", --Scaled Chest
		DRAGONFLYFURNACE = "Now there's a furnace worth givin' a damn.", --Scaled Furnace
		HOMESIGN = --Sign
		{
			"Wonder what it says.",
            UNWRITTEN = "This shit's blank.",
			BURNING = "Can't read it when it's on fire!",
			BURNT = "Now it's unreadable.",
		},
		ARROWSIGN_POST = --Directional Sign
		{
			"Point me in the right direction.",
            UNWRITTEN = "This shit's blank.",
			BURNING = "Can't read it when it's on fire!",
			BURNT = "Now it's unreadable.",
		},
		ARROWSIGN_PANEL = --Directional Sign
		{
			"Point me in the right direction.",
            UNWRITTEN = "This shit's blank.",
			BURNING = "Can't read it when it's on fire!",
			BURNT = "Now it's unreadable.",
		},
        MINISIGN_ITEM = "Enough space to draw just about anything.", --Mini Sign
        MINISIGN = --Mini Sign
        {
            "Sometimes pictures make for good words.",
            UNDRAWN = "Could use a good drawing.",
        },
        FENCE_ITEM = "Can start my own farm now.", --Wood Fence
		FENCE = "That's the rural lifestyle.", --Wood Fence
        FENCE_GATE_ITEM = "A gate for a fence.", --Wood Gate
        FENCE_GATE = "Can pass through here.", --Wood Gate
   		SCARECROW = --Friendly Scarecrow
   		{
			"That scarecrow's scarin' me.",
			BURNING = "The scarecrow's on fire!",
			BURNT = "No more scarin' here.",
   		},
		WARDROBE = --Wardrobe
		{
			"I could use a change of clothes.",
            BURNING = "Clothes are burnin' up!",
			BURNT = "Nothing left to change into.",
		},
		POTTEDFERN = "It's good to have some decoration around here.", --Potted Fern
        SUCCULENT_POTTED = "This decor's alright.", --Potted Succulent
		--CUSTOM
		MECH_HAY_ITEM = "A gate made from hay.", --Hay Wall Gate
		MECH_HAY = "I can pass through this hay wall.", --Hay Wall Gate
		MECH_WOOD_ITEM = "It's a gate made out of wood.", --Wood Wall Gate
		MECH_WOOD = "I can go through that wooden wall.", --Wood Wall Gate
		MECH_STONE_ITEM = "A gate made of stone.", --Stone Wall Gate
		MECH_STONE = "This stone wall will let me through.", --Stone Wall Gate
		MECH_MOONROCK_ITEM = "Hell, a gate made from moon rocks.", --Moonrock Wall Gate
		MECH_MOONROCK = "Can pass through this moon wall.", --Moonrock Wall Gate
		
		
		
		
		--(TURFS)--
        TURF_DIRT = "It's just dirt.", --Barren Turf
		TURF_FOREST = "A plot of land.", --Forest Turf
        TURF_GRASS = "A plot of land.", --Grass Turf
        TURF_MARSH = "A plot of land.", --Marsh Turf
        TURF_ROCKY = "A plot of land.", --Rocky Turf
        TURF_SAVANNA = "A plot of land.", --Savanna Turf
		TURF_DECIDUOUS = "A plot of land.", --Deciduous Turf
		TURF_BADLANDS = "A plot of land.", --Badlands Turf
		TURF_SANDY = "A plot of land.", --Sandy Turf
		TURF_DESERTDIRT = "A plot of land.", --Sandy Turf
        TURF_WOODFLOOR = "Some nice wood floors.", --Wooden Flooring
        TURF_ROAD = "This makes travelin' way easier.", --Cobblestones
        TURF_CHECKERFLOOR = "Got a smooth surface.", --Checkerboard Flooring
        TURF_CARPETFLOOR = "That there's some soft carpet.", --Carpeted Flooring
		TURF_DRAGONFLY = "This ground is crazy.", --Scaled Flooring
		TURF_MUD = "A plot of land.", --Mud Turf
		TURF_CAVE = "This is just literal shit.", --Guano Turf
		TURF_SINKHOLE = "A plot of land.", --Slimey Turf
		TURF_FUNGUS_RED = "A plot of land.", --Fungal Turf (Red)
		TURF_FUNGUS_GREEN = "A plot of land.", --Funal Turf (Green)
		TURF_FUNGUS = "A plot of land.", --Fungal Turf (Blue)
		TURF_UNDERROCK = "A plot of land.", --Cave Rock Turf
		--CUSTOM
		TURF_STICKY = "Feet'll really stick steppin' in this shit.", --Honey Turf
		
		
		
		
		--(REFINE)--
		ROPE = "Something to tie up?", --Rope
		BOARDS = "Build me all kinds of shit now.", --Boards
		CUTSTONE = "Real smooth...", --Cut Stone
		PAPYRUS = "Papers here!", --Papyrus
		PURPLEGEM = "This shit looks valuable.", --Purple Gem
		NIGHTMAREFUEL = "This shit's crazy!", --Nightmare Fuel
		MOONROCKCRATER = "Looks like something can fit into it.", --Cratered Moonrock
        MARBLEBEAN = "It ain't even edible.", --Marble Bean
        BEESWAX = "It's wax alright.", --Beeswax
        WAXPAPER = "Slightly better paper.", --Wax Paper
		
		
		
		
		--(MAGIC)--
		RESURRECTIONSTATUE = --Meat Effigy
		{
			"Huh. Second time better be the charm.",
			BURNING = "Fire over here!",
			BURNT = "A real damn shame.",
		},		
		RESEARCHLAB4 = --Prestihatitator
		{
			"Shit. Shoulda taught this class.",
			BURNING = "Fire's burnin' that magic machine up!",
			BURNT = "When crazy shit comes to an end.",
		},
		RESEARCHLAB3 = --Shadow Manipulator
		{
			"This is some voodoo shit right here.",
			BURNING = "Fire's burnin' that magic machine up!",
			BURNT = "Coulda gotten more use outta this thing.",
		},
		PANFLUTE = "How the hell do you play this?", --Pan Flute
		NIGHTLIGHT = "Sure looks evil for a light.", --Night Light
		ARMOR_SANITY = "How does anyone stay sane wearing this shit?", --Night Armour
		NIGHTSWORD = "Now I ain't effin' around!", --Dark Sword
		ONEMANBAND = "A marching band all in one.", --One-man Band
		BATBAT = "I'm gonna smack some shit with this.", --Bat Bat
		ARMORSLURPER = "This shit's just torture.", --Belt of Hunger
		BLUEAMULET = "It's nippy for jewelry.", --Chilled Amulet
		PURPLEAMULET = "You must be sick in the head to wear this thing.", --Nightmare Amulet
		AMULET = "I just keep comin' back.", --Life Giving Amulet
		FIRESTAFF = "Burn baby burn!", --Fire Staff
		ICESTAFF = "Stops bitches dead in their tracks.", --Ice Staff
		TELESTAFF = "Where you go, nobody knows.", --Telelocator Staff
		--TELEBASE = --Telelocator Focus
		--{
		--	VALID = "",
		--	GEMS = "",
		--},
		--GEMSOCKET = --Telelocator Socket
		--{
		--	VALID = "",
		--	GEMS = "",
		--},
		BELL = "If only it was a dinner bell.", --Old Bell
		--SENTRYWARD = --Ocuvigil
		--{
		--	"",
		--	BURNING = "",
		--	BURNT = "",
		--},
        MOONDIAL =  --Moon Dial
        {
			"That fountain shows the moon.",
			NIGHT_NEW = "Seems to be a new moon.",
			NIGHT_WAX = "The moon's waxin'.",
			NIGHT_FULL = "Full moon out tonight.",
			NIGHT_WANE = "The moon's wanin'.",
			CAVE = "Can't measure a moon with no sky.",
        },
        --TOWNPORTAL = --The Lazy Deserter
        --{
		--	"",
		--	ACTIVE = "",
		--},
		--CUSTOM
		--AMPUTATOR = "",
		
		
		
		
		--(DRESS)--
		SEWING_KIT = "Can't let my favorite clothes go to shit.", --Sewing Kit
		SEWING_TAPE = "Can fix just about anything.", --Trusty Tape
		EARMUFFSHAT = "No way are my ears freezin' off.", --Rabbit Earmuffs
		STRAWHAT = "A working man like myself needs this.", --Straw Hat
		BEEFALOHAT = "The farm smell just means it's working.", --Beefalo Hat
		BEEHAT = "Won't be feelin' a sting with this thing.", --Beekeeper Hat
		FEATHERHAT = "This ain't arts and crafts time.", --Feather Hat
		WINTERHAT = "Some winter time headwear.", --Winter Hat
		TOPHAT = "Shit. I'd pay cash money for this.", --Top Hat
		BUSHHAT = "Hide? Pussies...", --Bush Hat
		FLOWERHAT = "Not what I'd wear normally.", --Garland
		CATCOONHAT = "It sure is soft.", --Cat Cap
		WATERMELONHAT = "Desperate times call for desperate measures.", --Fashion Melon
		ICEHAT = "What are my other options?", --Ice Cube
		RAINHAT = "Keeps the rain off my face.", --Rain Hat
		EYEBRELLAHAT = "Eyes for hats. How about that.", --Eyebrella
        GOGGLESHAT = "I bet I look cool in these.", --Fashion Goggles
        DESERTHAT = "When things get too dry for my eyes.", --Desert Goggles
        MUSHROOMHAT = "Never thought I'd see the day when I'd wear a mushroom on my head.", --Funcap
		SWEATERVEST = "Best vest you ever wanna wear.", --Dapper Vest
		TRUNKVEST_SUMMER = "Maybe now I won't freeze my ass off.", --Breezy Vest
		TRUNKVEST_WINTER = "For those long ass winter days.", --Puffy Vest
		RAINCOAT = "Can't even feel the rain in this.", --Rain Coat
		REFLECTIVEVEST = "Summer ain't got shit on me now.", --Summer Frest
		HAWAIIANSHIRT = "The closest thing to a vacation.", --Floral Shirt
		BEARGERVEST = "This here is a lotta fur.", --Hibearnation Vest
		CANE = "Best way to hussle.", --Walking Cane
		
		
		
		
		--(ANCIENT)--
		--THULECITE = "", --Thulecite
		--WALL_RUINS_ITEM = "", --Thulecite Wall
		--WALL_RUINS = "", --Thulecite Wall
		--NIGHTMARE_TIMEPIECE = --Thulecite Medallion
		--{
        --    CALM = "",
        --    WARN = "",
        --    WAXING = "",
        --    STEADY = "",
        --    WANING = "",
        --    DAWN = "",
        --    NOMAGIC = "",
		--},
		--ORANGEAMULET = "", --The Lazy Forager
		--YELLOWAMULET = "", --Magiluminescence
		--GREENAMULET = "", --Construction Amulet
		--ORANGESTAFF = "", --The Lazy Explorer
		--YELLOWSTAFF = "", --Star Caller's Staff
		--GREENSTAFF = "", --Deconstruction Staff
		--MULTITOOL_AXE_PICKAXE = "", --Pick/Axe
		--RUINSHAT = "", --Thulecite Crown
		--ARMORRUINS = "", --Thulecite Suit
		--RUINS_BAT = "", --Thulecite Club
		--EYETURRET_ITEM = "",  --Houndius Shootius
		EYETURRET = "I'm gettin' all kinds of heebie jeebies lookin' at that thing.", --Houndius Shootius
		--MECH_RUINS_ITEM = "", --Thulecite Wall Gate
		--MECH_RUINS = "", --Thulecite Wall Gate
		
		
		
		
		--(BOOKS)--
		--BOOK_BIRDS = "", --Birds of the World
		--BOOK_GARDENING = "", --Applied Horticulture
		--BOOK_SLEEP = "", --Sleepytime Stories
		--BOOK_BRIMSTONE = "", --The End is Nigh!
		--BOOK_TENTACLES = "", --On Tentacles
		
		
		
		
		--(CARTOGRAPHY)--
        --MAPSCROLL = "", --Map Scroll
		
		
		
		
		--(CONSTRUCTION)--
		SCRAP = "Looks like a pile of junk.", --Scrap Metal
		EHARDHAT = "Gotta keep your head safe.", --Hard Hat
		ESENTRY = "This some god damn fire power.", --Sentry Gun
		DISPENSER = "What's it do?", --Dispenser
		ETELEPORTER = "The fastest way around.", --Teleporter Entrance
		--ETELEPORTER_EXIT = "", --Teleporter Exit
		TF2WRENCH = "Could smack some shit with that.", --Wrench
		
		
		
		
		--(CRITTERS)--
        CRITTER_KITTEN = --Kittykit
		{
			"Come here kitty kitty.", 
			SLEEPING = "Sleepy little thing.",
		},
        CRITTER_PUPPY = --Vargling
		{
			"How you doin' little pup?",
			SLEEPING = "Sleepy little thing.",
		},
		CRITTER_LAMB = --Ewelet
		{
			"Ain't you a cute one.",
			SLEEPING = "Sleepy little thing.",
		},
        CRITTER_DRAGONLING = --Broodling
		{
			"You sure are tiny.", 
			SLEEPING = "Sleepy little thing.",
		},
        CRITTER_GLOMLING = --Glomglom
		{
			"It's like cotton candy with wings.", 
			SLEEPING = "Sleepy little thing.",
		},
        CRITTER_PERDLING = --Giblet
		{
			"Nah, you're too cute to eat.", 
			SLEEPING = "Sleepy little thing.",
		},
		
		
		--(SCULPT)--
        --CHESSPIECE_HORNUCOPIA = "", --Carved Hornucopia
        --CHESSPIECE_PIPE = "", --Bubble Pipe Carving
        --CHESSPIECE_PAWN = "", --Pawn Figure
        --CHESSPIECE_ROOK = --Rook Figure
        --{
        --   "",
        --    STRUGGLE = "",
        --},
        --CHESSPIECE_KNIGHT = --Knight Figure
        --{
        --    "",
        --    STRUGGLE = "",
        --},
        --CHESSPIECE_BISHOP = --Bishop Figure
        --{
        --    "",
        --    STRUGGLE = "",
        --},
        --CHESSPIECE_MUSE = "", --Queenly Figure
        --CHESSPIECE_FORMAL = "", --Kingly Figure
        --CHESSPIECE_DEERCLOPS = "", --Deerclops Figure
        --CHESSPIECE_BEARGER = "", --Bearger Figure
        --CHESSPIECE_MOOSEGOOSE = "", --Moose/Goose Figure
        --CHESSPIECE_DRAGONFLY = "", --Dragonfly Figure
		
		
		
		
		--(EVENTS: HALLOWED NIGHTS)--
        --CANDYBAG = "", --Candy Bag
        --HALLOWEENCANDY_1 = "", --Candy Apple
        --HALLOWEENCANDY_2 = "", --Candy Corn
        --HALLOWEENCANDY_3 = "", --Not-So-Candy Corn
        --HALLOWEENCANDY_4 = "", --Gummy Spider
        --HALLOWEENCANDY_5 = "", --Catcoon Candy
        --HALLOWEENCANDY_6 = "", --Raisins
        --HALLOWEENCANDY_7 = "", --Box of Raisins
        --HALLOWEENCANDY_8 = "", --Ghost Pop
        --HALLOWEENCANDY_9 = "", --Jelly Worm
        --HALLOWEENCANDY_10 = "", --Tentacle Lolli
        --HALLOWEENCANDY_11 = "", --Choco Pigs
        --HALLOWEENCANDY_12 = "", --Candy Lice
        --HALLOWEENCANDY_13 = "", --Otherworldly Jawbreaker
        --HALLOWEENCANDY_14 = "", --Lava Pepper
        --TRINKET_32 = "", --Cubic Zirconia Ball
        --TRINKET_33 = "", --Spider Ring
        --TRINKET_34 = "", --Monkey Paw
        --TRINKET_35 = "", --Empty Elixir
        --TRINKET_36 = "", --Faux fangs
        --TRINKET_37 = "", --Broken Stake
        --TRINKET_38 = "", -- Binoculars
        --TRINKET_39 = "", -- Lone Glove
        --TRINKET_40 = "", -- Snail Scale
        --TRINKET_41 = "", -- Goop Canister
        --TRINKET_42 = "", -- Toy Cobra
        --TRINKET_43= "", -- Crocodile Toy
        --TRINKET_44 = "", -- Broken Terrarium
        --TRINKET_45 = "", -- Odd Radio
        --TRINKET_46 = "", -- Broken Hairdryer
		
		
		
		
		--(EVENTS: WINTERS FEAST)--		
        --GIFTWRAP = "", --Gift Wrap
		--GIFT = "", --Gift
		--WINTER_TREESTAND = --Festive Tree Planter, Winter's Feast Tree
		--{
        --    "",
        --    BURNT = "",
		--},
        --WINTER_FOOD1 = "", --Gingerbread Cookie
        --WINTER_FOOD2 = "", --Sugar Cookie
        --WINTER_FOOD3 = "", --Candy Cane
        --WINTER_FOOD4 = "", --Eternal Fruitcake
        --WINTER_FOOD5 = "", --Chocolate Log Cake
        --WINTER_FOOD6 = "", --Plum Pudding
        --WINTER_FOOD7 = "", --Apple Cider
        --WINTER_FOOD8 = "", --Hot Cocoa
        --WINTER_FOOD9 = "", --Heavenly Eggnog
        --WINTER_ORNAMENT = "", --Festive Bauble
        --WINTER_ORNAMENTLIGHT = "", --Festive Light
        --WINTER_ORNAMENTBOSS = "", --Magnificent Adornment
		
		
		
		
		--(EVENTS: YEAR OF THE GOBBLER)--
        --PERDSHRINE = --Gobbler Shrine
        --{
        --    "",
        --    EMPTY = "",
        --    BURNT = "",
        --},
        --REDPOUCH = "", --Red Pouch
        --LUCKY_GOLDNUGGET = "", --Lucky Gold Nugget
        --FIRECRACKERS = "", --Red Firecrackers
        --REDLANTERN = "", --Red Lantern
        --PERDFAN = "", --Lucky Fan
        --DRAGONHEADHAT = "", --Lucky Beast Head
        --DRAGONBODYHAT = "", --Lucky Beast Body
        --DRAGONTAILHAT = "", --Lucky Beast Tail
        --WARGSHRINE = --Varg Shrine
        --{
        --    "",
        --    EMPTY = "",
        --    BURNT = "",
        --},
        --HOUNDWHISTLE = "", --Lucky Whistle
        --CLAYHOUND = --Clay Hound
        --{
        --	"",
        --	STATUE = "",
        --},
        --CLAYWARG = --Clay Varg
        --{
        --	"",
        --	STATUE = "",
        --},
        --CHESSPIECE_CLAYHOUND = "", --Hound Figure
        --CHESSPIECE_CLAYWARG = "", --Varg Figure
		
		
		
		
		--(EVENTS: THE FORGE)--
        LAVAARENA_BOARLORD = "I'd set that man straight if I could.", --Battlemaster Pugna
        BOARON = --Pit Pig
		{
			"Hog's comin'!", 
			SLEEPING = "Hogs' asleep!",
		},
        SNAPPER = --Crocommander
		{
			"Do NOT feed the gators.",
			SLEEPING = "Get ready to kick his ass.",
		},
        TURTILLUS = --Snortoise
		{
			"That turtle's got armor. I WANT ARMOR!",
			SLEEPING = "They're down.",
		},
        PEGHOOK = --Scorpeon
		{
			"Oh shit! Scorpions!", 
			SLEEPING = "Damn... That can't be all that's left.",
		},
        TRAILS = --Boarilla
		{
			"Kill that monkey-ass giant!", 
			SLEEPING = "Getcha bearings while you can.",
		},
        BOARRIOR = --Grand Forge Boarrior
		{
			"Keep pourin' it on!",
			SLEEPING = "Maybe now we can catch a break.",
		},
        LAVAARENA_PORTAL = --Ancient Gateway
        {
            "Where in the hell are we?",
            ON = "We're almost home free people.",
        },
        LAVAARENA_SPAWNER = "Hey... We ready to get it on?", --Forge Portal
        LAVAARENA_BATTLESTANDARD = "Take that thing down!", --Battle Standard
		WEBBER_SPIDER_MINION = "Keep it up spiders!", --Baby Spider
		--LAVAARENA_ELEMENTAL = "", --Magma Golem
        --HEALINGSTAFF = "", --Living Staff
		--FIREBALLSTAFF = "", --Infernal Staff
        --BOOK_FOSSIL = "", --Petrifying Tome
		--BOOK_ELEMENTAL = "", --Tome of Beckoning
        --HAMMER_MJOLNIR = "", --Forging Hammer
        --SPEAR_GUNGNIR = "", --Pith Pike
		--SPEAR_LANCE = "", --Spiral Spear
        --LAVAARENA_LUCY = "", --Riled Lucy
        --BLOWDART_LAVA = "", --Darts
        --BLOWDART_LAVA2 = "", --Molten Darts
   		--LAVAARENA_ARMORLIGHT = "", --Reed Tunic
		--LAVAARENA_ARMORLIGHTSPEED = "", --Feathered Reed Tunic
		--LAVAARENA_ARMORMEDIUM = "", --Wood Armor
		--LAVAARENA_ARMORMEDIUMDAMAGER = "", --Jagged Wood Armor
		--LAVAARENA_ARMORMEDIUMRECHARGER = "", --Silken Wood Armor
		--LAVAARENA_ARMORHEAVY = "", --Stone Splint Mail
		--LAVAARENA_ARMOREXTRAHEAVY = "", --Steadfast Stone Armor
		--LAVAARENA_FEATHERCROWNHAT = "", --Feathered Wreath
        --LAVAARENA_HEALINGFLOWERHAT = "", --Flower Headband
        --LAVAARENA_LIGHTDAMAGERHAT = "", --Barbed Helm
        --LAVAARENA_STRONGDAMAGERHAT = "", --Nox Helm
        --LAVAARENA_TIARAFLOWERPETALSHAT = "", --Woven Garland
        --LAVAARENA_EYECIRCLETHAT = "", --Clairvoyant Crown
        --LAVAARENA_RECHARGERHAT = "", --Crystal Tiara
        --LAVAARENA_HEALINGGARLANDHAT = "", --Blossomed Wreath
        --LAVAARENA_CROWNDAMAGERHAT = "", --Resplendent Nox Helm
		
		
		
		
		--(PLANTS)--
		EVERGREEN = --Evergreen
		{
			"It's nature alright.",
			CHOPPED = "All chopped down.",
			BURNING = "Oh crumbs, that tree's gettin' burned up!",
			BURNT = "It did not end well for this tree.",
		},
		EVERGREEN_SPARSE = --Lumpy Evergreen
		{
			"It's nature alright.",
			CHOPPED = "All chopped down.",
			BURNING = "Oh crumbs, that tree's gettin' burned up!",
			BURNT = "It did not end well for this tree.",
		},
		MARSH_TREE = --Spiky Tree
		{
			"Even the trees here look mean.",
			CHOPPED = "All chopped down.",
			BURNING = "Oh crumbs, that tree's gettin' burned up!",
			BURNT = "It did not end well for this tree.",
		},
        PINECONE_SAPLING = --Evergreen Sapling
		{
			"It'll be a tree right soon.",
			BURNING = "Little thing won't last for long.",
		},
		LOG = --Log
		{
			"The camping necessities.",
			BURNING = "I could have used that.",
		},
		CHARCOAL = "Charred to bits.", --Charcoal 
		PINECONE = "In case I need more trees.", --Pine Cone
		MARBLETREE = "Well I'll be damned. A tree made of marble.", --Marble Tree
		LIVINGTREE = --Totally Normal Tree
		{
			"That is one creepy ass tree.",
			CHOPPED = "I can still hear the moans in my head.",
			BURNING = "Creepy tree's catchin' fire!",
			BURNT = "Burned the face right off of it.",
		},
		LIVINGLOG = "What the hell kinda wood is this?", --Living Log
		SAPLING = --Sapling
		{
			"There's sticks to pick.",
			PICKED = "Nothing left to grab.",
			WITHERED = "This sapling looks like shit.",
			BURNING = "Little thing won't last for long.",
			DISEASING = "Something ain't right here.",
			DISEASED = "Oh hell, the damn thing's sick.",
		},
		LUMPY_SAPLING = "It'll be a tree right soon.", --Lumpy Sapling
		DUG_SAPLING = "Needs soil.", --Sapling
		TWIGS = "Buncha sticks.", --Twigs
		GRASS = --Grass Tuft
		{
			"That's some tall ass grass.",
			PICKED = "Not so wild now.",
			BARREN = "Grass sure gave up.",
			WITHERED = "This heat ain't helping.", 
			BURNING = "Grass caught fire!",
			DISEASING = "Something ain't right here.",
			DISEASED = "Oh hell, the damn thing's sick.",
		},
		CUTGRASS = "What to do with grass...", --Grass Tuft
		DUG_GRASS = "Needs soil.", --Grass Tuft
		BERRYBUSH = --Berry Bush
		{
			"Don't mind if I do.",
			PICKED = "Now we wait.",
			BARREN = "This bush ain't lookin' so good.",
			WITHERED = "God damn heat.", 
			BURNING = "Berries on fire!",
			DISEASING = "Something ain't right here.",
			DISEASED = "Oh hell, the damn thing's sick.",
		},
		DUG_BERRYBUSH = "Now where to put this berry bush.",
		REEDS = --Reeds
		{
			"This swamp shit's gettin' old.", 
			PICKED = "Nothing left to pick.",
			BURNING = "And now they're on fire...",
		},
		CUTREEDS = "A stack of reeds.", --Cut Reeds
		PLANT_NORMAL = --Plant
		{
			"Get to growin' now.",
			GROWING = "Gotta give it some time.",
			READY = "Come to Coach.",
			WITHERED = "Dammit. This shit's too dry.",
		},
        MARSH_PLANT = "It's growin' near that pond.", --Marsh Plant
		MARSH_BUSH = --Spiky Bush
		{
			"Them thorns look like they hurt.",
			PICKED = "That wasn't such a good idea.", 
			BURNING = "If anything's gettin' burned, it should be those things.",
		},
		BURNT_MARSH_BUSH = "All burned up.", --Spiky Bush 
		DUG_MARSH_BUSH = "Why the hell would I wanna carry that?", --Spiky Bush 
		FLOWER = --Flower
		{
            "God damn allergies.",
            ROSE = "There's a rose growin' here.",
        },
		PETALS = "Plucked right off them flowers.", --Petals 
		FLOWER_EVIL = "These flowers don't look natural.", --Evil Flower
		PETALS_EVIL = "Never before have I ever been spooked by flowers.", --Dark Petals 
		RED_MUSHROOM = --Red Mushroom
		{
			"It's a red shroom.",
			INGROUND = "Where'd it go?",
			PICKED = "Looks like it got plucked.",
		},
		GREEN_MUSHROOM = --Green Mushroom
		{
			"It's a green shroom.",
			INGROUND = "Where'd it go?",
			PICKED = "Looks like it got plucked.",
		},
		BLUE_MUSHROOM = --Blue Mushroom
		{
			"It's a blue shroom.",
			INGROUND = "Where'd it go?",
			PICKED = "Looks like it got plucked.",
		},
		DECIDUOUSTREE = --Birchnut Tree
		{
			"It's nature alright.",
			CHOPPED = "All chopped down.",
			BURNING = "Oh crumbs, that tree's gettin' burned up!",
			BURNT = "It did not end well for this tree.",
			POISON = "That tree's messed up!",
		},
		ACORN = "In case I need trees.", --Birchnut
        ACORN_SAPLING = --Birchnut Sapling
		{
			"It'll be a tree right soon.",
			BURNING = "Little thing won't last for long.",
		},
		CACTUS = --Cactus
		{
			"This right here will hurt somethin' fierce.",
			PICKED = "It'll grow back.",
		},
		TUMBLEWEED = "There it goes.", --Tumbleweed
		TWIGGYTREE = --Twiggy Tree
		{
			"Ain't nothin' but branches.",
			CHOPPED = "All chopped down.",
			BURNING = "Oh crumbs, that tree's gettin' burned up!",
			BURNT = "It did not end well for this tree.",
			DISEASED = "This tree's got disease.",
		},
        TWIGGY_OLD = "One sad lookin' tree.", --Twiggy Tree
		TWIGGY_NUT_SAPLING = --Twiggy Tree Sapling
		{
			"It'll be a tree right soon.",
			BURNING = "Little thing won't last for long.",
		},
		TWIGGY_NUT = "In case I need trees.", --Twiggy Tree Cone 
		BERRYBUSH_JUICY = --Juicy Berry Bush
		{
			"Look at all of those berries!",
			PICKED = "Think they'll grow back?",
			BARREN = "Damn, this shit ain't doin' so good.",
			WITHERED = "God damn heat.", 
			BURNING = "Berries on fire!",
			DISEASING = "Something ain't right here.",
			DISEASED = "Oh hell, the damn thing's sick.",
		},
		DUG_BERRYBUSH_JUICY = "Now where to put this berry bush.", --Juicy Berry Bush 
        MARBLEBEAN_SAPLING = "That marble's actually growin'.", --Marble Sprout
        MARBLESHRUB = "Solid shrubbery right here.", --Marble Shrub
		SUCCULENT_PLANT = "At least something can take this heat.", --Succulent
		SUCCULENT_PICKED = "Some pieces of aloe.", --Succulent
		
		
		
		
		--(OBJECTS)--
		BEEHIVE = "That's a big ass hive.", --Beehive
		WASPHIVE = "Ain't no damn way I'm messing with that.", --Killer Bee Hive
		HONEYCOMB = "Think the bees mind if I took their honeycomb?", --Honeycomb
		HOUNDMOUND = "No thank you.", --Hound Mound
		HOUNDBONE = "Safe my ass.", --Bones
		RESURRECTIONSTONE = "That's some funky looking alter.", --Touch Stone
		SANITYROCK = --Obelisk
		{
			ACTIVE = "Hell of a rock.", 
			INACTIVE = "It's pokin' right out of the ground.", 
		},
		INSANITYROCK = --Obelisk
		{
			ACTIVE = "Hell of a rock.", 
			INACTIVE = "It's pokin' right out of the ground.", 
		},
		STATUEHARP = "Damn thing's fallin' apart.", --Harp Statue
		MARBLEPILLAR = "How old is this place?", --Marble Pillar
		MARBLE = "High quality stone.", --Marble
		MERMHOUSE = --Rundown House
		{
			"I ain't a prejudice man but... living in the swamp? That's crazy.",
			BURNING = "That swamp house is burning fast!",
			BURNT = "These shanty houses don't take kindly to fire.",
		},
		MERMHEAD = --Merm Head
		{
			"That smells foul!",
			BURNING = "The smell did not improve.",
			BURNT = "Smells bad AND it's charred.",
		},
		PIGHEAD = --Pig Head
		{
			"This is some messed up shit.",
			BURNING = "Almost smells like bacon.",
			BURNT = "Now I won't have to look at it anymore.",
		},
		PIGTORCH = "Pigs sure like their light.", --Pig Torch
		BASALT = "This shit's way too hard.", --Basalt
		ROCK = "Looks breakable.", --Boulder
		ROCKS = "Could get some use out of these rocks.", --Rocks
		FLINT = "Good for tools.", --Flint
		NITRE = "Not sure what this rock does.", --Nitre
		GOLDNUGGET = "Honest to god gold!", --Gold Nugget
		MOUND = --Grave
		{
			"Lord knows what's burried here.",
			DUG = "It ain't right digging through graves.",
		},
		DIRTPILE = "What we got here?", --Suspicious Dirt Pile
		ANIMAL_TRACK = "Something's lurkin' around.", --Animal Track
		--TELEPORTATO_BASE = --Wooden Thing
		--{
		--	"",
		--	ACTIVE = "",
		--	LOCKED = "",
		--	PARTIAL = "",
		--},
		--TELEPORTATO_RING = "", --Ring Thing
		--TELEPORTATO_CRANK = "", --Crank Thing
		--TELEPORTATO_BOX = "", --Box Thing
		--TELEPORTATO_POTATO = "", --Metal Potato Thing
		WORMHOLE = --Worm Hole
		{
			"I cannot believe what I am lookin' at.",
			OPEN = "Damn... That ain't right...",
		},
		POND = "There's shit swimmin' down below.", --Pond
		SKELETON = "That ain't a good sign.", --Skeleton
		SPIDERDEN = "Oh hell no.", --Spider Den
		SPIDEREGGSACK = "These things better not hatch.", --Spider Eggs
		RABBITHOLE = --Rabbit Hole
		{
			"Them rabbits must live under there.",
			SPRING = "All locked away in their homes.",
		},
		WALRUS_CAMP = --Walrus Camp
		{
			"Looks like I ain't the only one who's been camping.",
			EMPTY = "Smells like people have been living here and shit.",
		},
		ROCK_ICE = --Mini Glacier
		{
			"That's a whole lotta ice.",
			MELTED = "Just a puddle.",
		},
		ROCK_ICE_MELTED = "Just a puddle.", --Mini Glacier
		ICE = "Does it come in cube form?", --Ice
		MOLEHILL = "Mole's diggin' around here.", --Burrow
		CATCOONDEN = --Hollow Stump
		{
			"Cozy for a stump.",
			EMPTY = "Nothin's inside.",
		},
		STATUEGLOMMER = --Glommer's Statue
		{	
			"It's a statue of... something.",
			EMPTY = "Now it's just half a statue.",
		},
		SKELETON_PLAYER = --Skeleton Player
		{
			MALE = "Think his name was %s.",
			FEMALE = "Think her name was %s.",
			ROBOT = "Think it was %s.",
			DEFAULT = "That use to be %s.",
		},
		MULTIPLAYER_PORTAL = "I don't think we're in Savannah anymore.", --Florid Postern
        BEEQUEENHIVEGROWN = "Ho shit! Look at the size of it!", --Gigantic Beehive
		--BEEQUEENHIVE = 
		--{
		--	"", --Honey Patch
		--	GROWING = "", --Somewhat Gigantic Beehive
		--},
        STATUE_MARBLE = --Marble Statue
        {
            "It's art. So what?", --Pawn and Vase
            TYPE1 = "Fancy ass statue.", --Tragedy
            TYPE2 = "Looks nice, I guess.", --Comedy
        },
		SCULPTURE_ROOKBODY = --Marble Sculpture (Rook)
		{
			COVERED = "What's it suppose to be anyway?",
			UNCOVERED = "A real mess now.",
			FINISHED = "At least it looks like something.",
			READY = "What the hell?!",
		},
		SCULPTURE_KNIGHTBODY = --Marble Sculpture (Knight)
		{
			COVERED = "No head on this one.",
			UNCOVERED = "Broke real easy.",
			FINISHED = "That's how it's suppose to look.",
			READY = "What the hell?!",
		},
		SCULPTURE_BISHOPBODY = --Marble Sculpture (Bishop)
		{
			COVERED = "I normally ain't one for art.",
			UNCOVERED = "Now it's shit.",
			FINISHED = "Pretty creepy if you ask me.",
			READY = "What the hell?!",
		},
        SCULPTURE_ROOKNOSE = "What's this doin' here?", --Suspicious Marble (Rook)
        SCULPTURE_KNIGHTHEAD = "Some horse statue's missin' its head.", --Suspicious Marble (Knight)
        SCULPTURE_BISHOPHEAD = "What the heck is that? Some kind of statue head?", --Suspicious Marble (Bishop)
		LAVA_POND = "Mess with that and you gonna get burned.", --Magma
        LAVA_POND_ROCK = "There's rocks near that fiery pool.", --Magma Rock
		SCORCHED_SKELETON = "Poor son of a bitch burned right up.", --Crispy Skeleton
		ROCK_MOON = "Looks breakable.", --Meteor
		MOONROCKNUGGET = "Got a nice shimmer to it.", --Moon Rock
        --MOONBASE = --Moon Stone
        --{
        --    "",
        --    BROKEN = "",
        --    STAFFED = "",
        --    WRONGSTAFF = "",
        --    MOONSTAFF = "",
        --},
        --MOONROCK_PIECES = "", --Moon Rubble
        --PETRIFIED_TREE = "", --Petrified Evergreen
        --ROCK_PETRIFIED_TREE = "", --Petrified Evergreen
        --ROCK_PETRIFIED_TREE_OLD = "", --Petrified Evergreen
		CRITTERLAB = "Who's in there?", --Rock Den
		--ENDTABLE = --Stagehand 
		--{
		--	"",
		--	EMPTY = "",
		--	WILTED = "",
		--	FRESHLIGHT = "",
		--	OLDLIGHT = "",
		--	BURNT = "", 
		--},
        GARGOYLE_WEREPIG = "This place is startin' to creep me out.", --Suspicious Moonrock (Werepig)
        GARGOYLE_HOUND = "This is some grim shit.", --Suspicious Moonrock (Hound)
        --KLAUS_SACK = "", --Loot Stash
        --OASISLAKE = "", --Lake
        --CAVEIN_BOULDER = --Cave-in Boulder
        --{
        --    "",
        --    RAISED = "",
        --},
		
		
		
		
		--(CAVES)--
        CAVE_ENTRANCE = "Looks breakable.", --Plugged Sinkhole
        --CAVE_ENTRANCE_OPEN = --Sinkhole
		--{
        --    "",
        --    OPEN = "Who knows what's down there.",
        --    FULL = "",
        --},
        --CAVE_EXIT = --Exit to Surface
		--{
        --    "",
        --    OPEN = "",
        --    FULL = "",
        --},
		--MUSHTREE_MEDIUM = --Red Mushtree
		--{
        --    "",
        --    BLOOM = "",
        --},
		--MUSHTREE_SMALL = --Green Mushtree
		--{
        --    "",
        --    BLOOM = "",
        --},
		--MUSHTREE_TALL = --Blue Mushtree
		--{
        --    "",
        --    BLOOM = "",
        --},
        --MUSHTREE_TALL_WEBBED = "", --Blue Mushtree (Webbed)
        --SPORE_SMALL = --Red Spore
        --{
        --    "",
        --    HELD = "",
        --},
        --SPORE_MEDIUM = --Green Spore
        --{
        --    "",
        --    HELD = "",
        --},
        --SPORE_TALL = --Blue Spore
        --{
        --    "",
        --    HELD = "",
        --},
		--FLOWER_CAVE = "", --Light Flower
		--FLOWER_CAVE_DOUBLE = "", --Light Flower
		--FLOWER_CAVE_TRIPLE = "", --Light Flower
		LIGHTBULB = "It glows AND it's edible?", --Light Bulb
		--STALAGMITE = "", --Stalagmite
		--STALAGMITE_LOW = "", --Stalagmite
		--STALAGMITE_MED = "", --Stalagmite
		--STALAGMITE_FULL = "", --Stalagmite
		--STALAGMITE_TALL = "", --Stalagmite (Pointy)
		--STALAGMITE_TALL_FULL = "", --Stalagmite (Pointy)
		--STALAGMITE_TALL_LOW = "", --Stalagmite (Pointy)
		--STALAGMITE_TALL_MED = "", --Stalagmite (Pointy)
		--SPIDERHOLE = "", --Spilagmite
		--SLURTLEHOLE = "", --Slurtle Mound
		--MONKEYBARREL = "", --Splumonkey Pod
		--CAVE_FERN = "", --Fern
		--FOLIAGE = "", --Foliage
		--CAVE_BANANA_TREE = "", --Cave Banana Tree
		--CAVE_BANANA_BURNT = "", --Cave Banana Tree
        --BATCAVE = "", --Bat Cave
        --FLOWER_WITHERED = "", --Withered Flower
        --FOSSIL_PIECE = "", --Fossil Fragment
        --FOSSIL_STALKER = --Odd Skeleton
        --{
			--"",
			--FUNNY = "",
			--COMPLETE = "",
        --},
		
		
		
		
		--(RUINS)--
        --CAVE_ENTRANCE_RUINS = "", --Plugged Ruins Sinkhole
        --ANCIENT_STATUE = "", --Ancient Statue
        --ANCIENT_ALTAR = "", --Ancient Pseudoscience Station
        --ANCIENT_ALTAR_BROKEN = "", --Ancient Pseudoscience Station
		--POND_ALGAE = "", --Algae
        --CHESSJUNK1 = "", --Broken Clockworks
        --CHESSJUNK2 = "", --Broken Clockworks
        --CHESSJUNK3 = "", --Broken Clockworks
        --RELIC = --Relic
        --{
            --"",
            --BROKEN = "",
        --},
		--THULECITE_PIECES = "", --Thulecite Fragments
        --LICHEN = "", --Cave Lichen
		--PANDORASCHEST = "", --Ornate Chest
		--MINOTAURCHEST = "", --Large Ornate Chest
		--NIGHTMARELIGHT = "", --Nightmare Light
		--SACRED_CHEST = --Ancient Chest
		--{
			--"",
			--LOCKED = "",
		--},
		
		
		
		
		--(MONSTERS)--
		KNIGHT = "Horse-faced bitch!", --Clockwork Knight
		BISHOP = "Hit me. I dare you.", --Clockwork Bishop
        ROOK = "It's that one that runs at you!", --Clockwork Rook
		--KNIGHT_NIGHTMARE = "", --Damaged Knight
		--BISHOP_NIGHTMARE = "", --Damaged Bishop
		--ROOK_NIGHTMARE = "", --Damaged Rook
		HOUND = "These things move like grease lightning!", --Hound
		FIREHOUND = "Jumpin' Jehosaphat! It's those ones that burn shit up!", --Red Hound
		ICEHOUND = "All these creepy ass crazy dogs are gettin' on my last nerve!", --Blue Hound
		HOUNDSTOOTH = "Knocked its teeth right out.", --Hound's Tooth
		SPIDER = --Spider
		{
			"Little guy!",
			"Little creep!",
			"Skittish one!",
			SLEEPING = "Do NOT wake up.",
		},
		SPIDER_WARRIOR = --Spider Warrior
		{
			"Little guy!",
			"Little creep!",
			"Skittish one!",
			SLEEPING = "Do NOT wake up.",
		},
		SPIDER_HIDER = --Cave Spider
		{
			"The spider's are even uglier down here.",
			SLEEPING = "Do NOT wake up.",
		},
		SPIDER_SPITTER = --Spitter
		{
			"Spitter!",
			"Spittin' thing!",
			SLEEPING = "Do NOT wake up.",
		},
		SPIDER_DROPPER = --Dangling Depth Dweller
		{
			"Watch out! Spiders!",
			SLEEPING = "Do NOT wake up.",
		},
		SPIDERGLAND = "Why would you ever need this.", --Spider Gland
		SILK = "Sticks to you like glue.", --Silk
		KRAMPUS = "Dollars to donuts! That bitch is stealin' shit!", --Krampus
		KRAMPUS_SACK = "Look at all this room!", --Krampus Sack
		MERM = "Swamp people!", --Merm
		FROG = --Frog
		{
			"Them frogs don't play nice.",
			SLEEPING = "No need to wake up now.",
		},
		TENTACLE = "That don't look friendly.", --Tentacle
		TENTACLESPIKE = "This right here will mess some shit up!", --Tentacle Spike
		TENTACLESPOTS = "That slimey thing dropped something.", --Tentacle Spots
		--TENTACLE_PILLAR = "", --Big Tentacle
		--TENTACLE_GARDEN = "", --Big Tentacle
        --TENTACLE_PILLAR_HOLE = "", --Big Slimy Pit
		--TENTACLE_PILLAR_ARM = "", --Baby Tentacle
		PIGGUARD = "Those pigs don't play around.", --Guardian Pig
		GHOST = "I ain't afraid of no ghost.", --Ghost
		WALRUS = "Oh shit... Hunters!", --MacTusk
		LITTLE_WALRUS = "You think you got what it takes little man?", --Wee MacTusk
		WALRUS_TUSK = "The hunters' became the hunted.", --Walrus Tusk
		WALRUSHAT = "Maybe I look good in plaid.", --Tam o' Shanter
		MOSQUITO = --Mosquito
		{
			"Now would be a good time for some bug spray.",
			HELD = "Don't even think about it.",
			SLEEPING = "At least it ain't buzzin' around anymore.",
		},
		MOSQUITOSACK = "Tell me this ain't full of what I think it's full of.", --Mosquito Sack
		BAT = "Keep that the hell away from me.", --Batilisk
		--LUREPLANT = "", --Meat Bulb
		--LUREPLANTBULB = "", --Fleshy Bulb
		--EYEPLANT = "", --Eyeplant
		--SLURPER = "", --Slurper
		--SLURPER_PELT = "", --Slurper Pelt
		--SLURPERPELT = "", --Slurper Pelt
		--WORM = --Depths Worm
		--{
		    --PLANT = "", --Lure
		    --DIRT = "", --Dirt Mound
		    --WORM = "", --Emerged
		--},
        --WORMLIGHT_PLANT = "", --Mysterious Plant
		--WARG = "", --Warg
		BIRCHNUTDRAKE = "What are these things?!", --Birchnutter
		--SPAT = "", --Ewecus
		--STEELWOOL = "", --Steel Wool
        --DEER_GEMMED = "", --Gem Deer
        --BEEGUARD = "", --Grumble Bee
		--LAVAE = "", --Lavae
		
		
		
		
		--(NEUTRAL ANIMALS)
		BEEFALO = --Beefalo
		{
			"Smells like a barn.",
			SLEEPING = "Not everybody can sleep so soundly y'know.",
			NAKED = "Hey now. Being bald ain't so bad.",
			FOLLOWER = "Follow me!",
			DOMESTICATED = "Seems tame.",
			ORNERY = "What's with you?",
        	RIDER = "This one's got spunk.",
        	PUDGY = "At least somebody's happy.",
		},
		BABYBEEFALO = --Baby Beefalo
		{
			"Looks like it came straight out of a petting zoo.",
		    SLEEPING = "Baby's all tuckered out.",
        },
		BEEFALOWOOL = "Smells like shit but it could keep me warm.", --Beefalo Wool
		HORN = "Mess with the bull, and you get their horns.", --Beefalo Horn
		BEE = --Bee
		{
			"Better not sting me.",
			HELD = "I gotcha, I gotcha.",
			SLEEPING = "Shouldn't you be in a hive by now?",
		},
		KILLERBEE = --Killer Bee
		{
			"Better not sting me.",
			HELD = "Oh I'm playin' with fire here.",
			SLEEPING = "Shouldn't you be in a hive by now?",
		},
		STINGER = "Would hurt to get stung by this.", --Stinger
		PIGMAN = --Pig
		{
			"That pig's walkin' on two legs!",
			SLEEPING = "I can relate.",
			FOLLOWER = "Y'all stay close.",
			GUARD = "Those pigs don't play around.",
			WEREPIG = "Those pigs gone crazy!",
		},
		PIGSKIN = "What's left of those pig men.", --Pig Skin
		BUNNYMAN = --Bunnyman, Beardlord
		{
			"Even the bunnies are people.",
			SLEEPING = "Sleep tight.",
			FOLLOWER = "Don't nobody wonder off.",
		},
		--MANRABBIT_TAIL = "", --Bunny Puff
		KOALEFANT_SUMMER = "Better take it slow now...", --Koalefant
		KOALEFANT_WINTER = "Better take it slow now...", --Winter Koalefant
		PENGUIN = --Pengull 
		{
			"These damn birds are noisy as hell.",
			SLEEPING = "Go sleep somewhere else.",
		},
		--ROCKY = "", --Rock Lobster
		--SLURTLE = "", --Slurtle
		--SNURTLE = "", --Snurtle
		--SLURTLESLIME = "", --Slurtle Slime
		--SLURTLE_SHELLPIECES = "", --Broken Shell
		--SLURTLEHAT = "", --Shelmet
		--ARMORSNURTLESHELL = "", --Snurtle Shell Armor
		MONKEY = "Well I'll be a monkey's uncle!", --Splumonkey
		--BUZZARD = "", --Buzzard
		CATCOON = --Catcoon
		{
			"You a stray?", 
			--SLEEPING = "",
		},
		--COONTAIL = "", --Cat Tail
		--LIGHTNINGGOAT = --Volt Goat
		--{
			--"",
			--CHARGED = "",
			--SLEEPING = "",
		--},
		--LIGHTNINGGOATHORN = "", --Volt Goat Horn
		
		
		
		
		--(PASSIVE ANIMALS)--
		BUTTERFLY = --Butterfly
		{
			"Just doin' it's thing.",
			HELD = "Gotta hold it real careful now.",
		},
		CROW = --Crow
		{
			"That shit's a bad omen.",
			HELD = "Gotcha!",
			SLEEPING = "It's sleepin'.",
		},
		ROBIN = --Redbird
		{
			"So many birds around here.",
			HELD = "Quit fussin' now.",
			SLEEPING = "It's sleepin'.",
		},
		ROBIN_WINTER = --Snowbird
		{
			"Proof that it's too damn cold.",
			HELD = "How you holdin' up?",
			SLEEPING = "It's sleepin'.",
		},
        --CANARY = --Canary
		--{
			--"",
			--HELD = "",
			--SLEEPING = "",
		--},
        --CANARY_POISONED = "", --Canary
		FEATHER_CROW = "This feather's black.", --Jet Feather
		FEATHER_ROBIN = "It's a red feather.", --Crimson Feather
		FEATHER_ROBIN_WINTER = "A white feather.", --Azure Feather
		FEATHER_CANARY = "Gold lookin' feather.", --Saffron Feather
		PERD = --Gobbler
		{
			"That bird's makin' me hungry.", 
			SLEEPING = "Now's my chance...",
		},
		CHESTER_EYEBONE = --Eye Bone
		{
			"Don't give me that look.",
			WAITING = "Is it sleepin'?",
		},
		CHESTER = --Chester
		{
			"Hey there.",
			"Hello.",
			"How do you do.",
			"What's happenin'.",
			SLEEPING = "You rest easy now.",
		},
		RABBIT = --Rabbit, Beardling
		{
			"Little guy looks jittery.",
			HELD = "You're comin' with me.",
			SLEEPING = "Rabbit's asleep.",
		},
		FIREFLIES = --Fireflies
		{
			"Check out those lights.",
			HELD = "There's so many of em.",
		},
		MANDRAKE_PLANTED = "What's this now?", --Mandrake (Planted)
		MANDRAKE_ACTIVE = "Boy, settle down.", --Mandrake (Follower)
		MANDRAKE = "It ain't movin'.", --Mandrake (Dead)
		MANDRAKE_COOKED = "Well it's roasted now.", --Cooked Mandrake 
		COOKEDMANDRAKE = "Well it's roasted now.", --Mandrake (Burned)
		GLOMMER = --Glommer
		{
			"It's a fur ball with wings.",
			SLEEPING = "Guess it needs sleep.",
		},
		GLOMMERFLOWER = --Glommer's Flower
		{
			"Strange flower.",
			DEAD = "This don't look so good.",
		},
		GLOMMERWINGS = "Some pretty small wings.", --Glommer's Wings
		GLOMMERFUEL = "Shit is shit, no matter what color you make it.", --Glommer's Goop
		MOLE = --Moleworm
		{
			ABOVEGROUND = "Where'd you come from?",
			UNDERGROUND = "Look at it go.",
			HELD = "Quit squirmin'.",
		},
		GRASSGEKKO = --Grass Gekko
		{
			"It's covered in grass.",
			DISEASED = "That thing looks sicker than a dog.",
			SLEEPING = "It doesn't do much does it.",
		},
		--LAVAE_PET = --Extra-Adorable Lavae
		--{
			--"",
			--CONTENT = "",
			--HUNGRY = "",
			--STARVING = "",
		--},
		--LAVAE_EGG = "", --Lavae Egg
		--LAVAE_EGG_CRACKED = --Lavae Egg
		--{
			--COLD = "",
			--COMFY = "",
		--},
		--LAVAE_TOOTH = "", --Lavae Tooth
		--LAVAE_COCOON = "", --Chilled 
		--DEER = --No-Eyed Deer
		--{
			--"",
			--ANTLER = "",
		--},
        --DEER_ANTLER = "", --Deer Antler
		
		
		
		
		--(TALLBIRD)--
		TALLBIRD = --Tallbird
		{
			"Crazy legs!",
			SLEEPING = "At least it's asleep.",
		},
		TALLBIRDNEST = --Tallbird Nest
		{
			"I know what to do with an egg like that.",
			PICKED = "No eggs around.",
		},
		TALLBIRDEGG = "", --Tallbird Egg
		--TALLBIRDEGG_COOKED = "", --Fried Tallbird Egg
		--TALLBIRDEGG_CRACKED = --Hatching Tallbird Egg
		--{
			--"",
			--COLD = "",
			--HOT = "",
			--SHORT = "",
			--LONG = "",
		--},
		SMALLBIRD = --Smallbird
		{
			"You don't look so bad.",
			SLEEPING = "Someone's tired.",
			HUNGRY = "I know that look. You need food don't you.",
			STARVING = "Oh shit, look at you. We need to find you some food.",
		},
		--TEENBIRD = --Smallish Tallbird
		--{
			--"",
			--SLEEPING = "",
			--HUNGRY = "",
			--STARVING = "",
		--},
		
		
		
		
		--(BOSSES)--
		LEIF = --Treeguard
		{
			"Sweet Hosanna!",
			"Sweet Georgia Brown!",
			SLEEPING = "That tree ain't normal.",
		},
		LEIF_SPARSE = --Treeguard (Lumpy)
		{
			"Sweet Hosanna!",
			"Sweet Georgia Brown!",
			SLEEPING = "That tree ain't normal.",
		},
		SPIDERQUEEN = --Spider Queen
		{
			"Some kind of super-ass spider!",
			SLEEPING = "Thank the lord it's asleep.",
		},
		SPIDERHAT = "Why the hell would I ever take this?", --Spiderhat 
		--MINOTAUR = "", --Ancient Guardian
		--MINOTAURHORN = "", --Guardian's Horn
		DEERCLOPS = --Deerclops
		{
			"That thing is too dang big!",
			"Gi-gantic thing!",
			"Ohhh... that ain't fair!",
			SLEEPING = "Thank the lord it's asleep.",
		},
		DEERCLOPS_EYEBALL = "I do not wanna have to touch that.", --Deerclops Eyeball
		BEARGER = --Bearger
		{
			"That thing is too dang big!",
			"Gi-gantic thing!",
			"Ohhh... that ain't fair!",
			SLEEPING = "Thank the lord it's asleep.",
		},
		BEARGER_FUR = "That feels real nice.", --Thick Fur
		MOOSE = --Moose/Goose
		{
			"That thing is too dang big!",
			"Gi-gantic thing!",
			"Ohhh... that ain't fair!",
			SLEEPING = "Thank the lord it's asleep.",
		},
		MOOSEEGG = "That's one hell of an egg.", --Moose/Goose Egg
		MOSSLING = --Mosling
		{
			"Your momma better not be around.", 
			SLEEPING = "Keep sleepin'.",
		},
		GOOSE_FEATHER = "Pretty damn big for a feather.", --Down Feather
		DRAGONFLY = --Dragonfly
		{
			"That thing is too dang big!",
			"Gi-gantic thing!",
			"Ohhh... that ain't fair!",
			SLEEPING = "Thank the lord it's asleep.",
		},
		DRAGON_SCALES = "Went through way too much shit to get these.", --Scales
		--LAVASPIT = --Lava Spit
		--{
		--	HOT = "",
		--	COOL = "",
		--},
		BEEQUEEN = --Bee Queen
		{
			"That thing is too dang big!",
			"Gi-gantic thing!",
			"Ohhh... that ain't fair!",
			SLEEPING = "Thank the lord it's asleep.",
		},
        --BEEQUEENHIVEGROWN = "", --Bee Queen Crown
        --KLAUS = "", --Klaus
		--KLAUSSACKKEY = "", --Stag Antler
        --TOADSTOOL_CAP = --Toadstool Cap
        --{
            --"",
            --INGROUND = "",
            --EMPTY = "",
        --},
        --TOADSTOOL = --Toadstool
        --{
			--"",
			--RAGE = "",
        --},
        --MUSHROOMSPROUT = --Sporecap
        --{
			--"",
            --BURNT = "",
        --},
        --MUSHROOMBOMB = "", --Boomshroom
        --SHROOM_SKIN = "", --Shroom Skin
        --STALKER = "", --Reanimated Skeleton
        --STALKER_MINION = "", --Woven Shadow
		--ARMORSKELETON = "", --Bone Armor
		--SKELETONHAT = "", --Bone Helm
        --THURIBLE = "", --Shadow Thurible
		
		
		
		
		--(OTHER MOBS)--
		MAXWELL = "I don't trust that man.", --Maxwell
		PIGKING = --Pig King
		{
			"Fat guy!",
			"Roly poly!", 
			"Fat thing!",
			SLEEPING = "Yep. He's sleepin'.",
		},
		ABIGAIL = "Don't be haunting me.", --Abigail
		BIGFOOT = "Holy SHIT! WHAT IS THAT?!", --Bigfoot
		INSPECTSELF = "What we got here?", --Inspecting Self
		--ANTLION = --Antlion
		--{
			--"",
			--UNHAPPY = "",
			--VERYHAPPY = "",
		--},
        --TOWNPORTALTALISMAN =  --Desert Stone
        --{
			--"",
			--ACTIVE = "",
		--},
		--SANDSPIKE = "", --Sand Spike
        --SANDBLOCK = "", --Sand Castle
        --GLASSSPIKE = "", --Glass Spike
        --GLASSBLOCK = "", --Glass Castle
		
		
		
		
		--(PLAYERS)--
        PLAYER = --Mod Characters
        {
			GENERIC = "Yo %s!",
			ATTACKER = "Do that again and I'll come back on you",
			MURDERER = "Oh hell no. Ain't no damn way!",
			REVIVER = "Thanks for that man.",
			GHOST = "Don't mean to be pickin' on ya, but y'all look like shit.",
			FIRESTARTER = "Stop lighting fires damnit!",
        },
		WILSON = --Wilson
		{
			GENERIC = "Hey yungen!",
			ATTACKER = "You got problems boy. Deep down problems.",
			MURDERER = "You think that shit's funny?! Think again!",
			REVIVER = "Thanks yungen.",
			GHOST = "Damn. You look like one of those dudes in a drivin' school film.",
			FIRESTARTER = "What are you thinkin' boy?!",
		},
		WOLFGANG = --Wolfgang
		{
			GENERIC = "Big man!",
			ATTACKER = "Keep at them like that and you gonna be the last man on Earth!",
			MURDERER = "You are going down %s!",
			REVIVER = "Thanks for that man.",
			GHOST = "Damn, they beat ya ass good didn't they?",
			FIRESTARTER = "Woah now %s, what the hell are you doin'?!",
		},
		WAXWELL = --Maxwell
		{
			GENERIC = "Hey suit!",
			ATTACKER = "Mister, I don't think I like your attitude.",
			MURDERER = "I knew that man couldn't be trusted!",
			REVIVER = "Thanks %s. You alright.",
			GHOST = "%s, at least you're dressed for a funeral.",
			FIRESTARTER = "Look what you done now %s!",
		},
		WX78 = --WX78
		{
			GENERIC = "Yo Metal man!",
			ATTACKER = "Metal man might have a screw loose or something.",
			MURDERER = "That robot's lost it!",
			REVIVER = "%s got my back.",
			GHOST = "You ain't right, but let's get ya up and movin'.",
			FIRESTARTER = "Oh hell no. Do not start fires!",
		},
		WILLOW = --Willow
		{
			GENERIC = "Girl!",
			ATTACKER = "You try that shit on me and you'll be wishin' your momma never met ya father!",
			MURDERER = "This hurts me more than it hurts you!",
			REVIVER = "Can always count on you %s.",
			GHOST = "Come on girl, we ain't gonna leave you behind.",
			FIRESTARTER = "%s, settle down girl! You're starting fires!",
		},
		WENDY = --Wendy
		{
			GENERIC = "Excuse me sweetie.",
			ATTACKER = "Do that again, and you gonna be meetin' your maker right soon!",
			MURDERER = "That shit ain't gonna fly with me!",
			REVIVER = "Thanks little sister.",
			GHOST = "No time to be gentle.  Let's get you up on your feet.",
			FIRESTARTER = "%s, I'll take that away from you!",
		},
		WOODIE = --Woodie
		{
			GENERIC = "Hey %s!",
			ATTACKER = "Hey %s, you smell that? That's the smell of Coach gettin' mad.",
			MURDERER = "That's the last straw %s!",
			REVIVER = "We tight.",
			GHOST = "Down and give me twenty. Just foolin', let's get ya back up on your feet.",
			BEAVER = "%s, is that you?!",
			BEAVERGHOST = "You for real? You gonna stay down with a little scratch like that?",
			FIRESTARTER = "Let's not all start burnin' shit down!",
		},
		WICKERBOTTOM = --Wickerbottom
		{
			GENERIC = "Excuse me ma'am.",
			ATTACKER = "There's gonna be some biblical shit happening to you if you do that again!",
			MURDERER = "Crazy woman!",
			REVIVER = "You're one hell of a woman.",
			GHOST = "Let's get ya ass up. A little nick ain't no reason to give up.",
			FIRESTARTER = "%s! You know damn well better than that!",
		},
		WES = --Wes
		{
			GENERIC = "Clowns!",
			ATTACKER = "He's quiet, a little TOO quiet.",
			MURDERER = "Try me little man!",
			REVIVER = "I owe you one.",
			GHOST = "Come on youngin' if I can do it, you can do it.",
			FIRESTARTER = "Hey hey hold on there boy! What are you doing?!",
		},
		WEBBER = --Webber
		{
			GENERIC = "Web man!",
			ATTACKER = "Yungen! Stop that shit!",
			MURDERER = "Boy, you ain't got any sense in that head!",
			REVIVER = "%s in the house!",
			GHOST = "Oh shit. Look at you. Lemme help you out.",
			FIRESTARTER = "Y'all gotta stop burnin' shit!",
		},
		WATHGRITHR = --Wigfrid
		{
			GENERIC = "Little sister!",
			ATTACKER = "Oh excuse me? EXCUSE ME?!",
			MURDERER = "Woah, that there is some screwed up shit!",
			REVIVER = "You're on fire %s.",
			GHOST = "That's it. Yeah. Fight thru it.",
			FIRESTARTER = "Are you out of your mind?!",
		},
        WINONA = --Winona
        {
			GENERIC = "Excuse me miss.",
			ATTACKER = "Man, are you wrong in the head doin' shit like that!?",
			MURDERER = "I ain't gonna tolerate that shit!",
			REVIVER = "Work it girl!",
			GHOST = "What we got here? Ain't nothin'. You good.",
			FIRESTARTER = "%s, what's gotten into you girl?!",
        },
		COACH = --Coach
		{
			GENERIC = "Yo %s.",
			ATTACKER = "Come on now! None of that!",
			MURDERER = "You are not the one to take me down!",
			REVIVER = "From one coach to another, thanks.",
			GHOST = "Come on now, walk that shit off.",
			FIRESTARTER = "You do know you're startin' fires right!?",
		},
		--CUSTOM
		MEDIC =
		{
			GENERIC = "Yo Doc!",
			ATTACKER = "Thought ya suppose to be helpin' me man!",
			MURDERER = "Alright, that does it!",
			REVIVER = "Nice work %s.",
			GHOST = "Hey, listen to me. You're gonna make it.",
			FIRESTARTER = "You're a crazy man %s!",
		},
		SPY =
		{
			GENERIC = "Sir!",
			ATTACKER = "I don't trust that man.",
			MURDERER = "Two-faced bitch!",
			REVIVER = "I knew you had it in you %s.",
			GHOST = "%s, ain't gonna leave ya man.",
			FIRESTARTER = "What the hell are you doin' %s?!",
		},
		ENGINEER =
		{
			GENERIC = "Hey cowboy!",
			ATTACKER = "You're cruisin' for a bruisin'!",
			MURDERER = "Let's settle this now!",
			REVIVER = "Thanks my man.",
			GHOST = "They put a hurtin' on ya but ain't no thing.",
			FIRESTARTER = "Jesus Christ. You tryin' to burn everything down?!",
		},
		TF2SCOUT =
		{
			GENERIC = "Boy!",
			ATTACKER = "Quit hitting me %s!",
			MURDERER = "I'll beat ya ass!",
			REVIVER = "Thanks for that %s.",
			GHOST = "Come on %s. Ya got it in ya.",
			FIRESTARTER = "You gotta stop playin' with fire %s!",
		},
		
		
		
		
		--(MEATS)--
		BIRD_EGG = "Could use a dozen of these.", --Egg 
		BIRD_EGG_COOKED = "Sunny side's the way to go.", --Cooked Egg 
		MEAT = "Stomach is growling just lookin' at it.", --Meat
		MEAT_DRIED = "Nice and tender.", --Jerky 
		COOKEDMEAT = "Steak dinner.", --Cooked Meat
		SMALLMEAT = "Not nearly enough.", --Morsel
		SMALLMEAT_DRIED = "Some bite size jerky.", --Small Jerky 
		COOKEDSMALLMEAT = "A treat of meat.", --Cooked Morsel 
		MONSTERMEAT = "Well it's meat but...", --Monster Meat
		MONSTERMEAT_DRIED = "This ain't my kind of jerky.", --Monster Jerky
		COOKEDMONSTERMEAT = "Thought cookin' it would make it better. It did not.", --Cooked Monster Meat 
		PLANTMEAT = "This ain't meat.", --Leafy Meat
		PLANTMEAT_COOKED = "I suppose it's better this way.", --Cooked Leafy Meat
		DRUMSTICK = "Now I just need a deep fryer.", --Drumstick 
		DRUMSTICK_COOKED = "Some good ole fashion finger food.",  --Fried Drumstick 
		FISH = "Fish ain't too bad.", --Fish 
		FISH_COOKED = "Not a fan of the bones.", --Cooked Fish 
		EEL = "Not what I expected to find.", --Eel
		EEL_COOKED = "It's an eel meal.", --Cooked Eel
		TRUNK_SUMMER = "That's some funky trunk.", --Koalefant Trunk
		TRUNK_WINTER = "That's some funky trunk.", --Winter Koalefant Trunk
		TRUNK_COOKED = "I'll give it a try.", --Koalefant Trunk Steak
		FROGLEGS = "Might be good to cook.", --Frog Legs 
		FROGLEGS_COOKED = "Now that's Cajun cooking!", --Cooked Frog Legs
		BATWING = "There's barely any meat on this thing.", --Batilisk Wing
		BATWING_COOKED = "There's barely any meat on this thing.", --Cooked Batilisk Wing
		
		
		
		
		--(FRUITS)--
		BERRIES = "Something sweet to snack on.", --Berries
		BERRIES_COOKED = "Sweet and toasty.", --Roasted Berries 
		CAVE_BANANA = "I could go for a banana.", --Cave Banana
		CAVE_BANANA_COOKED = "Now it's carmelized.", --Cooked Cave Banana
		DRAGONFRUIT = "Crazy lookin' fruit!", --Dragon Fruit 
		DRAGONFRUIT_COOKED = "Grilled up sweetness.", --Prepared Dragon Fruit 
		DURIAN = "This is some foul fruit right here.", --Durian
		DURIAN_COOKED = "I think it's even worse.", --Extra Smelly Durian
		POMEGRANATE = "Can grow just about anything here.", --Pomegranate 
		POMEGRANATE_COOKED = "A few seeds ain't nothin' to fuss over.", --Sliced Pomegranate 
		WATERMELON = "Can't go wrong with watermelon.", --Watermelon
		WATERMELON_COOKED = "Gave it a sizzle.", --Grilled Watermelon 
        BERRIES_JUICY = "These things go fast.", --Juicy Berries 
        BERRIES_JUICY_COOKED = "Better eat 'em while I can.", --Roasted Juicy Berries 
		
		
		
		
		--(VEGETABLES)--
		CARROT_PLANTED = "There's carrots growin' out here?.", --Carrot (Planted)
		CARROT = "Good for stew.", --Carrot
		CARROT_COOKED = "Smells real nice.", --Roasted Carrot 
		CORN = "Corn on the cob.", --Corn
		CORN_COOKED = "Oh, baby, I could destroy some kettle corn right now.", --Popcorn
		EGGPLANT = "That's a lotta vegetable.", --Eggplant 
		EGGPLANT_COOKED = "Bet it's nice and soft.", --Braised Eggplant 
		PUMPKIN = "It's a pumpkin alright.", --Pumpkin 
		PUMPKIN_COOKED = "Now all I'm thinkin' of is pumpkin pie.", --Hot Pumpkin
		CACTUS_MEAT = "No pain no gain.", --Cactus Flesh
		CACTUS_MEAT_COOKED = "Now it's good to eat.", --Cooked Cactus Flesh
		CACTUS_FLOWER = "I wonder what flowers taste like.", --Cactus Flower
		RED_CAP = "Can I eat it?", --Red Cap
		GREEN_CAP = "Can I eat it?", --Green CAp
		BLUE_CAP = "Can I eat it?", --Blue Cap
		RED_CAP_COOKED = "But can I still eat it?", --Cooked Cap
		GREEN_CAP_COOKED = "But can I still eat it?", --Cooked Cap
		BLUE_CAP_COOKED = "But can I still eat it?", --Cooked Cap
		WORMLIGHT = "That's got a real glow to it.", --Glow Berry
		WORMLIGHT_LESSER = "Gives off a little bit of light.", --Lesser Glow Berry
		CUTLICHEN = "Not something I'd usually put in my mouth.", --Lichen
		
		
		
		
		--(CROCK POT)--
		BACONEGGS = "Just like a complimentary breakfast!", --Bacon and Eggs
		BUTTERFLYMUFFIN = "Butterflys as food? Hell I'll give anything a try.", --Butter Muffin
		DRAGONPIE = "I would die for some pie.", --Dragonpie
		FISHSTICKS = "I'm a man for finger food alright.", --Fishsticks
		FISHTACOS = "Fish in a taco. Now that's one hell of a combo.", --Fish Tacos
		JAMMYPRESERVES = "Half of a peanut butter and jelly.", --Fist Full of Jam 
		FROGGLEBUNWICH = "Frogs legs and sandwiches. My kind of food!", --Froggle Bunwich
		FRUITMEDLEY = "Eatin' healthy. Now there's somethin' I don't normally do.", --Fruit Medley
		HONEYHAM = "Hot damn. Honey glazed ham!", --Honey Ham
		HONEYNUGGETS = "The money's in the honey.", --Honey Nuggets
		KABOBS = "Now we're talking!", --Kabobs
		MANDRAKESOUP = "This soup's all kinds of crazy.", --Mandrake Soup
		MEATBALLS = "Could use some spaghetti but I ain't picky.", --Meatballs
		BONESTEW = "This stew got my name all over it.", --Meaty Stew
		MONSTERLASAGNA = "Food is food.", --Monster Lasagna
		PEROGIES = "Like a food bomb, ready to go off in my mouth.", --Pierogi
		POWCAKE = "Not the most healthiest thing to eat.", --Powdercake
		PUMPKINCOOKIE = "Man these cookies are alright.", --Pumpkin Cookies
		RATATOUILLE = "Somethin' to watch my waistline.", --Ratatouille
		STUFFEDEGGPLANT = "Stuffed is right.", --Stuffed Eggplant
		TAFFY = "A real treat to eat.", --Taffy
		TURKEYDINNER = "Dear lord, thank you for this bountiful meal. Amen.", --Turkey Dinner
		UNAGI = "Sushi on the go.", --Unagi
		WAFFLES = "Hell yeah I like waffles.", --Waffles
		FLOWERSALAD = "I ain't normally one for salads.", --Flower Salad
        GUACAMOLE = "Guac without chips? Not a first for me.", --Guacamole
        ICECREAM = "Ice cream. The wise pharaoh of food. Sittin' atop the food pyramid, passin' judgement on all lesser foods.", --Ice Cream
        WATERMELONICLE = "Sometimes you just gotta treat yourself.", --Melonsicle
        HOTCHILI = "Mmmhmm. Southern style.", --Spicy Chili
        TRAILMIX = "A must have for camping.", --Trail Mix
        JELLYBEAN = "Sweets that can't be beat.", --Jellybeans
		WETGOOP = "A whole lotta nothin'.", --Wet Goop
		
		
		
		
		--(OTHER FOOD)--
		SEEDS = "Seeds for growin' shit.", --Seeds
		CARROT_SEEDS = "These seeds are for carrots.", --Carrot Seeds
		CORN_SEEDS = "These seeds are for corn.", --Corn Seeds
		DRAGONFRUIT_SEEDS = "These seeds are for... something.", --Dragon Fruit Seeds
		DURIAN_SEEDS = "These seeds are for durians.", --Durian Seeds
		EGGPLANT_SEEDS = "These seeds are for eggplants.", --Eggplant Seeds
		POMEGRANATE_SEEDS = "These seeds are for pomegranate.", --Pomegranate Seeds
		PUMPKIN_SEEDS = "These are pumpkin seeds.", --Pumpkin Seeds
		WATERMELON_SEEDS = "These seeds are for watermelon.", --Watermelon Seeds
		SEEDS_COOKED = "Could use more salt.", --Roasted Seeds
		ACORN_COOKED = "Got that nutty flavor.", --Roasted Birchnut
		HONEY = "Nectar of the gods.", --Honey
		BUTTERFLYWINGS = "Butterfly won't be needin' these anymore.", --Butterfly Wings
		BUTTER = "About time I got me some spread.", --Butter
		SPOILED_FOOD = "All that food... it's a goddamn tragedy, is what it is", --Rot
		ROTTENEGG = "My stomach's turnin' just smelling it.", --Rotten Egg
		GOATMILK = "Better drink your milk.", --Electric Milk
		PHLEGM = "God damn goo!", --Phlegm
        ROYAL_JELLY = "More like a royal pain in the ass to get.", --Royal Jelly
		
		
		
		
		--(MISC ITMES)--
		--BLUEPRINT = --Blueprint
		--{ 
            --COMMON = "",
            --RARE = "",
        --},
		GEARS = "I can make these work.", --Gears
		ASH = --Ashes
		{
			"Nothing lasts when it's on fire.",
			REMAINS_GLOMMERFLOWER = "There goes the flower.",
			REMAINS_EYE_BONE = "Where am I gonna find another one of those?",
			REMAINS_THINGIE = "It use to be something.",
		},
		--REDGEM = "", --Red Gem
		--BLUEGEM = "", --Blue Gem
		--YELLOWGEM = "", --Yellow Gem
		--GREENGEM = "", --Green Gem
		--ORANGEGEM = "", --Orange Gem
		--BEARDHAIR = "", --Beard Hair
		POOP = "Yeah it's shit...", --Manure
		GUANO = "Yeah it's shit...", --Guano
		--TRINKET_1 = "", --Melty Marbles
		--TRINKET_2 = "", --Fake Kazoo
		TRINKET_3 = "How the hell did it get tied up like that?", --Gord's Knot
		TRINKET_4 = "Must be from Whispering Oaks.", --Gnome
		TRINKET_5 = "I'm getting flashbacks to that merry-go-round.", --Tiny Rocketship
		TRINKET_6 = "Looks like garbage.", --Frazzled Wires
		TRINKET_7 = "If I ever wanna waste time.", --Ball and Cup
		TRINKET_8 = "I could use a bath after all of this shit.", --Hardened Rubber Bung
		--TRINKET_9 = "", --Mismatched Buttons
		TRINKET_10 = "Some old son of a bitch lost their teeth.", --Second-hand Dentures
		--TRINKET_11 = "", --Lying Robot
		--TRINKET_12 = "", --Dessicated Tentacle
		TRINKET_13 = "Must be from Whispering Oaks.", --Gnomette
		--TRINKET_14 = "", --Leaky Teacup
		--TRINKET_15 = "", --White Bishop
		--TRINKET_16 = "", --Black Bishop
		TRINKET_17 = "Could have made eating a lot easier.", --Bent Spork
		--TRINKET_18 = "", --Toy Trojan Horse
		--TRINKET_19 = "", --Unbalanced Top
		--TRINKET_20 = "", --Back Scratcher
		TRINKET_21 = "No kitchen puts this thing out of work.", --Beaten Beater
		--TRINKET_22 = "", --Frayed Yarn
		--TRINKET_23 = "", --Shoe Horn
		--TRINKET_24 = "", --Lucky Cat Jar
		--TRINKET_25 = "", --Air Unfreshener
		TRINKET_26 = "Seems pretty impracticle.", --Potato Cup
		TRINKET_27 = "How the hell am I suppose to use this out here?", --Wire Hanger
		--STAFFLIGHT = "", --Dwarf Star
		--WEBBERSKULL = "", --Webber's Skull
		BONESHARD = "Bits of bone.", --Bone Shards
		BELL_BLUEPRINT = "", --Old Bell Blueprint
		--ABIGAIL_FLOWER = --Abigail's Flower
		--{ 
			--"",
			--LONG = "",
			--MEDIUM = "",
			--SOON = "",
			--HAUNTED_POCKET = "",
			--HAUNTED_GROUND = "",
		--},
		--BALLOONS_EMPTY = "", --Pile o' Balloons
		--BALLOON = "", --Balloon
		--WAXWELLJOURNAL = "", --Codex Umbra
		FURTUFT = "That huge ass monster sheds like there's no tomorrow.", --Fur Tuft 
        --SKETCH = "", --Sketch
		--ATRIUM_KEY = "", --Ancient Key
		--SHADOWHEART = "", --Shadow Atrium
        --REDMOONEYE = "", --Red Moonlens
        --PURPLEMOONEYE = "", --Purple Moonlens
        --GREENMOONEYE = "", --Green Moonlens
        --ORANGEMOONEYE = "", --Orange Moonlens
        --YELLOWMOONEYE = "", --Yellow Moonlens
        --BLUEMOONEYE = "", --Blue Moonlens
        --OPALPRECIOUSGEM = "", --Iridescent Gem
        --OPALSTAFF = "", --Moon Caller's Staff
        --STAFFCOLDLIGHT = "", --Polar Light
		--ANTLIONTRINKET = "", --Beach Toy
        --WETPOUCH = "", --Crumpled Package
		
		
		
		
		--(ADVENTURE MODE)--
		--DIVININGRODSTART = "", --Diving Rod
		--DIVININGROD = --Diving Rod
		--{
			--"",
			--COLD = "",
			--WARM = "",
			--WARMER = "",
			--HOT = "This thing is goin' nuts!",
		--},
		--DIVININGRODBASE = --Divining Rod Holder
		--{
			--"",
			--READY = "",
			--UNLOCKED = "",
		--},
		--ADVENTURE_PORTAL = "", --Maxwell's Door
		--MAXWELLPHONOGRAPH = "", --Maxwell's Phonograph
		--MAXWELLLIGHT = "", --Maxwell's Light
		STATUEMAXWELL = "Ain't no room for vanity here.", --Maxwell Statue
		--TRAP_TEETH_MAXWELL = "", --Maxwell's Tooth Trap
		WORMHOLE_LIMITED = "This don't look so good.", --Sick Worm Hole
		--MAXWELLLOCK = "", --Nightmare Lock
		--MAXWELLTHRONE = "", --Nightmare Throne
		--MALE_PUPPET = "", --Nightmare Throne (Male character)
		--FEM_PUPPET = "", --Nightmare Throne (Female character)
		--ROBOT_PUPPET = "", --Nightmare Throne (Other character)
		
		
		
		
		--(UNIMPLEMENTED)--
		--MAXWELLHEAD = "", --Maxwell's Head
		--SKULLCHEST = "", --Skull Chest
		--GOLDENPITCHFORK = "", --Golden Pitchfork
		--BOAT = "", --Boat
		--HOME = "", --Home
		--SUNKBOAT = "", --Sun Boat
		--ROCK_LIGHT = --Lava Pit
		--{
			--"",
			--OUT = "",
			--LOW = "",
			--NORMAL = "",
		--},
		--BEEMINE_MAXWELL = "", --Maxwell's Mosquito Trap
		--TREECLUMP = "", --Tree Clump
		--PIGTENT = "", --Pig Tent
		--RUINSRELIC_PLATE = "", --Relic Plate
        --RUINS_RUBBLE = "", --Unknown
        --RUBBLE = "", --Unknown
		--TREASURECHEST_TRAP = "", --Chest (Trap)
		--DEVTOOL = "", --Devtool
		--DEVTOOL_NODEV = "", --NoDev
		--UNIMPLEMENTED = "", --Unimplemented
		--SHADOWDIGGER = "", --Shadow Digger
        --MIGRATION_PORTAL = --Friend-o-matic
		--{
			--"",
            --OPEN = "",
            --FULL = "",
        --},
		--WETPAPER = "", --Wet Paper
        LAVAARENA_KEYHOLE = "Needs some kind of key.", --Ancient Anchor
		LAVAARENA_KEYHOLE_FULL = "Now it's good.", --Ancient Anchor
		LAVAARENA_BERNIE = "Look at that little guy go.", --Bernie (Forge event)
		DEADLYFEAST = "No way I'm eating THAT!", --Deadly Feast
		DEPLETED_GRASS = "No grass growing here.", --Depleted Grass
		HUMANMEAT = "Shit ain't right!", --Long Pig
		HUMANMEAT_COOKED = "Shit ain't right!", --Cooked Long Pig
		HUMANMEAT_DRIED = "Shit ain't right!", --Long Pig Jerky
	},
	
	
	
	
	--(ANNOUNCEMENTS)--
	--Player Status
	ANNOUNCE_FREEDOM = "Back on my feet!", --Freedom
	ANNOUNCE_KNOCKEDOUT = "What the hell just happened?", --Mandrake (Knocked out by)
	ANNOUNCE_BECOMEGHOST = "ooOooooO!", --Becoming ghost
	ANNOUNCE_BECOMEHUMAN = --Becoming human
    {
		"Woah...",
		"Oh hell... I'm back here.",
		"Oh... You didn't do mouth to mouth on me did you?",
    },
    ANNOUNCE_ENCUMBERED = --Carrying heavy object
    {
        "This here is some serious bullshit.",
        "This ain't how I thought it would go.",
		"Shit, this is heavy...",
		"Gah, damnit now!",
		"Man this shit hurts.",
		"Can't go no faster.",
		"Going as fast as I can.",
		"Damn... This here is some bullshit.",
		"I'm about to gain some serious shit.",
    },
	ANNOUNCE_INV_FULL = --Inventory full
	{
		"I ain't got any room.",
		"Can't carry anymore.",
		"I got too much as it is.",
	},
	ANNOUNCE_BURNT = "Too hot!", --Burnt
	ANNOUNCE_WORMHOLE = "Damn I'm all turned around now.", --Worm Hole (Exited)
	ANNOUNCE_NODANGERAFK = "Get me outta here!", --Danger, unable to leave game
	--Light
	ANNOUNCE_DUSK = "Sun's settin'. Might need to make this quick.", --Dusk
	ANNOUNCE_ENTER_LIGHT = "That's better.", --Entering light
	ANNOUNCE_ENTER_DARK = --Entering darkness
	{
		"I can't see shit!",
		"Can't see a god damn thing!",
		"It's too dark!",
	},
	DESCRIBE_TOODARK = "Can't do anything in this dark.", --Doing things in the dark
	ANNOUNCE_CHARLIE = "Oh what the heck is that?", --Charlie
	ANNOUNCE_CHARLIE_ATTACK = "OW! WHAT THE HELL?!", --Charlie (Attacked by)
	--Temperature
	ANNOUNCE_COLD = --Freezing
	{
		"God DAMN it's cold!",
		"Damn, sure is cold out here!",
	},
	ANNOUNCE_HOT = --Overheating
	{
		"I ain't feelin' too good...",
		"Gettin' whoozy here...",
	},
	--Hunger
	ANNOUNCE_HUNGRY = "I am STARVIN'!", --Hungry
	ANNOUNCE_EAT = --Eating
	{
		"That hit the spot.",
		PAINFUL = "Dammit, that hurt!",
		SPOILED = "BLUH! Oh that was not good.",
		STALE = "It ain't good, but it ain't bad either.",
		INVALID = "Can't eat it.",
		YUCKY = "Ain't gonna happen.",
	},
	--EAT_FOOD =
	--{
		--TALLBIRDEGG_CRACKED = "", --Hatching Tallbird Egg (Dead, eating the egg)
	--},
	--Combat
	BATTLECRY = --Battlecry
	{
		"Eat that shit!",
		"Ooh. How ya like me now!",
		"WOO! Yeah baby!",
		"GRRRR!",
		"How you like THAT?!",
		"You wanna test ME?!",
		PIG = "Punk ass pigs!",
		PREY = "Hold still now!",
		DEER = "Hold still now!",
		FROG = "You frogs better watch your mouth!",
		SPIDER = "I'm gonna beat that spider's ass!",
		SPIDER_WARRIOR = "I'm gonna beat that spider's ass!",
		SPIDERDEN = "This is some gross ass shit!",
		WASPHIVE = "Gettin' rid of this thing for good.",
		KRAMPUS = "Stealing from me?! That's some crazy shit!",
		SPIDERQUEEN = "Spider bitch's goin' down!",
		DEERCLOPS = "Gonna have to focus on that thing!",
		BEARGER = "Don't stop now!",
		DRAGONFLY = "Keep pourin' it on!",
		MOOSE = "Kill that big mother!",
	},
	COMBAT_QUIT = --Leaving combat
	{
		"I ain't got time for this.",
		"No shame in running away.",
		"I'm outta here.",
		"Man said any fight you walk away from is a win!",
		BEE = "I am not dying by god damn bees.",
		PIG = "Uncle! Uncle!",
		PREY = "I ain't use to all of this runnin' around.",
		SPIDER = "These guys are startin' to creep me out.",
		SPIDER_WARRIOR = "These guys are startin' to creep me out.",
		DEERCLOPS = "Oh shit! Back it UP!",
		BEARGER = "Back it up!",
		DRAGONFLY = "Back! Back! Back!",
		MOOSE = "Back up! Back up!",
	},
	ANNOUNCE_KILLCONFIRMATION =
	{
		"Got it!",
		"Hit it!",
		"I got it!",
		"Dead!",
		"Pow! Got it!",
		"It's down.",
		"Got it.",
		"I got it.",
		"That one's mine!",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
		"",
	},
	--Items
	DESCRIBE_SMOLDERING = "It's gonna burn!", --Smoldering item
	ANNOUNCE_CANFIX = "Can probably get this fixed up.", --Object broken, fixable
	ANNOUNCE_TORCH_OUT = --Torch, Miner Hat (Out)
	{
		"Shit! Light went out!",
		"Light's out!",
	},
    ANNOUNCE_COMPASS_OUT = "Damn thing broke.", --Compass (Broken)
	ANNOUNCE_BOOMERANG = "Dammit! I'm not any good at this.", --Boomerang (Hit self)
	ANNOUNCE_FAN_OUT = "IT was fun while it lasted.", --Whirly Fan (Broken)
	ANNOUNCE_THURIBLE_OUT = "Damn thing's out of fuel.", --Shadow Thurible (Out)
	--Sleeping
	ANNOUNCE_NODAYSLEEP = "No time for napping.", --Trying to sleep during the day
	ANNOUNCE_NODANGERSLEEP = "I can't get any shut eye with those bitches so close by.", --Trying to sleep near monsters 
	ANNOUNCE_NOHUNGERSLEEP = "Nah, let's check around for some food first.", --Trying to sleep when too hungry 
	ANNOUNCE_NODAYSLEEP_CAVE = "No time for napping.", --Trying to sleep during day in a cave
	ANNOUNCE_NOSLEEPONFIRE = "How am I suppose to sleep when shit's on fire?!", --Trying to sleep on fire
	--Siesta Lean-to
	ANNOUNCE_NONIGHTSIESTA = "I'll rest when there's daylight to kill.", --Siesta Lean-to (Can't sleep)
	ANNOUNCE_NODANGERSIESTA = "I can't get any shut eye with those bitches so close by.", --Siesta Lean-to (Monsters)
	ANNOUNCE_NOHUNGERSIESTA = "Nah, let's check around for some food first.", --Siesta Lean-to (Hungry)
	ANNOUNCE_NONIGHTSIESTA_CAVE = "Can't relax inside a cave.", --Siesta Lean-to (In cave)
	--Gifts
    ANNOUNCE_NODANGERGIFT = "Can't a man open a gift in peace?!", --Unable to receive gift (Danger)
    ANNOUNCE_NOMOUNTEDGIFT = "I should get off before opening this thing.", --Unable to receive gift (Mounted)
	--Traps
	ANNOUNCE_BEES = --Activating a Bee Mine
	{
		"Get out the way! BEES!",
		"Run! Run! Bees comin' through!",
		"Oh shit... Bees! Bees! Bees!",
		"Coming through! Bees on my ass!",
		"Bee's on my ass!",
	},
	ANNOUNCE_TRAP_WENT_OFF = "Shit!", --Maxwell's Tooth Trap (Went off)
	--Incoming Events
	ANNOUNCE_HOUNDS = --Hounds are coming
	{
		"Here they come!",
		"Ah shit, this ain't gonna be good!",
		"Shit, get ready!",
		"Alright now, they comin'!",
		"It's on!",
		"Game on, baby!",
		"Incoming!",
	},
	ANNOUNCE_WORMS = "You feel something?", --Depths Worms are coming
	ANNOUNCE_DEERCLOPS =  --Deerclops is coming
	{
		"I don't like the sound of that one bit!",
		"From the sounds of it, it's about to get a whole lot worse.",
		"Man this about to get all baghdad and shit!",
	},
	ANNOUNCE_QUAKE = "Oh hell. This about to get bad!", --Earthquake
	--Weather
	ANNOUNCE_DAMP = "I ain't a fan of gettin' wet.", --Wetness (Low)
	ANNOUNCE_WET = "I need to get dry.", --Wetness (Medium)
	ANNOUNCE_WETTER = "This shit's worse than the swamp.", --Wetness (High)
	ANNOUNCE_SOAKED = "Man I ain't ever gonna be dry.", --Wetness (Highest)
	ANNOUNCE_SHELTER = "It's dryer under the trees.", --Tree Shelters
	ANNOUNCE_TOOL_SLIP = --Dropping tool while wet
	{
		"What the-", 
		"God dammit!",
		"God damn!",
		"Son of a bitch!",
		"Bull shit!",
	},
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = --Lightning miss
	{
		"Man... That was some close ass shit.", 
		"That was some epic shit right there.",
		"Shit... That shit was crazy!",
		"That shit was too god damn close.",
	},
	--Mobs
    ANNOUNCE_MOUNT_LOWHEALTH = "Poor guy's hurtin' bad.", --Beefalo mount health low
	ANNOUNCE_MOSQUITOS = "God damn bugs!", --Nearby Mosquitoes 
	ANNOUNCE_PECKED = "Quit pointin' that thing my way!", --Pecked by a Smallish Tallbird
	ANNOUNCE_GHOSTDRAIN = "Pull it together man!", --Ghost sanity drain
	ANNOUNCE_KLAUS_UNCHAINED = "This is gonna be one hell of a fight!", --Klaus (Second form)
	ANNOUNCE_KLAUS_ENRAGE = "Oh shit. That bitch is gettin' angry!", --Klaus enraged
	ANNOUNCE_KLAUS_CALLFORHELP = "Here comes his posse!", --Klaus summoning Krampii
    --ANNOUNCE_SNARED = "", --Bone Snare (Reanimated caves skeleton)
    --ANNOUNCE_REPELLED = "", --Ancient Fuelweaver (Hitting shadow shield)
	--ANNOUNCE_ANTLION_SINKHOLE = --Sinkhole warning
	--{
		--"",
		--"",
		--"",
	--},
	--ANNOUNCE_ANTLION_TRIBUTE = --Antlion (Giving Tribute)
	--{
        --"",
        --"",
        --"",
	--},
	--Hunting
	ANNOUNCE_HUNT_BEAST_NEARBY = "Gettin' real close now.", --Animal Track (Found)
	ANNOUNCE_HUNT_LOST_TRAIL = "Well that was a waste of time.", --Animal Track (Lost its trail)
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "Rain's really makin' this hard to find.", --Animal Track (Lost in rain)
	--Plants
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Needs more shit.", --Not enough fertilizer
	ANNOUNCE_THORNS = "Ow! Damnit, that hurt.", --Rose (After picking)
	ANNOUNCE_PICK_DISEASE_WARNING = "This ain't growin' right.", --Plant diseased pick warning
	ANNOUNCE_DIG_DISEASE_WARNING = "Gotta keep this shit in check.", --Plant diseased dig warning
	ANNOUNCE_PETRIFED_TREES = "What's all this then?", --Trees petrifying
	--Structure
    ANNOUNCE_NOWARDROBEONFIRE = "I can't change when the damn thing's on fire!", --Wardrobe on fire, unable to use
	ANNOUNCE_TOWNPORTALTELEPORT = "We're all here.", --The Lazy Deserter (Teleported)
	ANNOUNCE_SACREDCHEST_YES = "Paydirt!", --Ancient Chest (Successful)
	ANNOUNCE_SACREDCHEST_NO = "Come on man.", --Ancient Chest (Failed)
	--Biome
	--ANNOUNCE_CAVEIN = "", --Cave-in warning
    --ANNOUNCE_RUINS_RESET = "", --Ruins renewal
    --ANNOUNCE_ATRIUM_DESTABILIZING = --Atrium destabilizing
    --{
	--	"",
	--	"",
	--	"",
	--},
	--Adventure
	ANNOUNCE_ADVENTUREFAIL = --Failed
	{
		"I know I can do better than that.",
		"I got sloppy out there.",
		"Man... That got bad.",
	},
	--PS4
	--ANNOUNCE_ACCOMPLISHMENT = "", --Accomplishment
	--ANNOUNCE_ACCOMPLISHMENT_DONE = "", --Accomplishment completed
	--Forge
	ANNOUNCE_REVIVING_CORPSE = --Started revival
	{
		"Come on now! Get ya ass up.",
		"We ain't got time for this, get up!",
		"Let's get you ass up!",
		"Oh shit, come on, get up!",
		"Come on now, ain't got time for this, get up!",
		"Get your ass up! Get up!",
		"Getup! Come on now. Get. Up!",
	},
	ANNOUNCE_REVIVED_OTHER_CORPSE = --Finished revival
	{
		"Walk it off.",
		"You okay.",
		"You look good.",
		"Come on now.",
		"Now you're back in business.",
		"Up we go.",
		"You good!",
		"You doin' fine.",
		"This don't look bad.",
		"Can't lose you now, can we?",
		"See. You gonna make it.",
		"Alright. Let's finish what we started.",
		"Alright now. You back in business.",
	},
	ANNOUNCE_REVIVED_FROM_CORPSE = --Revived
	{
		"Thanks.",
		"Alright, thanks.",
		"Thanks!",
		"Thanks man.",
		"Thanks. We straight?",
	},
	--Removed/Unimplemented
	--ANNOUNCE_HIGHRESEARCH = "", --Research High Value
	--ANNOUNCE_RESEARCH = "", --Research Normal Value
	--ANNOUNCE_LOWRESEARCH = "", --Research Low Value
	--ANNOUNCE_TOADESCAPING = "", --Toadstool Escaping
	--ANNOUNCE_TOADESCAPED = "", --Toadstool Escaped
	--ANNOUNCE_NO_TRAP = "", --Unimplemented
	--ANNOUNCE_UNIMPLEMENTED = "This is unimplemented.", --Unimplemented
	--Left 4 Dead Items
	ANNOUNCE_USE_PAINPILLS = --Use Pain Pills
	{
		"Alright. That hit the spot.",
		"That hit the spot.",
		"Yeah... That'll hold me.",
		"That'll keep me tight.",
	},
	ANNOUNCE_USE_ADRENALINE = "Oof! Mmm.", --Use Adrenaline Shot
	ANNOUNCE_USE_HEALTHKIT = --Use First Aid Kit
	{
		"Oh yeah... Yeah.",
		"That's what I'm talkin' about.",
		"All good now.",
	},
	--Action Failure
	ACTIONFAIL_GENERIC = --Failed to do something
	{
		"No!",
		"Oh hell no.",
		"Excuse me?",
		"N.O.",
		"No thank you.",
		"Nope.",
		"Nuh-uh.",
		"Ain't gonna happen.",
		"Hell no.",
		"Shit nah.",
		"You crazy?!",
	},
	ANNOUNCE_CRAFTING_FAIL = "I ain't got everything for this.", --Failed to craft something
	ACTIONFAIL =
	{
        GIVE = --Failed to give something
        {
			"Can't do it.",
            DEAD = "It's dead.", --Trying to give item to a dead mob
            SLEEPING = "Psst, hey! You awake?", --Trying to give item to a sleeping mob
            BUSY = "Take it!", --Trying to give item to a busy mob
            ABIGAILHEART = "What? Not good enough for ya?", --Abigail (Revival failed)
            GHOSTHEART = "Why did I even bother.", --Ghost (Revival failed)
            --NOTGEM = "", --Not Gem
            --WRONGGEM = "", --Wrong Gem
            --NOTSTAFF = "", --Moon Stone (Not Staff)
            MUSHROOMFARM_NEEDSSHROOM = "Could use a shroom.", --Mushroom Planter needs mushroom
            MUSHROOMFARM_NEEDSLOG = "Needs a new log.", --Mushroom Planter needs living log
            SLOTFULL = "It's got what it needs.", --Potter's Wheel (Material already present)
            DUPLICATE = "Looks like I got that already.", --Potter's Wheel (Sketch already known)
            NOTSCULPTABLE = "That don't work with this.", --Potter's Wheel (Invalid material)
            --NOTATRIUMKEY = "", --Not Atrium Key
            --CANTSHADOWREVIVE = "", --Odd Skeleton (Improper revival)
            --WRONGSHADOWFORM = "It's not put together right.", --Odd Skeleton (Incorrect structure, unable to revive)
        },
        GIVETOPLAYER = --Unable to give item to player (Single item)
        {
            FULL = "Spare some room?", --Inventory full
            DEAD = "Oh shit...", --Dead
            SLEEPING = "Now might not be a good time.", --Sleeping
            BUSY = "Hold up now, I got something for you.", --Busy
        },
        GIVEALLTOPLAYER = --Unable to give item to player (All items)
        {
            FULL = "Got any room?", --Inventory full
            DEAD = "Oh shit...", --Dead
            SLEEPING = "Now might not be a good time.", --Sleeping
            BUSY = "Hold on, I got something for you.", --Busy
        },
		RUMMAGE = --Can't rummage
		{	
			"Nope.",
			INUSE = "You best hop to.", --Occupied
		},
		STORE = --Can't store
		{
			"No room.", --Full
			NOTALLOWED = "It won't go inside.", --Invalid item
			INUSE = "Move your damn ass!", --Occupied
		},
        COOK = --Crock Pot (Refusing to cook)
        {
            "Dang! Can't cook right now.",
			INUSE = "Haul some ass y'all.", --In use
            TOOFAR = "Can't cook from over here.", --Too far
        },
        --BUILD = --Unable to build structure
        --{
            --MOUNTED = "", --Mounted
            --HASPET = "", --Already has critter
        --},
        WRITE = --Can't write on sign
        {
            "Don't need to write on this.",
			INUSE = "Hurry it up!", --In use
        },
        DRAW = --Mini Sign
        {
            NOIMAGE = "Ain't nothin' to draw.", --Draw with no subject
        },
        CHANGEIN = --Wardrobe (Unable to change)
        {
            "No time to change.",
            BURNING = "I can't change when the damn thing's on fire!", --On fire
			INUSE = "Let's go, let's go alright.", --In use
        },
        REPAIR = --Marble Sculpture (Unable to repair)
        {
            WRONGPIECE = "It won't fit right.", --Wrong piece
        },
        ATTUNE =
        {
            NOHEALTH = "I'm not in any condition to be buildin' this thing.", --Health too low, Unable to attune
        },
		SHAVE = --Razor
		{
			"Can't shave it.",
			AWAKEBEEFALO = "No thank you.", --Shaving a Waken Beefalo
			NOBITS = "Ain't much left to shave.", --Nothing Left
		},
        --MOUNT = --Unable to mount
        --{
            --TARGETINCOMBAT = "", --Beefalo in combat
            --INUSE = "", --Beefalo occupied
        --},
        --SADDLE = --Unable to saddle
        --{
            --TARGETINCOMBAT = "", --Beefalo in combat
        --},
        TEACH =
        {
            KNOWN = "I know that one already.", --Blueprint already known
            CANTLEARN = "This one's tricky...", --Can't learn blueprint
            WRONGWORLD = "This ain't even the right map.", --Can't learn Map Scroll
        },
        WRAPBUNDLE = --Unable to bundle
        {
            EMPTY = "Ain't nothin' to wrap.", --No items
        },
		--USEKLAUSSACKKEY = --Loot Stash
        --{
        	--WRONGKEY = "", --Wrong Key
        	--KLAUS = "", --Klaus
        --},
        PICKUP =
        {
			RESTRICTION = "That ain't my kind of weapon.", --Refusing inappropriate weapon (Forge Event)
        },
	},
}