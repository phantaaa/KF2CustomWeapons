class CW_Shotgun_Medic_Slug extends CW_Shotgun_Medic;

DefaultProperties
{
	// Damage 
	InstantHitDamage(DEFAULT_FIREMODE)=43.0 //25
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Ballistic_Shotgun_Medic_Slug'

	// Fire mode specifics
	PenetrationPower(DEFAULT_FIREMODE)=8.0
	FireInterval(DEFAULT_FIREMODE)=0.2 //0.2 300 RPM
	Spread(DEFAULT_FIREMODE)=0.0
	NumPellets(DEFAULT_FIREMODE)=3
	
	// Ammo
	MagazineCapacity[0]=10
	SpareAmmoCapacity[0]=90
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=400
	minRecoilPitch=400
	maxRecoilYaw=250
	minRecoilYaw=-250
	RecoilRate=0.075
	RecoilBlendOutRatio=0.25
}
