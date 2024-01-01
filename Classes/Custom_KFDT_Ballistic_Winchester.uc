class Custom_KFDT_Ballistic_Winchester extends KFDT_Ballistic_Rifle
	abstract
	hidedropdown;

static simulated function bool CanDismemberHitZone( name InHitZoneName )
{
	if( super.CanDismemberHitZone( InHitZoneName ) )
	{
		return true;
	}

	switch ( InHitZoneName )
	{
		case 'lupperarm':
		case 'rupperarm':
		return true;
	}

	return false;
}

DefaultProperties
{
	KDamageImpulse=2000
	KDeathUpKick=400
	KDeathVel=250

	KnockdownPower=20
	StunPower=20 //20
	StumblePower=0
	GunHitPower=80 //100
	MeleeHitPower=0

	ModifierPerkList(0)=class'KFPerk_Sharpshooter'
	ModifierPerkList(1)=class'KFPerk_Gunslinger'
	WeaponDef=class'KFWeapDef_Winchester1894'
}
