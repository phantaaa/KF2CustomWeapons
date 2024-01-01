class KFWeapDef_MedicShotgun extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
  return Localize("KFWeap_Shotgun_Medic", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
  if(KeyName == "ItemName")
  {
    return GetItemName();
  }
  return Localize("KFWeap_Shotgun_Medic", KeyName, "KFGameContent");  
}

static function string GetItemCategory()
{
  return Localize("KFWeap_Shotgun_Medic", "ItemCategory", "KFGameContent");   
}

static function string GetItemDescription()
{
  return Localize("KFWeap_Shotgun_Medic", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Shotgun_Medic"

	BuyPrice=1100
	AmmoPricePerMag=40
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_MedicShotgun"

	EffectiveRange=50
}
