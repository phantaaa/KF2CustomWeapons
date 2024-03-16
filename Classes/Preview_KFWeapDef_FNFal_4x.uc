class Preview_KFWeapDef_FNFal_4x extends KFWeapDef_FNFal_4x abstract;

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
	WeaponClassPath="CustomWeapons.Preview_CW_AssaultRifle_FNFal_4x"
}
