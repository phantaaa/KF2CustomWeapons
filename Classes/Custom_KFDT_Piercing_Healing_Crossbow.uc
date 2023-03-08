class Custom_KFDT_Piercing_Healing_Crossbow extends KFDT_Piercing
	abstract
	hidedropdown;

DefaultProperties
{
	KDamageImpulse=500
	KDeathUpKick=125
	KDeathVel=75

	KnockdownPower=20
	StunPower=1 //90
	StumblePower=1
	GunHitPower=50
	MeleeHitPower=40

	ModifierPerkList(0)=class'KFPerk_FieldMedic'
	WeaponDef=class'CustomWeapons.KFWeapDef_HRGCrossbow'
}
