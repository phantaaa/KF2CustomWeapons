class KFWeapDef_AF2011Dual extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_Pistol_DualAF2011", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_Pistol_DualAF2011", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_Pistol_DualAF2011", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return "*Empty reload speed: 1.00 -> 1.30 (30\% \slower)" $
	"\n*Tac reload speed: 1.00 -> 0.8 (20\% faster)" $
	"\n*KnockdownPower: 15 -> 0" $
	"\n*VerticalRecoil: 550-650 -> 650-650 (min-max)" $
	"\n*HorizontalRecoil: -550 to 500 -> -225 to 225 (left to right)";
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_Pistol_DualAF2011"
	BuyPrice=1700 // 1500
	AmmoPricePerMag=48
	ImagePath="WEP_UI_AF2001_TEX.UI_WeaponSelect_DualAF2011"
	EffectiveRange=50
}
