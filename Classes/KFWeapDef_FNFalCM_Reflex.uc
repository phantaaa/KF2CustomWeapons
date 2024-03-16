class KFWeapDef_FNFalCM_Reflex extends KFWeaponDefinition abstract;

static function string GetItemName()
{
	return "FN FAL (Reflex)";
}

static function string GetItemDescription()
{
	return "*Damage: 70 -> 60" $
	"\n*Bullet type: FN_FAL -> SCAR" $
    "\n*Scope: x4 ACOG -> Reflex" $
	"\n*Penetration: 2.0 -> 1.0" $
	"\n*RPM: 606 -> 700" $
	"\n*SpareAmmo: 160 -> 280" $
	"\n*VerticalRecoil: 165-200 -> 165-165" $
	"\n*HorizontalRecoil: -165 to 190 -> -125 to 145";
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_AssaultRifle_FNFal", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_AssaultRifle_FNFal", "ItemCategory", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_AssaultRifle_FNFalCM_Reflex"
	ImagePath="WEP_UI_FalCM_TEX.UI_WeaponSelect_FNFAL_CM"

	BuyPrice=2500
	AmmoPricePerMag=47

	EffectiveRange=70
}
