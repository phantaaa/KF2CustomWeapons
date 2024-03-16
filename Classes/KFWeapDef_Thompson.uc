class KFWeapDef_Thompson extends KFWeaponDefinition abstract;

static function string GetItemName()
{
	return Localize("KFWeap_AssaultRifle_Thompson", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_AssaultRifle_Thompson", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_AssaultRifle_Thompson", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return "*Damage: 30 -> 32" $
	"\n*Major changes to recoil and spread";
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_AssaultRifle_Thompson"
	ImagePath="WEP_UI_TommyGun_TEX.UI_WeaponSelect_TommyGun"

	BuyPrice=800 //650
	AmmoPricePerMag=50

	EffectiveRange=50
}
