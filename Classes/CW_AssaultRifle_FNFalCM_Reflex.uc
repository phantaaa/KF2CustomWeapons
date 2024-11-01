class CW_AssaultRifle_FNFalCM_Reflex extends CW_AssaultRifle_FNFalCM_2x;

simulated event SetWeapon()
{
    if(WeaponSelectTexture == none)
    {
        Instigator.ClientMessage("This weapon requires external dependency to work properly. Check it on CustomWeapons workshop page");
        KFInventoryManager(self.InvManager).ServerRemoveFromInventory(self);
		KFInventoryManager(self.InvManager).ClientRemoveFromInventory(self);
        return;
    }
    super.SetWeapon();
}

function bool DenyPickupQuery(class<Inventory> ItemClass, Actor Pickup)
{
	return super.DenyPickupQuery(ItemClass, Pickup) || WeaponSelectTexture == none;
}

DefaultProperties
{
	// FOV
	MeshFOV=60 //55 //60
	MeshIronSightFOV=40 //20
	PlayerIronSightFOV=70

	// Zooming/Position
	IronSightPosition=(X=12,Y=0.05,Z=1.195) //(X=12,Y=-0.04,Z=1.33) //(X=15,Y=0,Z=0)
	PlayerViewOffset=(X=22.0,Y=10,Z=-3.0) //(X=22.0,Y=11,Z=-3.0)

    // Content
	WeaponSelectTexture=Texture2D'WEP_UI_FalCM_TEX.UI_WeaponSelect_FNFAL_CM'
	FirstPersonMeshName="WEP_1P_FalCM_MESH.WEP_1stP_FNFAL_CM_Rig"
	PickupMeshName="WEP_3P_FalCM_MESH.WEP_3rdP_FNFAL_CM_Pickup"
	AttachmentArchetypeName="WEP_FalCM_ARCH.Wep_FNFAL_CM_3P"
	MuzzleFlashTemplateName="WEP_FalCM_ARCH.Wep_FNFAL_MuzzleFlash" //NEED To REPLACE
}
