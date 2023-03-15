class CW_Revolver_SW500 extends KFWeap_Revolver_SW500;

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'

	// Ammo
	InitialSpareMags[0]=0

	// Recoil
	maxRecoilPitch=850
	minRecoilPitch=850 //750

	DualClass=class'CustomWeapons.CW_Revolver_DualSW500'
	WeaponUpgrades.Empty
}
