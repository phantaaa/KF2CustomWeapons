class CW_Revolver_DualSW500 extends KFWeap_Revolver_DualSW500;

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	SingleClass=class'CustomWeapons.CW_Revolver_SW500'
	
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=850 //850
	minRecoilPitch=850 //750
	
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Ballistic_SW500'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'Custom_KFDT_Ballistic_SW500'
	
	WeaponUpgrades.Empty
}
