class Custom_KFDT_Ballistic_SW500 extends KFDT_Ballistic_Handgun
	abstract
	hidedropdown;

/** Allows the damage type to customize exactly which hit zones it can dismember */
static simulated function bool CanDismemberHitZone( name InHitZoneName )
{
    switch ( InHitZoneName )
	{
		case 'lupperarm':
		case 'rupperarm':
		case 'chest':
		case 'heart':
		case 'lcalf':
		case 'rcalf':
		case 'lthigh':
		case 'rthigh':
	 		return true;
	}

	return false;
}

DefaultProperties
{
	GoreDamageGroup=DGT_Shotgun

	KDamageImpulse=4500
	KDeathUpKick=-700
	KDeathVel=350

   	KnockdownPower=25
	StumblePower=50 //60
	GunHitPower=200

	WeaponDef=class'CustomWeapons.KFWeapDef_SW500'
	ModifierPerkList(0)=class'KFPerk_Gunslinger'
	ModifierPerkList(1)=class'KFPerk_Sharpshooter'
}
