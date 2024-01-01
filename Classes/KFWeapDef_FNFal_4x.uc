class KFWeapDef_FNFal_4x extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return "FN FAL - ACOG";
}

static function string GetItemDescription()
{
	return "*FireRate: 606 -> 496rpm (757 to 620 with marksman)" $
	"\n*Damage: 70 -> 75" $
	"\n*ReloadSpeed: 110%" $
	"\n*HorizontalRecoil:-165 to 190 -> -0 to 140 (only pulls to the right)" $
	"\n*VerticalRecoil: 165-200 -> 240-240" $
	"\n*Weight 8kg -> 9kg";
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
	WeaponClassPath="CustomWeapons.CW_AssaultRifle_FNFal_4x"
	BuyPrice=1200
	AmmoPricePerMag=47
	ImagePath="WEP_UI_FNFAL_TEX.UI_WeaponSelect_FNFAL"
	EffectiveRange=70
}
