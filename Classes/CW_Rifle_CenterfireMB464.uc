class CW_Rifle_CenterfireMB464 extends KFWeap_Rifle_CenterfireMB464;
	
var private float ReloadspeedMod;

simulated function float GetReloadRateScale()
{
	return Super.GetReloadRateScale() * ReloadspeedMod;
}

simulated event SetWeapon()
{
	super.SetWeapon();

	if(GetPerk().class == class'KFPerk_Sharpshooter')
	{
		EquipTime = 0.25; // 0.45
		PutDownTime = 0.25; // 0.33
		MinFiringPutDownPct = 0.60; // 0.80
		ReloadspeedMod = 0.80;
	}
}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return class<KFWeapon>(itemclass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	DroppedPickupClass=class'Custom_KFDroppedPickup'
	ReloadspeedMod=1.0;

	// Inventory / Grouping
	InventorySize=5
	GroupPriority=54

	// Ammo
	InitialSpareMags[0]=0

	// Recoil
	maxRecoilPitch=500 // 500
	minRecoilPitch=500 // 400

	// DEFAULT_FIREMODE
	InstantHitDamage(DEFAULT_FIREMODE)=180

	WeaponUpgrades.Empty
}
