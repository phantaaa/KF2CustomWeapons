
class KFWeapDef_MedicSMG extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
    return Localize("KFWeap_SMG_Medic", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
    if(KeyName == "ItemName")
    {
        return GetItemName();
    }
    return Localize("KFWeap_SMG_Medic", KeyName, "KFGameContent");  
}

static function string GetItemCategory()
{
    return Localize("KFWeap_SMG_Medic", "ItemCategory", "KFGameContent");   
}

static function string GetItemDescription()
{
    return Localize("KFWeap_SMG_Medic", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_SMG_Medic"

	BuyPrice=650
	AmmoPricePerMag=21
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_MedicSMG"

	EffectiveRange=70
}
