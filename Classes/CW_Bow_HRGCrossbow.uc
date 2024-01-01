class CW_Bow_HRGCrossbow extends KFWeap_ScopedBase; 

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

simulated function AltFireMode()
{
	if (!Instigator.IsLocallyControlled())
	{
		return;
	}
	StartFire(ALTFIRE_FIREMODE);
}

simulated function StartFire(byte FireModeNum)
{
	super(KFWeap_ScopedBase).StartFire(FireModeNum);
}

simulated function bool HasAnyAmmo()
{
	if (HasSpareAmmo() || HasAmmo(DEFAULT_FIREMODE))
	{
		return true;
	}

	return false;
}

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'

	// Inventory
	InventorySize=6 //7
	GroupPriority=50
	WeaponSelectTexture=Texture2D'WEP_UI_Crossbow_TEX.UI_WeaponSelect_Crossbow'
	SecondaryAmmoTexture=Texture2D'UI_SecondaryAmmo_TEX.MedicDarts'

   //Perk
	AssociatedPerkClasses.Empty
	AssociatedPerkClasses(0)=class'KFPerk_FieldMedic'

	// FOV / Position
	MeshFOV=70
	MeshIronSightFOV=52
	PlayerIronSightFOV=70
	PlayerViewOffset=(X=1,Y=8,Z=-5)
	IronSightPosition=(X=-8,Y=0,Z=0) // -13

	// AI warning system
	bWarnAIWhenAiming=true
	MaxAIWarningDistSQ=4000000
	AimWarningDelay=(X=0.4f, Y=0.8f)
	AimWarningCooldown=0.0f

    // 2D scene capture
	Begin Object Name=SceneCapture2DComponent0
		TextureTarget=TextureRenderTarget2D'Wep_Mat_Lib.WEP_ScopeLense_Target'
		FieldOfView=18.5 // "2.0X" = 37(our real world FOV determinant)/2.0
	End Object

	ScopedSensitivityMod=12.0

	ScopeLenseMICTemplate=MaterialInstanceConstant'WEP_1P_Crossbow_MAT.WEP_1P_Crossbow_Scope_MAT'

	// Depth of field
	DOF_BlendInSpeed=3.0
	DOF_FG_FocalRadius=0.0
	DOF_FG_MaxNearBlurSize=0//3.5

	// Content
	PackageKey="Crossbow"
	FirstPersonMeshName="WEP_1P_Crossbow_MESH.Wep_1stP_Crossbow_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_Crossbow_ANIM.Wep_1stP_Crossbow_Anim"
	PickupMeshName="WEP_3P_Crossbow_MESH.Wep_Crossbow_Pickup"
	AttachmentArchetypeName="WEP_Crossbow_ARCH.Wep_Crossbow_3P"
	MuzzleFlashTemplateName="WEP_Crossbow_ARCH.Wep_Crossbow_MuzzleFlash"

	MagazineCapacity[0]=1
	SpareAmmoCapacity[0]=14 //39
	InitialSpareMags[0]=0 // 14
	bCanBeReloaded=true
	bReloadFromMagazine=true
	AmmoPickupScale[0]=3.0
	MagazineCapacity[1]=100
	bCanRefillSecondaryAmmo=false
	bNoMagazine=true

	// Recoil
	maxRecoilPitch=200
	minRecoilPitch=200 //150
	maxRecoilYaw=100
	minRecoilYaw=-100
	RecoilRate=0.06
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=64785
	RecoilISMaxYawLimit=50
	RecoilISMinYawLimit=65485
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFireAndReload
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_Projectile
	WeaponProjectiles(DEFAULT_FIREMODE)=class'Custom_KFProj_Bolt_Crossbow'
	InstantHitDamage(DEFAULT_FIREMODE)= 350 //420 //default = 350
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Piercing_Crossbow'
	PenetrationPower(DEFAULT_FIREMODE)=4.0
	FireInterval(DEFAULT_FIREMODE)=0.1 // For this weapon, this is not the fire rate, but the time when the auto reload anim kicks in
	Spread(DEFAULT_FIREMODE)=0.f //0.007
	FireOffset=(X=25,Y=3.0,Z=-4.0)

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_MedicDart'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'Custom_KFProj_HealBolt_Crossbow'
	FireInterval(ALTFIRE_FIREMODE)=+0.175
	InstantHitDamage(ALTFIRE_FIREMODE)=50
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'Custom_KFDT_Piercing_Healing_Crossbow'
	Spread(ALTFIRE_FIREMODE)=0.f //0.005
	PenetrationPower(ALTFIRE_FIREMODE)=3.0
	AmmoCost(ALTFIRE_FIREMODE)=50

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_Crossbow.Play_WEP_SA_Crossbow_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_Crossbow.Play_WEP_SA_Crossbow_Fire_1P')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_Crossbow.Play_WEP_SA_Crossbow_DryFire'

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Crossbow'
	InstantHitDamage(BASH_FIREMODE)=26

	TargetingCompClass=class'KFTargetingWeaponComponent_HRGIncision'
	MedicCompClass=class'Custom_KFMedicWeaponComponent_HRGIncision'

	Custom animations
	FireSightedAnims=(Shoot_Iron, Shoot_Iron2, Shoot_Iron3)
	BonesToLockOnEmpty=(RW_Cable_Parent)

	// Attachments
	bHasIronSights=true
	bHasFlashlight=false

	// Just like the launchers, this weapon has mag size of 1 and force reload which
	// causes significant ammo sync issues.  This fix is far from perfect, but it helps.
	bAllowClientAmmoTracking=true
}
