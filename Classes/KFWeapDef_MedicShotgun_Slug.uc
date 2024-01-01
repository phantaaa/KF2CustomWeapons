class KFWeapDef_MedicShotgun_Slug extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_Shotgun_Medic", "ItemName", "KFGameContent") @ "Slug";
}

static function string GetItemDescription()
{
	return "*Damage: 25 -> 43" $
	"\n*Penetration: 2.0 -> 8.0" $
	"\n*Spread: 0.07 -> 0.0" $
	"\n*Pellets: 6 -> 3" $
	"\n*Stun power: 0 -> 8";
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Shotgun_Medic", KeyName, "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Shotgun_Medic_Slug"
	
	BuyPrice=1100
	AmmoPricePerMag=40
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_MedicShotgun"
	
	EffectiveRange=80
}
