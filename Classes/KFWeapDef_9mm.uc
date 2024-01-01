class KFWeapDef_9mm extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
    return Localize("KFWeap_Pistol_9mm", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
    if(KeyName == "ItemName")
    {
        return GetItemName();
    }
    return Localize("KFWeap_Pistol_9mm", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
    return Localize("KFWeap_Pistol_9mm", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
    return Localize("KFWeap_Pistol_9mm", "ItemDescription", "KFGameContent");
}


DefaultProperties
{
	WeaponClassPath="KFGameContent.KFWeap_Pistol_9mm"

	BuyPrice=0
	AmmoPricePerMag=12 //8
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_9mm"

	EffectiveRange=50
}
