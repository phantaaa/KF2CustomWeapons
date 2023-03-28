
class CW_Rifle_Hemogoblin extends KFWeap_Rifle_Hemogoblin;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	
	// Healing
	HealAmount=20
	HealFullRechargeSeconds=10
	
	// LockOn
	LockChecktime=0.025 // 0.1
	LockAcquireTime=0.05 // 0.2
	
	// Ammo
	MagazineCapacity[0]=7
	SpareAmmoCapacity[0]=56
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=225
	minRecoilPitch=225
	
	// DEFAULT_FIREMODE
	InstantHitDamage(DEFAULT_FIREMODE)=100.0
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Ballistic_Hemogoblin_NoBleed'
	FireInterval(DEFAULT_FIREMODE)=0.25
	PenetrationPower(DEFAULT_FIREMODE)=0.0 //2.0
	Spread(DEFAULT_FIREMODE)=0.006
	
	WeaponUpgrades.Empty
}
