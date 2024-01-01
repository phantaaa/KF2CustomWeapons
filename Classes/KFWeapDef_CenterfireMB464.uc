class KFWeapDef_CenterfireMB464 extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
    return Localize("KFWeap_Rifle_CenterfireMB464", "ItemName", "KFGameContent");
}

static function string GetItemCategory()
{
    return Localize("KFWeap_Rifle_CenterfireMB464", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
    return "*Damage: 165 -> 180\n\n==== Sharpshooter ====" $
    "\n*Reload speed: 0.80x (20\% faster)";
}

static function string GetItemLocalization(string KeyName)
{
    if(KeyName == "ItemName")
    {
        return GetItemName();
    }
    return Localize("KFWeap_Rifle_CenterfireMB464", KeyName, "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Rifle_CenterfireMB464"

	BuyPrice=700 //650
	AmmoPricePerMag=55 //50
	ImagePath="WEP_UI_Centerfire_TEX.UI_WeaponSelect_Centerfire"

	EffectiveRange=70
}
