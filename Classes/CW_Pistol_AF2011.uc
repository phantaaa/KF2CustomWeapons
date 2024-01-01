class CW_Pistol_AF2011 extends KFWeap_Pistol_AF2011;

simulated event SetWeapon()
{
	super.SetWeapon();
	SetTimer(0.3, false, nameof(CheckUneven));
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

simulated function InstantFireClient()
{
	super(KFWeap_PistolBase).InstantFireClient();
	super(KFWeap_PistolBase).InstantFireClient();
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

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	DualClass=class'CustomWeapons.CW_Pistol_DualAF2011'
	
	BarrelOffset=(X=4.0,Y=0,Z=0) //10
	
	// Ammo
	InitialSpareMags[0]=0
	
	// DEFAULT_FIREMODE
	WeaponFireTypes(DEFAULT_FIREMODE)= EWFT_InstantHit //EWFT_Projectile
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'CustomWeapons.Custom_KFDT_Ballistic_AF2011'
	
	// Recoil
	maxRecoilPitch=650
	minRecoilPitch=650
	maxRecoilYaw=225
	minRecoilYaw=-225

	WeaponUpgrades.Empty
}
