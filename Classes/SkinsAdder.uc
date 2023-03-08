class SkinsAdder extends ReplicationInfo dependson(CustomWeaponsMutator);

struct SkinReplacement
{
	var class<KFWeaponDefinition> CustomWeapDef;
	var class<KFWeapon> DefaultWeapon;
};

var private array<SkinReplacement> ReplacementArray;

simulated event PostBeginPlay()
{
	super.PostBeginPlay();

	if(WorldInfo.NetMode != NM_DedicatedServer) // Server doesn't need skins
	{
		ReplaceSkins();
  }
}

private reliable client function ReplaceSkins()
{
	local SkinReplacement SR;

	foreach ReplacementArray(SR)
	{
		class'KFGame.KFWeaponSkinList'.static.SaveWeaponSkin(SR.CustomWeapDef,SR.DefaultWeapon.default.SkinItemId);
	}

	ReplacementArray.length = 0;
	self.Destroy();
}

DefaultProperties
{
	RemoteRole=ROLE_SimulatedProxy
	bAlwaysRelevant=true

	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_M14EBR_IS',DefaultWeapon=class'KFGameContent.KFWeap_Rifle_M14EBR'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_M14EBR',DefaultWeapon=class'KFGameContent.KFWeap_Rifle_M14EBR'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_AF2011',DefaultWeapon=class'KFGameContent.KFWeap_Pistol_AF2011'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_AF2011Dual',DefaultWeapon=class'KFGameContent.KFWeap_Pistol_DualAF2011'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Ak12',DefaultWeapon=class'KFGameContent.KFWeap_AssaultRifle_AK12'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Bullpup',DefaultWeapon=class'KFGameContent.KFWeap_AssaultRifle_Bullpup'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_CenterfireMB464',DefaultWeapon=class'KFGameContent.KFWeap_Rifle_CenterfireMB464'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Deagle',DefaultWeapon=class'KFGameContent.KFWeap_Pistol_Deagle'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_DeagleDual',DefaultWeapon=class'KFGameContent.KFWeap_Pistol_DualDeagle'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_FNFal_4x',DefaultWeapon=class'KFGameContent.KFWeap_AssaultRifle_FNFal'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_FNFalCM_2x',DefaultWeapon=class'KFGameContent.KFWeap_AssaultRifle_FNFal'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_FNFalCM_4x',DefaultWeapon=class'KFGameContent.KFWeap_AssaultRifle_FNFal'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Hemogoblin_NoBleed',DefaultWeapon=class'KFGameContent.KFWeap_Rifle_Hemogoblin'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_HRGCrossbow',DefaultWeapon=class'KFGameContent.KFWeap_Bow_Crossbow'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_MedicShotgun_Slug',DefaultWeapon=class'KFGameContent.KFWeap_Shotgun_Medic'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_MKB42',DefaultWeapon=class'KFGameContent.KFWeap_AssaultRifle_MKB42'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Remington1858',DefaultWeapon=class'KFGameContent.KFWeap_Revolver_Rem1858'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Remington1858Dual',DefaultWeapon=class'KFGameContent.KFWeap_Revolver_DualRem1858'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_SCAR',DefaultWeapon=class'KFGameContent.KFWeap_AssaultRifle_SCAR'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_MedicSMG2',DefaultWeapon=class'KFGameContent.KFWeap_SMG_Medic'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_MedicSMG',DefaultWeapon=class'KFGameContent.KFWeap_SMG_Medic'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_SW500',DefaultWeapon=class'KFGameContent.KFWeap_Revolver_SW500'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_SW500Dual',DefaultWeapon=class'KFGameContent.KFWeap_Revolver_DualSW500'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Colt1911',DefaultWeapon=class'KFGameContent.KFWeap_Pistol_Colt1911'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Colt1911Dual',DefaultWeapon=class'KFGameContent.KFWeap_Pistol_DualColt1911'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Thompson',DefaultWeapon=class'KFGameContent.KFWeap_AssaultRifle_Thompson'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_Winchester1894',DefaultWeapon=class'KFGameContent.KFWeap_Rifle_Winchester1894'))
	ReplacementArray.Add((CustomWeapDef=class'CustomWeapons.KFWeapDef_MedicPistol',DefaultWeapon=class'KFGameContent.KFWeap_Pistol_Medic'))
}
