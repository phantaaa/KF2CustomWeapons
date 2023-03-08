class Custom_KFDT_Piercing_Crossbow extends KFDT_Piercing
	abstract
	hidedropdown;

DefaultProperties
{
	KDamageImpulse=1500
	KDeathUpKick=250
	KDeathVel=150

	KnockdownPower=20
	StunPower=101 //90
	StumblePower=250
	GunHitPower=100
	MeleeHitPower=40

	ModifierPerkList(0)=class'KFPerk_FieldMedic'
	WeaponDef=class'CustomWeapons.KFWeapDef_HRGCrossbow'
}
