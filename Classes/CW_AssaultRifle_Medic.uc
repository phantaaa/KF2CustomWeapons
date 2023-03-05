class CW_AssaultRifle_Medic extends KFWeap_AssaultRifle_Medic;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(itemclass).default.PackageKey == self.PackageKey;
}

defaultproperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'

	// LockOn
	LockChecktime=0.025 // 0.1
	LockAcquireTime=0.05 // 0.2  

	// Ammo
  InitialSpareMags[0]=0

	// Recoil
	maxRecoilPitch=140  //200
	minRecoilPitch=140  //150
	
	WeaponUpgrades.Empty
}
