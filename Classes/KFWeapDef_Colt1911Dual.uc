class KFWeapDef_Colt1911Dual extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_Pistol_DualColt1911", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Pistol_DualColt1911", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Pistol_DualColt1911", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_Pistol_DualColt1911", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Pistol_DualColt1911"
	
	BuyPrice=650 //650
	AmmoPricePerMag=26
	ImagePath="WEP_UI_Dual_M1911_TEX.UI_WeaponSelect_DualM1911"
	
	EffectiveRange=50
}
