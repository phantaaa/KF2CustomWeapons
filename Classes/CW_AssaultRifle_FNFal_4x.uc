class CW_AssaultRifle_FNFal_4x extends KFWeap_AssaultRifle_FNFal;

var private bool bServerFiringMode;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return ItemClass == none || class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	ClientSetAltFire(CW_AssaultRifle_FNFal_4x(PickedUpWeapon).bServerFiringMode);
}

simulated function AltFireMode()
{
	super.AltFireMode();
    bServerFiringMode = bUseAltFireMode;
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

    // Content
	PackageKey="FNFAL_SS"
	ScopeLenseMICTemplate=MaterialInstanceConstant'CustomScope.WEP_1P_FNFAL_Scope_MAT'

	// Zooming/Position
	PlayerViewOffset=(X=22.0,Y=11,Z=-3.0) //(X=22.0,Y=11,Z=-3.0)
	IronSightPosition=(X=15,Y=0,Z=-0.01) //(X=7,Y=0,Z=0)

	// Inventory
	InventorySize=9

	// Recoil
	maxRecoilPitch=230 // 300
	minRecoilPitch=230 // 300
	maxRecoilYaw=140 // 150
	minRecoilYaw=0
	HippedRecoilModifier=1.4

	// DEFAULT_FIREMODE
	FireInterval(DEFAULT_FIREMODE)=+0.121
	InstantHitDamage(DEFAULT_FIREMODE)=75.0

	// ALTFIRE_FIREMODE
	FireInterval(ALTFIRE_FIREMODE)=+0.121
	InstantHitDamage(ALTFIRE_FIREMODE)=75.0

    // Other
	AssociatedPerkClasses.Empty
    AssociatedPerkClasses(0)=class'KFPerk_Sharpshooter'
}
