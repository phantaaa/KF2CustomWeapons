class KFWeapDef_Bullpup extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
  return Localize("KFWeap_AssaultRifle_Bullpup", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
  if(KeyName == "ItemName")
  {
    return GetItemName();
  }
  return Localize("KFWeap_AssaultRifle_Bullpup", KeyName, "KFGameContent");  
}

static function string GetItemCategory()
{
  return Localize("KFWeap_AssaultRifle_Bullpup", "ItemCategory", "KFGameContent");   
}

static function string GetItemDescription()
{
  return "*Damage 25 -> 33" $
          "\n*RPM 660 -> 700" $
          "\n*Recoil:" $
          "\n*Pitch: Lower" $
          "\n*Yaw: Slightly lower";
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_AssaultRifle_Bullpup"

	BuyPrice=500
	AmmoPricePerMag=30
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_Bullpup"

	EffectiveRange=68
}
