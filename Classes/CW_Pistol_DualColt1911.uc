class CW_Pistol_DualColt1911 extends KFWeap_Pistol_DualColt1911;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	SingleClass=class'CustomWeapons.CW_Pistol_Colt1911'
	
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=450
	minRecoilPitch=450
	
	WeaponUpgrades.Empty
}
