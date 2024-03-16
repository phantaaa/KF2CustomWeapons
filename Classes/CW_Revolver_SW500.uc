class CW_Revolver_SW500 extends KFWeap_Revolver_SW500;

DefaultProperties
{
	// CW pickup class override
	DroppedPickupClass=class'CW_DroppedPickup'
	
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=850
	minRecoilPitch=850 //750
	
	// Other
	DualClass=class'CustomWeapons.CW_Revolver_DualSW500'
	WeaponUpgrades.Empty
}
