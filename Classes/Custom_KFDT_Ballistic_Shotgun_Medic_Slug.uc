class Custom_KFDT_Ballistic_Shotgun_Medic_Slug extends KFDT_Ballistic_Shotgun
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
	case 'chest':
	case 'heart':
		return true;
	}
	
	return false;
}

/** Called when damage is dealt to apply additional damage type (e.g. Damage Over Time) */
static function ApplySecondaryDamage( KFPawn Victim, int DamageTaken, optional Controller InstigatedBy )
{
	local class<KFDamageType> ToxicDT;
	
	ToxicDT = class'KFDT_Ballistic_Assault_Medic'.static.GetMedicToxicDmgType( DamageTaken, InstigatedBy );
	if ( ToxicDT != None )
	{
		Victim.ApplyDamageOverTime(DamageTaken, InstigatedBy, ToxicDT);
	}
}

DefaultProperties
{
	BloodSpread=0.4
	BloodScale=0.6
	
	KDamageImpulse=900
	KDeathUpKick=-500
	KDeathVel=350
	
	StunPower=8
	KnockdownPower=0
	StumblePower=20 //13
	GunHitPower=45 // 45
	
	WeaponDef=class'KFWeapDef_MedicShotgun_Slug'
	ModifierPerkList(0)=class'KFPerk_FieldMedic'
}
