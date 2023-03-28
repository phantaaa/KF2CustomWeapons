class KFWeapDef_MedicSMG2 extends KFWeaponDefinition
abstract;

static function string GetItemName()
{
	return Localize("KFWeap_SMG_Medic", "ItemName", "KFGameContent");
}

static function string GetItemLocalization(string KeyName)
{
	if(KeyName == "ItemName")
	{
		return GetItemName();
	}
	return Localize("KFWeap_SMG_Medic", KeyName, "KFGameContent");
}

static function string GetItemCategory()
{
	return Localize("KFWeap_SMG_Medic", "ItemCategory", "KFGameContent");
}

static function string GetItemDescription()
{
	return "*HealAmount: 15 -> 10" $
	"\n*HealCost: 40 -> 25" $
	"\n*Inventory slot: Primary -> Secondary" $
	"\n*Weapon equip time: 0.45 -> 0.20" $
	"\n*Alt fire will now shoot 2 darts";
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.CW_SMG_Medic2"
	
	BuyPrice=650
	AmmoPricePerMag=21
	ImagePath="ui_weaponselect_tex.UI_WeaponSelect_MedicSMG"
	
	EffectiveRange=70
}
