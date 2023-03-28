class KFWeapDef_AR15 extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_AssaultRifle_AR15", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_AssaultRifle_AR15", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_AssaultRifle_AR15", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_AssaultRifle_AR15", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.KFWeap_AssaultRifle_AR15"
	
	BuyPrice=200
	AmmoPricePerMag=20
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_AR15"
	
	EffectiveRange=60
}
