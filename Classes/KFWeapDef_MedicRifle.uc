
class KFWeapDef_MedicRifle extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
    return Localize("KFWeap_AssaultRifle_Medic", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
    if(KeyName == "ItemName")
    {
        return GetItemName();
    }
    return Localize("KFWeap_AssaultRifle_Medic", KeyName, "KFGameContent");  
}

static function string GetItemCategory()
{
    return Localize("KFWeap_AssaultRifle_Medic", "ItemCategory", "KFGameContent");   
}

static function string GetItemDescription()
{
    return Localize("KFWeap_AssaultRifle_Medic", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_AssaultRifle_Medic"

	BuyPrice=1500
	AmmoPricePerMag=40
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_MedicAssault"

	EffectiveRange=70
}
