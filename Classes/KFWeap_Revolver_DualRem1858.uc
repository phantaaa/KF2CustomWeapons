//=============================================================================
// KFWeap_Revolver_DualRem1858
//=============================================================================
// A set of Remington 1858 revolvers
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
// Jeff Robinson
//=============================================================================

class KFWeap_Revolver_DualRem1858 extends KFWeap_DualBase;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return ItemClass == none || ItemClass == SingleClass || class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	// CW pickup class override
	DroppedPickupClass=class'CW_DroppedPickup'
	// Content
	PackageKey="DualRemington1858"
	FirstPersonMeshName="WEP_1P_DualRemington1858_MESH.Wep_1stP_DualRemington1858_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_DualRemington1858_Anim.WEP_1P_DualRemington1858_Anim"
	PickupMeshName="WEP_3P_DualRemington1858_MESH.Wep_3P_Remington_1858_Pickup"
	AttachmentArchetypeName="WEP_DualRemington1858_ARCH.Wep_DualRemington1858_3P"
	MuzzleFlashTemplateName="WEP_DualRemington1858_ARCH.Wep_DualRemington1858_MuzzleFlash"
	
	Begin Object Name=FirstPersonMesh
		// new anim tree with skelcontrol to rotate cylinders
		AnimTreeTemplate=AnimTree'CHR_1P_Arms_ARCH.WEP_1stP_Dual_Animtree_Master_Revolver'
	End Object
	
	FireOffset=(X=17,Y=4.0,Z=-2.25)
	LeftFireOffset=(X=17,Y=-4,Z=-2.25)
	
	// Zooming/Position
	IronSightPosition=(X=4,Y=0,Z=0)
	PlayerViewOffset=(X=23,Y=0,Z=-1)
	QuickWeaponDownRotation=(Pitch=-8192,Yaw=0,Roll=0)
	
	bCanThrow=true
	bDropOnDeath=true
	
	SingleClass=class'CustomWeapons.KFWeap_Revolver_Rem1858'
	
	// FOV
	MeshFOV=60
	MeshIronSightFOV=55
	PlayerIronSightFOV=77
	
	// Depth of field
	DOF_FG_FocalRadius=40
	DOF_FG_MaxNearBlurSize=3.5
	
	// Ammo
	MagazineCapacity[0]=12 // twice as much as single
	SpareAmmoCapacity[0]=144
	InitialSpareMags[0]=0
	AmmoPickupScale[0]=1.0
	bCanBeReloaded=true
	bReloadFromMagazine=true
	
	// Recoil
	maxRecoilPitch=400
	minRecoilPitch=400 //350
	maxRecoilYaw=125
	minRecoilYaw=-125
	RecoilRate=0.08
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=50
	RecoilISMinYawLimit=65485
	RecoilISMaxPitchLimit=400
	RecoilISMinPitchLimit=65485
	RecoilBlendOutRatio=0.75
	IronSightMeshFOVCompensationScale=1.5
	
	// DEFAULT_FIREMODE
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_RevolverRem1858'
	FireInterval(DEFAULT_FIREMODE)=+0.11 // about twice as fast as single
	InstantHitDamage(DEFAULT_FIREMODE)=50.0 //50
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_Rem1858_Dual'
	Spread(DEFAULT_FIREMODE)=0.015
	
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	
	// ALTFIRE_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_RevolverRem1858'
	FireInterval(ALTFIRE_FIREMODE)=+0.11 // about twice as fast as single
	InstantHitDamage(ALTFIRE_FIREMODE)=50.0 //50
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_Rem1858_Dual'
	Spread(ALTFIRE_FIREMODE)=0.015
	
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	
	// BASH_FIREMODE
	InstantHitDamage(BASH_FIREMODE)=24.0
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Rem1858'
	
	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_1858.Play_WEP_SA_1858_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_1858.Play_WEP_SA_1858_Fire_1P')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_1858.Play_WEP_SA_1858_Fire_DryFire'
	
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_1858.Play_WEP_SA_1858_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_1858.Play_WEP_SA_1858_Fire_1P')
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_1858.Play_WEP_SA_1858_Fire_DryFire'
	
	// Attachments
	bHasIronSights=true
	bHasFlashlight=true
	
	// Inventory
	InventorySize=4
	GroupPriority=35
	WeaponSelectTexture=Texture2D'WEP_UI_DualRemington1858_TEX.UI_WeaponSelect_DualRemington'
	bIsBackupWeapon=false
	AssociatedPerkClasses(0)=class'KFPerk_Gunslinger'
	
	// Custom anims
	IdleFidgetAnims=(Guncheck_v1, Guncheck_v2, Guncheck_v3, Guncheck_v4)
	
	bHasFireLastAnims=true
	BonesToLockOnEmpty=(RW_Hammer)
	BonesToLockOnEmpty_L=(LW_Hammer)
	
	// Revolver
	bRevolver=true
	CylinderRotInfo=(Inc=-60.0, Time=0.0875/*about 0.35 in the anim divided by ratescale of 4*/)
	CylinderRotInfo_L=(Inc=-60.0, Time=0.0875/*about 0.35 in the anim divided by ratescale of 4*/)
	
	// Revolver shell/cap replacement
	UnusedBulletMeshTemplate=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
	UsedBulletMeshTemplate=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_UsedCap'
	BulletFXSocketNames=(RW_Bullet_FX_6, LW_Bullet_FX_6, RW_Bullet_FX_5, LW_Bullet_FX_5, RW_Bullet_FX_4, LW_Bullet_FX_4, RW_Bullet_FX_3, LW_Bullet_FX_3, RW_Bullet_FX_2, LW_Bullet_FX_2, RW_Bullet_FX_1, LW_Bullet_FX_1)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp0
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp0)
	BulletMeshComponents.Add(BulletMeshComp0)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp0_L
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp0_L)
	BulletMeshComponents.Add(BulletMeshComp0_L)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp1
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp1)
	BulletMeshComponents.Add(BulletMeshComp1)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp1_L
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp1_L)
	BulletMeshComponents.Add(BulletMeshComp1_L)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp2
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp2)
	BulletMeshComponents.Add(BulletMeshComp2)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp2_L
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp2_L)
	BulletMeshComponents.Add(BulletMeshComp2_L)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp3
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp3)
	BulletMeshComponents.Add(BulletMeshComp3)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp3_L
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp3_L)
	BulletMeshComponents.Add(BulletMeshComp3_L)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp4
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp4)
	BulletMeshComponents.Add(BulletMeshComp4)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp4_L
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp4_L)
	BulletMeshComponents.Add(BulletMeshComp4_L)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp5
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp5)
	BulletMeshComponents.Add(BulletMeshComp5)
	
	Begin Object Class=KFSkeletalMeshComponent Name=BulletMeshComp5_L
		SkeletalMesh=SkeletalMesh'WEP_1P_Remington_1858_MESH.Wep_1stP_Remington_1858_NewCap'
		CollideActors=false
		BlockActors=false
		BlockZeroExtent=false
		BlockNonZeroExtent=false
		BlockRigidBody=false
		bAcceptsStaticDecals=false
		bAcceptsDecals=false
		CastShadow=false
		bUseAsOccluder=false
		DepthPriorityGroup=SDPG_Foreground // First person only
	End Object
	Components.Add(BulletMeshComp5_L)
	BulletMeshComponents.Add(BulletMeshComp5_L)
	
	WeaponUpgrades.Empty
}
