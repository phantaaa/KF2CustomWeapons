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
	return ItemClass == none || ItemClass == SingleClass || class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	// CW pickup class override
	DroppedPickupClass=class'CW_DroppedPickup'
	
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=650 // 650
	minRecoilPitch=650 // 550
	
	// Fire intervals
	FireInterval(DEFAULT_FIREMODE)=+0.12 // .11
	FireInterval(ALTFIRE_FIREMODE)=+0.12 // .11
	
	// Other
	SingleClass=class'CustomWeapons.CW_Pistol_Deagle'
	WeaponUpgrades.Empty
}
