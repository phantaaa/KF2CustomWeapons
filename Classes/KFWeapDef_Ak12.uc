class KFWeapDef_AK12 extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_AssaultRifle_AK12", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_AssaultRifle_AK12", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_AssaultRifle_AK12", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return "*Damage: 40 -> 46" $
	"\n*Weight 6 -> 7";
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_AssaultRifle_AK12"
	
	BuyPrice=1750
	AmmoPricePerMag=40
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_AK12"
	
	EffectiveRange=67
}
