class CW_Pistol_Colt1911 extends KFWeap_Pistol_Colt1911;

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
	DualClass=class'CustomWeapons.CW_Pistol_DualColt1911'
	WeaponUpgrades.Empty
}
