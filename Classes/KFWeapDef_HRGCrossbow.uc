class KFWeapDef_HRGCrossbow extends KFWeaponDefinition abstract;

static function string GetItemName()
{
	return "HRG" @ Localize("KFWeap_Bow_Crossbow", "ItemName", "KFGameContent");
}

static function string GetItemDescription()
{
	return "*40HP heal per dart (50 ammo per dart)" $
	"\n*12 Seconds full dart recharge" $
	"\n*Dart dmg: 50" $
	"\n*Dart projectile speed: Instant" $
	"\n*No dart auto-track";
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Bow_Crossbow", KeyName, "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Bow_HRGCrossbow"
	ImagePath="WEP_UI_Crossbow_TEX.UI_WeaponSelect_Crossbow"

	BuyPrice=1000
	AmmoPricePerMag=11

	EffectiveRange=80
}
