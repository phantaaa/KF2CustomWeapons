class CustomWeaponsMutator extends KFMutator;

var private SkinsAdder SkinsAdder;


simulated event PostBeginPlay() // This is getting called only on server
{
    super.PostBeginPlay();
    SkinsAdder = Spawn(class'SkinsAdder');
}

simulated static final function bool RemovedDuplicateWeapon(Inventory CurrentWeapon, KFWeapon NewWeapon)
{
    if(KFWeapon(CurrentWeapon).PackageKey == NewWeapon.PackageKey)
    {
        CurrentWeapon.Instigator.ClientMessage("Don't buy same weapons!");
        KFInventoryManager(CurrentWeapon.InvManager).ServerRemoveFromInventory(NewWeapon);
        KFInventoryManager(CurrentWeapon.InvManager).ClientRemoveFromInventory(NewWeapon);
        return true;
    }
    return false;
}
