class CW_AssaultRifle_MKB42 extends KFWeap_AssaultRifle_MKB42;

var private bool bIsAltFire;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(itemclass).default.PackageKey == self.PackageKey;
}

function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	ClientSetAltFire(CW_AssaultRifle_MKB42(PickedUpWeapon).bIsAltFire); // this is server value
}

simulated function AltFireMode()
{
	super.AltFireMode();
	ServerSetAltFire(bUseAltFireMode);
}

reliable server function ServerSetAltFire(bool bAltFire)
{
	bIsAltFire = bAltFire;
}

reliable client function ClientSetAltFire(bool bAltFire)
{
	bUseAltFireMode = bAltFire;
}

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	
	// Ammo
	SpareAmmoCapacity[0]=300
	InitialSpareMags[0]=0

	// Recoil
	maxRecoilPitch=150 
	minRecoilPitch=150  //100 
	maxRecoilYaw=145 //224
	minRecoilYaw=-145 //-224
	RecoilRate=0.10 
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=75
	RecoilISMinYawLimit=65460
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	IronSightMeshFOVCompensationScale=1.5

	// Inventory / Grouping
	InventorySize=6 //7

	// DEFAULT_FIREMODE
	FireInterval(DEFAULT_FIREMODE)=+0.1034 // 580 RPM
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_MKB42'
	Spread(DEFAULT_FIREMODE)=0.0085
	InstantHitDamage(DEFAULT_FIREMODE)=56.0 //50.0 //914 dps - FAL 1085DPS - scar 984dps
	FireOffset=(X=32,Y=4.0,Z=-5)

	// ALT_FIREMODE
	FireInterval(ALTFIRE_FIREMODE)=+0.1034 // 580 RPM
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_MKB42'
	InstantHitDamage(ALTFIRE_FIREMODE)=56.0 //50.0 // 914dps
	Spread(ALTFIRE_FIREMODE)=0.0085
	
	WeaponUpgrades.Empty
}
