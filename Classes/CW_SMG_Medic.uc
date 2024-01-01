class CW_SMG_Medic extends KFWeap_SMG_Medic;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(itemclass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	
	// Ammo
	InitialSpareMags[0]=0
	
	// LockOn
	LockChecktime=0.025 // 0.1
	LockAcquireTime=0.05 // 0.2
	
	// Recoil
	maxRecoilPitch=75
	minRecoilPitch=75
	
	WeaponUpgrades.Empty
}
