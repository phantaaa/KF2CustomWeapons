class CW_Pistol_DualDeagle extends KFWeap_Pistol_DualDeagle;

simulated function float GetReloadRateScale()
{
	if(AmmoCount[0] <= 0)
	{
		return Super.GetReloadRateScale() * 1.20f; //1.1
	}
	
	return Super.GetReloadRateScale() * 0.80f; //0.75
}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	SingleClass=class'CustomWeapons.CW_Pistol_Deagle'
	
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=650 // 650
	minRecoilPitch=650 // 550
	
	// DEFAULT_FIREMODE
	FireInterval(DEFAULT_FIREMODE)=+0.12 // .11
	FireInterval(ALTFIRE_FIREMODE)=+0.12 // .11
	
	WeaponUpgrades.Empty
}
