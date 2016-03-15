--============================================================
-- descript : 酒捞袍 鸥涝
--============================================================

TYPE_HEAL = 0
TYPE_SCHANGE = 1
TYPE_SPECIAL = 2
TYPE_EVENT = 3
TYPE_ARMOR = 4
TYPE_WEAPON = 5
TYPE_CARD = 6
TYPE_QUEST = 7
TYPE_BOW = 8
TYPE_BOTHHAND = 9

--============================================================
-- descript : DB 疙苞 command 疙捞 促弗 酒捞袍 抛捞喉
--============================================================

excItemNameTable =										
{										
	["Yggdrasilberry"]	 =	{ name = "天地树果实",	type =	TYPE_SPECIAL	},
	["Spectacles"]	 =	{ name = "放大镜",	type =	TYPE_SPECIAL	},
	["Pork_Belly"]	 =	{ name = "五花肉",	type =	TYPE_SPECIAL	},
	["Spareribs"]	 =	{ name = "排骨肉",	type =	TYPE_SPECIAL	},
	["Handsei"]	=	 {	name = "红包",	type = TYPE_SPECIAL	},

	["Pork_Belly_H"]	=	 {	name = "1st Class Pork Belly",	type = TYPE_SPECIAL	},
	["Spareribs_H"]	=	 {	name = "Thick Pork Belly",	type = TYPE_SPECIAL	},
	["Stone_Of_Intelligence_"]	=	 {	name = "贤者之石",	type = TYPE_SPECIAL	},

	["Stone_Of_Intelligence"]	=	 { name = "点金石",	type = TYPE_EVENT	},

	["Angra_Manyu"]	=	 {	name = "圣锤 十字星",	type = TYPE_WEAPON	},
	["Ahura_Mazda"]	=	 {	name = "圆盾",	type = TYPE_ARMOR	},
}	