class KFWeapDef_DeagleDual extends KFWeaponDefinition
	abstract;
	
static function string GetItemName() 
{
    return Localize("KFWeap_Pistol_DualDeagle", "ItemName", "KFGameContent");
}

static function string GetItemDescription()
{
    return "*RPM: 545 -> 500" $
    "\n*Empty reload speed: 1.00 -> 1.20 (20\% \slower)" $
    "\n*Non-empty reload speed: 1.00 -> 0.8 (20\% faster)";
}

static function string GetItemLocalization(string KeyName)
{
    if(KeyName == "ItemName")
    {
        return GetItemName();
    }
    return Localize("KFWeap_Pistol_DualDeagle", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
    return Localize("KFWeap_Pistol_DualDeagle", "ItemCategory", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Pistol_DualDeagle"
	BuyPrice=1100
	AmmoPricePerMag=42
	ImagePath="WEP_UI_Dual_Deagle_TEX.UI_WeaponSelect_DualDeagle"
	EffectiveRange=50
}
