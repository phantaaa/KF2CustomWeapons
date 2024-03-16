class CW_Pistol_DualColt1911 extends KFWeap_Pistol_DualColt1911;

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
	maxRecoilPitch=450
	minRecoilPitch=450
	
	// Other
	SingleClass=class'CustomWeapons.CW_Pistol_Colt1911'
	WeaponUpgrades.Empty
}
