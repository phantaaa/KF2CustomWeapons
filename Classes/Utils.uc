class Utils extends Object;

simulated static final function bool CheckAndRemoveDuplicatedWeapon(Inventory CurrentWeapon, KFWeapon NewWeapon)
{
	if(KFWeapon(CurrentWeapon).PackageKey == NewWeapon.PackageKey)
	{
		CurrentWeapon.Instigator.ClientMessage("Don't buy the same weapons!");
		KFInventoryManager(CurrentWeapon.InvManager).ServerRemoveFromInventory(NewWeapon);
		KFInventoryManager(CurrentWeapon.InvManager).ClientRemoveFromInventory(NewWeapon);
		return true;
	}
	return false;
}
