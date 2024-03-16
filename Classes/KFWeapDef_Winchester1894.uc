class KFWeapDef_Winchester1894 extends KFWeaponDefinition abstract;

static function string GetItemName()
{
	return Localize("KFWeap_Rifle_Winchester1894", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Rifle_Winchester1894", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Rifle_Winchester1894", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_Rifle_Winchester1894", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.KFWeap_Rifle_Winchester1894"
	ImagePath="wep_ui_winchester_tex.UI_WeaponSelect_Winchester"
	
	BuyPrice=200
	AmmoPricePerMag=32 //30
	
	EffectiveRange=70
}
