class CW_AssaultRifle_Medic extends KFWeap_AssaultRifle_Medic;

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
	
	// LockOn
	LockChecktime=0.025 // 0.1
	LockAcquireTime=0.05 // 0.2
	
	// Ammo
	InitialSpareMags[0]=0
	
	// Recoil
	maxRecoilPitch=140 //200
	minRecoilPitch=140 //150
	
	WeaponUpgrades.Empty
}
