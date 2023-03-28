class CW_AssaultRifle_FNFal_4x extends KFWeap_AssaultRifle_FNFal;

const ReloadSpeedMultiplier = 0.9f;
var private bool bIsAltFire;

simulated function float GetReloadRateScale()
{
	return Super.GetReloadRateScale() * ReloadSpeedMultiplier;
}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(itemclass).default.PackageKey == self.PackageKey;
}

function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	ClientSetAltFire(CW_AssaultRifle_FNFal_4x(PickedUpWeapon).bIsAltFire);
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
	
	ScopeLenseMICTemplate =MaterialInstanceConstant'CustomScope.WEP_1P_FNFAL_Scope_MAT'
	
	// FOV
	MeshFOV=55 //60
	MeshIronSightFOV=20
	PlayerIronSightFOV=70
	
	// Zooming/Position
	PlayerViewOffset=(X=22.0,Y=11,Z=-3.0) //(X=22.0,Y=11,Z=-3.0)
	IronSightPosition=(X=15,Y=0,Z=-0.01) //(X=7,Y=0,Z=0)
	
	// Inventory
	InventorySize=9
	GroupPriority=100
	
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=240 // 300
	minRecoilPitch=240 // 300
	maxRecoilYaw=150 // 150
	minRecoilYaw=0
	RecoilRate=0.09
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=150
	RecoilISMinYawLimit=65385
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	RecoilViewRotationScale=0.6
	HippedRecoilModifier=1.4
	
	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_FNFal'
	FireInterval(DEFAULT_FIREMODE)=+0.121
	PenetrationPower(DEFAULT_FIREMODE)=2.0
	InstantHitDamage(DEFAULT_FIREMODE)=75.0
	Spread(DEFAULT_FIREMODE)=0.007
	
	// ALTFIRE_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_FNFal'
	FireInterval(ALTFIRE_FIREMODE)=+0.121
	PenetrationPower(ALTFIRE_FIREMODE)=2.0
	InstantHitDamage(ALTFIRE_FIREMODE)=75.0
	Spread(ALTFIRE_FIREMODE)=0.007
	
	// default to alt fire mode
	bUseAltFireMode=true
	
	FireOffset=(X=30,Y=4.5,Z=-5)
	
	AssociatedPerkClasses.Empty
	AssociatedPerkClasses(0)=class'KFPerk_Sharpshooter'
	
	WeaponUpgrades.Empty
}
