class CW_AssaultRifle_AK12 extends KFWeap_AssaultRifle_AK12;

var private bool bServerFiringMode;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return ItemClass == none || class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	ClientSetAltFire(CW_AssaultRifle_AK12(PickedUpWeapon).bServerFiringMode);
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
	InitialSpareMags[0]=0

	// Recoil
	maxRecoilPitch=200
	minRecoilPitch=200 //150

	// Inventory / Grouping
	InventorySize=7

	// Damage
	InstantHitDamage(DEFAULT_FIREMODE)=46.0 //40
	InstantHitDamage(ALTFIRE_FIREMODE)=46.0 //40

	WeaponUpgrades.Empty
}
