class KFWeapDef_MedicPistol extends KFWeaponDefinition abstract;

static function string GetItemName()
{
	return Localize("KFWeap_Pistol_Medic", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Pistol_Medic", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Pistol_Medic", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_Pistol_Medic", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.KFWeap_Pistol_Medic"
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_MedicPistol"
	
	BuyPrice=200
	AmmoPricePerMag=10
	
	EffectiveRange=50
}
