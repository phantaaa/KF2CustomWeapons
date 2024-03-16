class Preview_KFWeapDef_CenterfireMB464 extends KFWeapDef_CenterfireMB464 abstract;

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
	WeaponClassPath="CustomWeapons.Preview_CW_Rifle_CenterfireMB464"
}
