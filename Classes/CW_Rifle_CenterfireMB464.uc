class CW_Rifle_CenterfireMB464 extends KFWeap_Rifle_CenterfireMB464;

var private float ReloadspeedMod;

simulated function float GetReloadRateScale()
{
	return Super.GetReloadRateScale() * ReloadspeedMod;
}

simulated event SetWeapon()
{
    local KFPerk_Sharpshooter SharpPerk;

	super.SetWeapon();

    SharpPerk = KFPerk_Sharpshooter(GetPerk());
	if(SharpPerk != none)
	{
		EquipTime = 0.25f; // 0.45
		PutDownTime = 0.25f; // 0.33
		MinFiringPutDownPct = 0.60f; // 0.80

        if(!SharpPerk.IsTacticalReloadActive())
        {
		    ReloadspeedMod = 0.80f;
        }
	}
}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return ItemClass == none || class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	// CW pickup class override
	DroppedPickupClass=class'CW_DroppedPickup'

	// Inventory / Grouping
	InventorySize=5
	GroupPriority=54

	// Ammo
	InitialSpareMags[0]=0

	// Recoil
	maxRecoilPitch=500 // 500
	minRecoilPitch=500 // 400

	// Damage
	InstantHitDamage(DEFAULT_FIREMODE)=180

	// CW pickup class override
	ReloadspeedMod=1.0;
	WeaponUpgrades.Empty
}
