class CW_AssaultRifle_Thompson extends KFWeap_AssaultRifle_Thompson;

var private bool bServerFiringMode;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return ItemClass == none || class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	ClientSetAltFire(CW_AssaultRifle_Thompson(PickedUpWeapon).bServerFiringMode);
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

	// Ammo
	MagazineCapacity[0]=50
	SpareAmmoCapacity[0]=250
	InitialSpareMags[0]=0

	// Recoil
	maxRecoilPitch=110 //165
	minRecoilPitch=110 //130
	maxRecoilYaw=75 //130
	minRecoilYaw=-75 //130
	RecoilRate=0.077

	// DEFAULT_FIREMODE
	InstantHitDamage(DEFAULT_FIREMODE)=32.0 //25
	Spread(DEFAULT_FIREMODE)=0.0085 //0.0085

	// ALT_FIREMODE
	InstantHitDamage(ALTFIRE_FIREMODE)=32.0 //25
	Spread(ALTFIRE_FIREMODE)=0.0085 //0.0085

	WeaponUpgrades.Empty
}
