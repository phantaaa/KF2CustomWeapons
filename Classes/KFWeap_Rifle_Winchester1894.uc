//=============================================================================
// KFWeap_Rifle_Winchester1894
//=============================================================================
// A Model 1894 Winchester Rifle
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeap_Rifle_Winchester1894 extends KFWeap_RifleBase;

var float ReloadspeedMod;

simulated function float GetReloadRateScale()
{
	return Super.GetReloadRateScale() * ReloadspeedMod;
}

simulated event SetWeapon()
{
	super(KFWeapon).SetWeapon();
	
	if(GetPerk().class == class'KFPerk_Sharpshooter')
	{
		EquipTime = 0.25f;
		PutDownTime = 0.25f;
		ReloadspeedMod = 0.85f;
	}
}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	ReloadspeedMod = 1.0;
	
	// Inventory / Grouping
	InventorySize=4 //5
	GroupPriority=25
	WeaponSelectTexture=Texture2D'wep_ui_winchester_tex.UI_WeaponSelect_Winchester'
	AssociatedPerkClasses(0)=class'KFPerk_Sharpshooter'
	AssociatedPerkClasses(1)=class'KFPerk_Gunslinger'
	
	// FOV
	MeshFOV=65
	MeshIronSightFOV=45
	PlayerIronSightFOV=65
	
	// Depth of field
	DOF_FG_FocalRadius=50
	DOF_FG_MaxNearBlurSize=3.5
	
	// Content
	PackageKey="Winchester"
	FirstPersonMeshName="WEP_1P_Winchester_MESH.Wep_1stP_Winchester_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_Winchester_ANIM.Wep_1stP_Winchester_Anim"
	PickupMeshName="WEP_3P_Winchester_MESH.Wep_LAR1894_Pickup"
	AttachmentArchetypeName="wep_winchester_arch.Wep_Winchester_3P"
	MuzzleFlashTemplateName="wep_winchester_arch.Wep_Winchester_MuzzleFlash"
	
	// Ammo
	MagazineCapacity[0]=12
	SpareAmmoCapacity[0]=84 //84
	InitialSpareMags[0]=0 //3
	bCanBeReloaded=true
	bReloadFromMagazine=false
	
	// Zooming/Position
	PlayerViewOffset=(X=8.0,Y=7,Z=-3.5)
	IronSightPosition=(X=0,Y=0,Z=0)
	
	// AI warning system
	bWarnAIWhenAiming=true
	AimWarningDelay=(X=0.4f, Y=0.8f)
	AimWarningCooldown=0.0f
	
	// Recoil
	maxRecoilPitch=500
	minRecoilPitch=500 // 400
	maxRecoilYaw=150
	minRecoilYaw=-150
	RecoilRate=0.08
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=1250
	RecoilMinPitchLimit=64785
	RecoilISMaxYawLimit=50
	RecoilISMinYawLimit=65485
	RecoilISMaxPitchLimit=500
	RecoilISMinPitchLimit=65485
	RecoilViewRotationScale=0.6
	IronSightMeshFOVCompensationScale=1.5
	
	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_Winchester1894'
	InstantHitDamage(DEFAULT_FIREMODE)=80
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_Winchester'
	FireInterval(DEFAULT_FIREMODE)=0.4 // 150 RPM
	Spread(DEFAULT_FIREMODE)=0.007
	PenetrationPower(DEFAULT_FIREMODE)=1.5
	FireOffset=(X=25,Y=3.0,Z=-2.5)
	
	// ALT_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_None
	
	// Custom animations
	FireSightedAnims=(Shoot_Iron, Shoot_Iron2, Shoot_Iron3)
	BonesToLockOnEmpty=(RW_Hammer)
	bHasFireLastAnims=true
	
	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Winchester'
	InstantHitDamage(BASH_FIREMODE)=25
	
	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_Winchester.Play_WEP_SA_Winchester_Fire_Single_M', FirstPersonCue=AkEvent'WW_WEP_SA_Winchester.Play_WEP_SA_Winchester_Fire_Single_S')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_Winchester.Play_WEP_SA_Winchester_Handling_DryFire'
	EjectedShellForegroundDuration=1.5f
	
	// Attachments
	bHasIronSights=true
	bHasFlashlight=false
	
	WeaponFireWaveForm=ForceFeedbackWaveform'FX_ForceFeedback_ARCH.Gunfire.Medium_Recoil'
	WeaponUpgrades.Empty
}
