class CW_AssaultRifle_Bullpup extends KFWeap_AssaultRifle_Bullpup;

var private bool bServerFiringMode;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return ItemClass == none || class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	ClientSetAltFire(CW_AssaultRifle_Bullpup(PickedUpWeapon).bServerFiringMode);
}

simulated function AltFireMode()
{
	super.AltFireMode();
	ServerSetAltFire(bUseAltFireMode);
}

reliable server function ServerSetAltFire(bool bAltFire)
{
	bServerFiringMode = bAltFire;
}

reliable client function ClientSetAltFire(bool bAltFire)
{
	bUseAltFireMode = bAltFire;
}

DefaultProperties
{
	// CW pickup class override
	DroppedPickupClass=class'CW_DroppedPickup'

	//Ammo
	InitialSpareMags[0]=0

	// Recoil
	maxRecoilPitch=115 //150
	minRecoilPitch=115 //115
	maxRecoilYaw=90 //115
	minRecoilYaw=-90 // -115
	RecoilRate=0.070 // 0.085

	// DEFAULT_FIREMODE
	InstantHitDamage(DEFAULT_FIREMODE)=33.0 // vanilla -25// 30
	Spread(DEFAULT_FIREMODE)=0.0065

	// ALT_FIREMODE
	InstantHitDamage(ALTFIRE_FIREMODE)=33.0 //25
	Spread(ALTFIRE_FIREMODE)=0.0065

	WeaponUpgrades.Empty
}
