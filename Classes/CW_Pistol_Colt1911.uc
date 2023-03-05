class CW_Pistol_Colt1911 extends KFWeap_Pistol_Colt1911;

defaultproperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'

	// Ammo
	MagazineCapacity[0]=8
	SpareAmmoCapacity[0]=136
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=450
	minRecoilPitch=450
	
	// Other
	DualClass=class'CustomWeapons.CW_Pistol_DualColt1911'
	WeaponUpgrades.Empty
}
