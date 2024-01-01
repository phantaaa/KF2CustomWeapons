class CW_Shotgun_Medic extends KFWeap_Shotgun_Medic;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

defaultproperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'

	// Healing charge
  HealAmount=20 //30 //15
	HealFullRechargeSeconds=12

	// Ammo
	InitialSpareMags[0]=0

	// LockOn
	LockChecktime=0.025 // 0.1
	LockAcquireTime=0.05 // 0.2

	// Recoil
	maxRecoilPitch=400
	minRecoilPitch=400
	
	WeaponUpgrades.Empty
}