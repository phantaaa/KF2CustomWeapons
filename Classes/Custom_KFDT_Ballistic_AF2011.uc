class Custom_KFDT_Ballistic_AF2011 extends KFDT_Ballistic_Handgun
	abstract
	hidedropdown;

/** Allows the damage type to customize exactly which hit zones it can dismember */
static simulated function bool CanDismemberHitZone( name InHitZoneName )
{
	if(super.CanDismemberHitZone(InHitZoneName))
	{
		return true;
	}
	switch ( InHitZoneName )
	{
		case 'lupperarm':
		case 'rupperarm':
		case 'chest':
		case 'heart':
		return true;
	}
	return false;
}

DefaultProperties
{
	KDamageImpulse=1500
	KDeathUpKick=-450  
	KDeathVel=200     

	KnockdownPower=0 //15 
	StumblePower=20 
	GunHitPower=100 

	WeaponDef=class'CustomWeapons.KFWeapDef_AF2011'
	ModifierPerkList(0)=class'KFPerk_Gunslinger'
}
