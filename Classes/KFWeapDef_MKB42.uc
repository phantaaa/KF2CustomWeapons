class KFWeapDef_MKB42 extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_AssaultRifle_MKB42", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_AssaultRifle_MKB42", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_AssaultRifle_MKB42", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return "*SpareAmmo: 270 -> 300" $
	"\n*Recoil rate: 0.11 -> 0.10" $
	"\n*VerticalRecoil: 100-150 -> 150-150 (min-max)" $
	"\n*HorizontalRecoil: -224 to 224 -> -135 to 150 (left to right)" $
	"\n*Weight: 7 -> 6" $
	"\n*BaseDamage: 50 -> 56" $
	"\n*RPM: 500 -> 580";
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_AssaultRifle_MKB42"
	BuyPrice=1350
	AmmoPricePerMag=45 //50
	ImagePath="WEP_UI_MKB42_TEX.UI_WeaponSelect_MKB42"
	EffectiveRange=67
}
