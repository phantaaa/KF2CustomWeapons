class CW_AssaultRifle_SCAR extends KFWeap_AssaultRifle_SCAR;

var private bool bIsAltFire;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	ClientSetAltFire(CW_AssaultRifle_SCAR(PickedUpWeapon).bIsAltFire);
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
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=150
	minRecoilPitch=150 // 125
	
	// DEFAULT_FIREMODE
	FireInterval(DEFAULT_FIREMODE)=+0.096 // 625 RPM
	InstantHitDamage(DEFAULT_FIREMODE)=55.0 //57
	
	// ALT_FIREMODE
	FireInterval(ALTFIRE_FIREMODE)=+0.096 // 625 RPM
	InstantHitDamage(ALTFIRE_FIREMODE)=55.0 //57
	
	WeaponUpgrades.Empty
}
