class CW_Revolver_DualSW500 extends KFWeap_Revolver_DualSW500;

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
	maxRecoilPitch=850 //850
	minRecoilPitch=850 //750
	
	// Damage
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Ballistic_SW500'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'Custom_KFDT_Ballistic_SW500'
	
	// Other
	SingleClass=class'CustomWeapons.CW_Revolver_SW500'
	WeaponUpgrades.Empty
}
