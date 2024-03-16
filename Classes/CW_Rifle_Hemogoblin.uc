
class CW_Rifle_Hemogoblin extends KFWeap_Rifle_Hemogoblin;

var private Texture2D SecondaryAmmoTextureDisableLockOn;
var private bool bDisableLockOn;

exec simulated function togglelockon()
{
	bDisableLockOn = !bDisableLockOn;
	ServerToggleLockOn(bDisableLockOn);
	ClientToggleLockOn(bDisableLockOn);
}

private unreliable server function ServerToggleLockOn(bool bDisableLockOnParam)
{
	bDisableLockOn = bDisableLockOnParam;
}

private unreliable client function ClientToggleLockOn(bool bDisableLockOnParam)
{
	bDisableLockOn = bDisableLockOnParam;
	Instigator.PlaySoundBase(KFInventoryManager(InvManager).SwitchFireModeEvent);
	SecondaryAmmoTexture = bDisableLockOnParam ? SecondaryAmmoTextureDisableLockOn : default.SecondaryAmmoTexture;
	KFPlayerController(Instigator.Controller).MyGFxHUD.PlayerBackpackContainer.RefreshWeapon(self);
}

function bool AllowTargetLockOn()
{
	return !bDisableLockOn && !Instigator.bNoWeaponFiring;
}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return ItemClass == none || class<KFWeapon>(ItemClass).default.PackageKey == self.PackageKey;
}

DefaultProperties
{
	// CW pickup class override
	DroppedPickupClass=class'CW_DroppedPickup'

	// Disabled Tracking Texture
	SecondaryAmmoTextureDisableLockOn=Texture2D'Custom_UI_SecondaryAmmo_TEX.MedicDarts'
	
	// Healing
	HealAmount=20
	HealFullRechargeSeconds=10
	
	// Lock On
	LockChecktime=0.025 // 0.1
	LockAcquireTime=0.05 // 0.2
	
	// Ammo
	MagazineCapacity[0]=6
	SpareAmmoCapacity[0]=56
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=225
	minRecoilPitch=225
	
	// Damage
	InstantHitDamage(DEFAULT_FIREMODE)=100.0
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'Custom_KFDT_Ballistic_Hemogoblin_NoBleed'
	
	// Fire mode specifics
	FireInterval(DEFAULT_FIREMODE)=0.25
	PenetrationPower(DEFAULT_FIREMODE)=0.0 //2.0
	Spread(DEFAULT_FIREMODE)=0.006
	
	// OTHER
	WeaponUpgrades.Empty
}
