class CW_AssaultRifle_Bullpup extends KFWeap_AssaultRifle_Bullpup;

var private bool bIsAltFire;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(itemclass).default.PackageKey == self.PackageKey;
}

function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	ClientSetAltFire(CW_AssaultRifle_Bullpup(PickedUpWeapon).bIsAltFire); // this is server value
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

	//Ammo
	InitialSpareMags[0]=0

	// Recoil
	maxRecoilPitch=115 //150
	minRecoilPitch=115 //115
	maxRecoilYaw=90 //115
	minRecoilYaw=-90 // -115
	RecoilRate=0.070 // 0.085

	// DEFAULT_FIREMODE
	FireInterval(DEFAULT_FIREMODE)= 0.08571 //700   // +0.0909  660 RPM
	Spread(DEFAULT_FIREMODE)=0.0065
	InstantHitDamage(DEFAULT_FIREMODE)=33.0 // vanilla -25// 30

	// ALT_FIREMODE
	FireInterval(ALTFIRE_FIREMODE)= 0.08571 
	InstantHitDamage(ALTFIRE_FIREMODE)=33.0 //25
	Spread(ALTFIRE_FIREMODE)=0.0065

	WeaponUpgrades.Empty
}
