class CW_AssaultRifle_FNFal_4x extends KFWeap_ScopedBase;

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
	
	FireSightedAnims[0]=Shoot_Iron
	FireSightedAnims[1]=Shoot_Iron2
	FireSightedAnims[2]=Shoot_Iron3


	Begin Object Name=SceneCapture2DComponent0
		TextureTarget=TextureRenderTarget2D'Wep_Mat_Lib.WEP_ScopeLense_Target'
		FieldOfView=12.5
	End Object

	ScopedSensitivityMod = 8.0
	ScopeLenseMICTemplate =MaterialInstanceConstant'CustomScope.WEP_1P_FNFAL_Scope_MAT'
	
	// FOV
	MeshFOV=55 //60
	MeshIronSightFOV=20
	PlayerIronSightFOV=70
	
	DOF_BlendInSpeed=3.0	
	DOF_FG_FocalRadius=0//70
	DOF_FG_MaxNearBlurSize=0 //3.5

	PlayerViewOffset=(X=22.0,Y=11,Z=-3.0) //(X=22.0,Y=11,Z=-3.0)
	IronSightPosition=(X=15,Y=0,Z=-0.01) //(X=7,Y=0,Z=0)

	PackageKey="FNFAL"
	FirstPersonMeshName="WEP_1P_FNFAL_MESH.WEP_1stP_FNFAL_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_FNFAL_ANIM.Wep_1stP_FNFAL_Anim"
	PickupMeshName="WEP_3P_FNFAL_MESH.WEP_3rdP_FNFAL_Pickup"
	AttachmentArchetypeName="WEP_FNFAL_ARCH.Wep_FNFAL_3P"
	MuzzleFlashTemplateName="WEP_FNFAL_ARCH.Wep_FNFAL_MuzzleFlash" //NEED To REPLACE

	bWarnAIWhenAiming=true
	AimWarningDelay=(X=0.4f, Y=0.8f)
	AimWarningCooldown=0.0f

	MagazineCapacity[0]=20
	SpareAmmoCapacity[0]=160
	InitialSpareMags[0]=0//3
	bCanBeReloaded=true
	bReloadFromMagazine=true
	
	// Zooming/Position
	PlayerViewOffset=(X=22.0,Y=11,Z=-3.0) //(X=22.0,Y=11,Z=-3.0)
	IronSightPosition=(X=15,Y=0,Z=-0.01) //(X=7,Y=0,Z=0)
	
	// Inventory
	InventorySize=9
	GroupPriority=100
	WeaponSelectTexture=Texture2D'WEP_UI_FNFAL_TEX.UI_WeaponSelect_FNFAL'
	
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
	
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_FNFAl'
	InstantHitDamage(BASH_FIREMODE)=26

	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_3P_Loop', FirstPersonCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_1P_Loop')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_1P_Single')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_DryFire'

	bLoopingFireAnim(DEFAULT_FIREMODE)=true
	bLoopingFireSnd(DEFAULT_FIREMODE)=true
	WeaponFireLoopEndSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_3P_EndLoop', FirstPersonCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_1P_EndLoop')
	SingleFireSoundIndex=ALTFIRE_FIREMODE

	bHasIronSights=true
	bHasFlashlight=false

	AssociatedPerkClasses(0)=class'KFPerk_Sharpshooter'
}
