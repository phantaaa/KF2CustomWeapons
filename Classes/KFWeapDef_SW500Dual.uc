class KFWeapDef_SW500Dual extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
  return Localize("KFWeap_Revolver_DualSW500", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
  if(KeyName == "ItemName")
  {
    return GetItemName();
  }
  return Localize("KFWeap_Revolver_DualSW500", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
  return Localize("KFWeap_Revolver_DualSW500", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return "*Stumble power: 60 -> 50";
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Revolver_DualSW500"

	BuyPrice=1700
	AmmoPricePerMag=50
	ImagePath="WEP_UI_Dual_SW_500_TEX.UI_WeaponSelect_DualSW500"

	EffectiveRange=50
}
