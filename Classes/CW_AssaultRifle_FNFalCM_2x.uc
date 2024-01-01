class CW_AssaultRifle_FNFalCM_2x extends KFWeap_RifleBase;

var private bool bIsAltFire;

simulated event SetWeapon()
{
	if(!class'CustomWeaponsMutator'.static.RemovedDuplicateWeapon(Inventory,self))
	{
		super.SetWeapon();
	}
}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

function SetOriginalValuesFromPickup(KFWeapon PickedUpWeapon)
{
	super.SetOriginalValuesFromPickup(PickedUpWeapon);
	ClientSetAltFire(CW_AssaultRifle_FNFalCM_2x(PickedUpWeapon).bIsAltFire); // this is server value
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
	// FOV
	MeshFOV=55 //60
	MeshIronSightFOV=20
	PlayerIronSightFOV=70

	// Depth of field
	DOF_BlendInSpeed=3.0
	DOF_FG_FocalRadius=0//70
	DOF_FG_MaxNearBlurSize=3.5

	// Zooming/Position
	IronSightPosition=(X=12,Y=-0.04,Z=1.33) //(X=15,Y=0,Z=0)
	PlayerViewOffset=(X=22.0,Y=11,Z=-3.0)

	// Ammo
	MagazineCapacity[0]=20
	SpareAmmoCapacity[0]=280 //160

	// Inventory
	InventorySize=7 //8
	GroupPriority=100

	// DEFAULT_FIREMODE
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Ballistic_FNFal' //fal
	FireInterval(DEFAULT_FIREMODE)=+0.0857 //700 RPM
	InstantHitDamage(DEFAULT_FIREMODE)=60.0 //62
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	Spread(DEFAULT_FIREMODE)=0.007

	// ALTFIRE_FIREMODE
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'Custom_KFDT_Ballistic_FNFal' //fal
	FireInterval(ALTFIRE_FIREMODE)=+0.0857 //700 RPM
	InstantHitDamage(ALTFIRE_FIREMODE)=60.0 //62
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	Spread(ALTFIRE_FIREMODE)=0.007

	WeaponSelectTexture=Texture2D'WEP_UI_FNFAL_TEX.UI_WeaponSelect_FNFAL'
	InitialSpareMags[0]=0
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	maxRecoilPitch=175
	minRecoilPitch=175 // 125
	maxRecoilYaw=165
	minRecoilYaw=-145
	RecoilRate=0.09
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=75
	RecoilISMinYawLimit=65460
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	IronSightMeshFOVCompensationScale=4.0

	// Shooting Animations
	FireSightedAnims[0]=Shoot_Iron
	FireSightedAnims[1]=Shoot_Iron2
	FireSightedAnims[2]=Shoot_Iron3

	// Content
	PackageKey="FNFAL"
	FirstPersonMeshName="FNFAL_CM_MESH_2x.WEP_1stP_FNFAL_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_FNFAL_ANIM.Wep_1stP_FNFAL_Anim"
	PickupMeshName="WEP_3P_FNFAL_MESH.WEP_3rdP_FNFAL_Pickup"
	AttachmentArchetypeName="WEP_FNFAL_ARCH.Wep_FNFAL_3P"
	MuzzleFlashTemplateName="WEP_FNFAL_ARCH.Wep_FNFAL_MuzzleFlash" //NEED To REPLACE
	
	// default to alt fire mode
	bUseAltFireMode=false
	FireOffset=(X=30,Y=4.5,Z=-5)

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_FNFAl'
	InstantHitDamage(BASH_FIREMODE)=26

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_3P_Loop', FirstPersonCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_1P_Loop')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_1P_Single')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_DryFire'

	// Advanced (High RPM) Fire Effects
	bLoopingFireAnim(DEFAULT_FIREMODE)=true
	bLoopingFireSnd(DEFAULT_FIREMODE)=true
	WeaponFireLoopEndSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_3P_EndLoop', FirstPersonCue=AkEvent'WW_WEP_FNFAL.Play_WEP_FNFAL_Fire_1P_EndLoop')
	SingleFireSoundIndex=ALTFIRE_FIREMODE

	// Attachments
	bHasIronSights=true
	bHasFlashlight=false
	AssociatedPerkClasses(0)=class'KFPerk_Commando'
}
