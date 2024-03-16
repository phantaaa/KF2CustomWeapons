class KFWeapDef_SW500 extends KFWeaponDefinition abstract;

static function string GetItemName()
{
	return Localize("KFWeap_Revolver_SW500", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Revolver_SW500", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Revolver_SW500", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_Revolver_SW500", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Revolver_SW500"
	ImagePath="WEP_UI_SW_500_TEX.UI_WeaponSelect_SW500"
	
	BuyPrice=850
	AmmoPricePerMag=25
	
	EffectiveRange=50
}
