class KFWeapDef_Deagle extends KFWeaponDefinition
	abstract;
	
static function string GetItemName() 
{
  return Localize("KFWeap_Pistol_Deagle", "ItemName", "KFGameContent");
}

static function string GetItemDescription()
{
  return Localize("KFWeap_Pistol_Deagle", "ItemDescription", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
  if(KeyName == "ItemName")
  {
    return GetItemName();
  }
  return Localize("KFWeap_Pistol_Deagle", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
  return Localize("KFWeap_Pistol_Deagle", "ItemCategory", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Pistol_Deagle"
	BuyPrice=550
	AmmoPricePerMag=21
	ImagePath="WEP_UI_Deagle_TEX.UI_WeaponSelect_Deagle"
	EffectiveRange=50
}
