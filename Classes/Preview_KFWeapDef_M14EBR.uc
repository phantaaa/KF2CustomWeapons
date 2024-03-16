class Preview_KFWeapDef_M14EBR extends KFWeapDef_M14EBR abstract;

static function string GetItemName()
{
	return super.GetItemName() $ " - Preview";
}

static function string GetItemDescription()
{
	return "=== PREVIEW WEAPON === \n" $ super.GetItemDescription() ;
}

DefaultProperties
{
	WeaponClassPath="CustomWeapons.Preview_CW_Rifle_M14EBR"
}
