class CW_Pistol_DualAF2011 extends KFWeap_Pistol_DualAF2011;

var vector BarrelOffset;

simulated event SetWeapon()
{
	super.SetWeapon();
	SetTimer(0.5f, false, nameof(CheckUneven));
}

simulated function CheckUneven()
{
	if((AmmoCount[0] & 1) != 0)
	{
		AmmoCount[0] = AmmoCount[0] - 1;
	}
	else if((AmmoCount[1] & 1) != 0)
	{
		AmmoCount[1] = AmmoCount[1] - 1;
	}
}

simulated function float GetReloadRateScale()
{
	if(AmmoCount[0] <= 0)
	{
		return Super.GetReloadRateScale() * 1.30f; // EMPTY
	}

	return Super.GetReloadRateScale() * 0.8f; // TAC RELOAD
}

simulated function InstantFireClient()
{
    super(KFWeap_DualBase).InstantFireClient();
    super(KFWeap_DualBase).InstantFireClient();
}

function HandleWeaponShotTaken( byte FireMode )
{
	if( KFPlayer != None )
	{
		if (FireMode == ALTFIRE_FIREMODE || FireMode == DEFAULT_FIREMODE )
		{
			KFPlayer.AddShotsFired(2);
		}
    else
		{
			KFPlayer.AddShotsFired(GetNumProjectilesToFire(FireMode));
		}
	}
}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
    return ItemClass == SingleClass || ItemClass == self.class;
}

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	SingleClass=class'CustomWeapons.CW_Pistol_AF2011'
	
	// Inventory
	GroupPriority=50 //45

	BarrelOffset=(X=2.0,Y=0,Z=0) //(X=10.0,Y=0,Z=0) 10cm barrel offset? according to pictures more like 1.5cm

	// Content
	FirstPersonAnimSetNames(0)="WEP_1P_Dual_AF2001_ANIM_NoPutDownKick.Wep_1stP_Dual_AF2001_Anim" // "wep_1p_dual_af2001_anim.Wep_1stP_Dual_AF2001_Anim"
	
	// Ammo
	MagazineCapacity[0]=32
	SpareAmmoCapacity[0]=272
	InitialSpareMags[0]=0

	// Recoil
	maxRecoilPitch=650 // vertical
	minRecoilPitch=650
	maxRecoilYaw=225 // horizontal
	minRecoilYaw=-225

	// DEFAULT_FIREMODE
	WeaponFireTypes(DEFAULT_FIREMODE)= EWFT_InstantHit //EWFT_Projectile
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'CustomWeapons.Custom_KFDT_Ballistic_AF2011'

	// ALTFIRE_FIREMODE
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit //EWFT_Projectile
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'CustomWeapons.Custom_KFDT_Ballistic_AF2011'

	WeaponUpgrades.Empty
}
