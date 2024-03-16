class KFWeapDef_M14EBR_IS extends KFWeaponDefinition abstract;

static function string GetItemName()
{
	return "M14 EBR (IS)";
}

static function string GetItemDescription()
{
	return "*Damage: 80 -> 90" $
	"\n*ADS Vertical recoil increased by 95 (30%)";
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Rifle_M14EBR", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Rifle_M14EBR", "ItemCategory", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Rifle_M14EBR_IS"
	ImagePath="WEP_UI_M14EBR_TEX.UI_WeaponSelect_SM14-EBR"

	BuyPrice=1100
	AmmoPricePerMag=60 //53

	EffectiveRange=90
}
