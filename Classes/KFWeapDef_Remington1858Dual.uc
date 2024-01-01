class KFWeapDef_Remington1858Dual extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
    return Localize("KFWeap_Revolver_DualRem1858", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
    if(KeyName == "ItemName")
    {
        return GetItemName();
    }
    return Localize("KFWeap_Revolver_DualRem1858", KeyName, "KFGameContent");  
}

static function string GetItemCategory()
{
    return Localize("KFWeap_Revolver_DualRem1858", "ItemCategory", "KFGameContent");   
}

static function string GetItemDescription()
{
    return Localize("KFWeap_Revolver_DualRem1858", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.KFWeap_Revolver_DualRem1858"

	BuyPrice=200
	AmmoPricePerMag=20  //12
	ImagePath="WEP_UI_DualRemington1858_TEX.UI_WeaponSelect_DualRemington"

	EffectiveRange=50
}
