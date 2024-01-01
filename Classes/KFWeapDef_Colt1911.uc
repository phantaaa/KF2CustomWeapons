class KFWeapDef_Colt1911 extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
  return Localize("KFWeap_Pistol_Colt1911", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
  if(KeyName == "ItemName")
  {
    return GetItemName();
  }
  return Localize("KFWeap_Pistol_Colt1911", KeyName, "KFGameContent");  
}

static function string GetItemCategory()
{
  return Localize("KFWeap_Pistol_Colt1911", "ItemCategory", "KFGameContent");   
}

static function string GetItemDescription()
{
  return Localize("KFWeap_Pistol_Colt1911", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Pistol_Colt1911"

	BuyPrice=325 // 325
	AmmoPricePerMag=13
	ImagePath="WEP_UI_M1911_TEX.UI_WeaponSelect_M1911Colt"

	EffectiveRange=50
}
