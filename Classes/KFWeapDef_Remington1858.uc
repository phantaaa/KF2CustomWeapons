class KFWeapDef_Remington1858 extends KFWeaponDefinition abstract;

static function string GetItemName()
{
	return Localize("KFWeap_Revolver_Rem1858", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Revolver_Rem1858", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Revolver_Rem1858", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_Revolver_Rem1858", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.KFWeap_Revolver_Rem1858"
	ImagePath="WEP_UI_Remington_1858_TEX.UI_WeaponSelect_Remington"
	
	BuyPrice=100
	AmmoPricePerMag=10 //6
	
	EffectiveRange=50
}
