class CW_Pistol_Deagle extends KFWeap_Pistol_Deagle;

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=650
	minRecoilPitch=650
	
	// Other
	DualClass=class'CustomWeapons.CW_Pistol_DualDeagle'
	WeaponUpgrades.Empty
}
