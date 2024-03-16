class KFWeapDef_AF2011 extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_Pistol_AF2011", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Pistol_AF2011", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Pistol_AF2011", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_Pistol_AF2011", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Pistol_AF2011"
	ImagePath="WEP_UI_AF2001_TEX.UI_WeaponSelect_AF2011"

	BuyPrice=850 //750
	AmmoPricePerMag=24

	EffectiveRange=50
}
