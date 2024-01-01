class KFWeapDef_9mmDual extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_Pistol_Dual9mm", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Pistol_Dual9mm", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Pistol_Dual9mm", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return Localize("KFWeap_Pistol_Dual9mm", "ItemDescription", "KFGameContent");
}

DefaultProperties
{
	WeaponClassPath="KFGameContent.KFWeap_Pistol_Dual9mm"
	
	BuyPrice=300
	AmmoPricePerMag=24 //16
	ImagePath="WEP_UI_Dual_9MM_TEX.UI_WeaponSelect_Dual9mm"
	
	EffectiveRange=50
}
