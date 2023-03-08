<h1>CustomWeapons(<a href="https://steamcommunity.com/sharedfiles/filedetails/?id=1937095339">Workshop page</a>)</h1>
Weapon library mainly for <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=2052571175">Controlled Difficulty</a> purposes containing some gun fixes/balance changes, also including few new weapons. This has to be used with <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=2830826239">Custom Trader Inventory</a>. Every weapon has labeled changes in game trader description. All weapons have removed upgrades.
<code>ServerSubscribedWorkshopItems=1937095339</code>
<h2>To see skins you have to add mutator which comes with this package</h2>
<code>?mutator=CustomWeapons.CustomWeaponsMutator</code>

<h2><u>CTI config</u></h2>

```
[CTI.CTI]
Version=2
LogLevel=LL_Info
UnlockDLC=False
bPreloadContent=True
bOfficialWeaponsList=False

[CTI.RemoveItems]
bAll=true

[CTI.AddItems]
Item=CustomWeapons.KFWeapDef_Bullpup
Item=CustomWeapons.KFWeapDef_MedicSMG
Item=CustomWeapons.KFWeapDef_MedicSMG2
Item=CustomWeapons.KFWeapDef_MedicShotgun
Item=CustomWeapons.KFWeapDef_MedicShotgun_Slug
Item=CustomWeapons.KFWeapDef_Crossbow
Item=CustomWeapons.KFWeapDef_MedicRifle
Item=CustomWeapons.KFWeapDef_9mm
Item=CustomWeapons.KFWeapDef_9mmDual
Item=CustomWeapons.KFWeapDef_AF2011
Item=CustomWeapons.KFWeapDef_AF2011Dual
Item=CustomWeapons.KFWeapDef_CenterfireMB464
Item=CustomWeapons.KFWeapDef_Colt1911
Item=CustomWeapons.KFWeapDef_Colt1911Dual
Item=CustomWeapons.KFWeapDef_Deagle
Item=CustomWeapons.KFWeapDef_DeagleDual
Item=CustomWeapons.KFWeapDef_FNFal_4x
Item=CustomWeapons.KFWeapDef_FNFalCM_2x
Item=CustomWeapons.KFWeapDef_FNFalCM_4x
Item=CustomWeapons.KFWeapDef_M14EBR
Item=CustomWeapons.KFWeapDef_M14EBR_IS
Item=CustomWeapons.KFWeapDef_MKB42
Item=CustomWeapons.KFWeapDef_SCAR
Item=CustomWeapons.KFWeapDef_SW500
Item=CustomWeapons.KFWeapDef_SW500Dual
Item=CustomWeapons.KFWeapDef_AK12
Item=CustomWeapons.KFWeapDef_Thompson
Item=CustomWeapons.KFWeapDef_HRGCrossbow
Item=CustomWeapons.KFWeapDef_Hemogoblin_NoBleed
Item=CustomWeapons.KFWeapDef_Remington1858
Item=CustomWeapons.KFWeapDef_Remington1858Dual
Item=CustomWeapons.KFWeapDef_Winchester1894
Item=CustomWeapons.KFWeapDef_MedicPistol
Item=CustomWeapons.KFWeapDef_AR15
```

<u><h2>or TIM</u></h2>

```
[TIM.TIMut]
bDebugLog=false
bAddNewWeaponsToConfig=True
CustomItems=CustomWeapons.KFWeapDef_AR15
CustomItems=CustomWeapons.KFWeapDef_MedicPistol
CustomItems=CustomWeapons.KFWeapDef_Remington1858
CustomItems=CustomWeapons.KFWeapDef_Winchester1894
CustomItems=CustomWeapons.KFWeapDef_Bullpup
CustomItems=CustomWeapons.KFWeapDef_MedicSMG
CustomItems=CustomWeapons.KFWeapDef_MedicSMG2
CustomItems=CustomWeapons.KFWeapDef_MedicShotgun
CustomItems=CustomWeapons.KFWeapDef_MedicShotgun_Slug
CustomItems=CustomWeapons.KFWeapDef_MedicRifle
CustomItems=CustomWeapons.KFWeapDef_Remington1858Dual
CustomItems=CustomWeapons.KFWeapDef_9mm
CustomItems=CustomWeapons.KFWeapDef_9mmDual
CustomItems=CustomWeapons.KFWeapDef_AF2011
CustomItems=CustomWeapons.KFWeapDef_AF2011Dual
CustomItems=CustomWeapons.KFWeapDef_CenterfireMB464
CustomItems=CustomWeapons.KFWeapDef_Colt1911
CustomItems=CustomWeapons.KFWeapDef_Colt1911Dual
CustomItems=CustomWeapons.KFWeapDef_Deagle
CustomItems=CustomWeapons.KFWeapDef_DeagleDual
CustomItems=CustomWeapons.KFWeapDef_FNFal_4x
CustomItems=CustomWeapons.KFWeapDef_FNFalCM_2x
CustomItems=CustomWeapons.KFWeapDef_FNFalCM_4x
CustomItems=CustomWeapons.KFWeapDef_M14EBR
CustomItems=CustomWeapons.KFWeapDef_M14EBR_IS
CustomItems=CustomWeapons.KFWeapDef_MKB42
CustomItems=CustomWeapons.KFWeapDef_SCAR
CustomItems=CustomWeapons.KFWeapDef_SW500
CustomItems=CustomWeapons.KFWeapDef_SW500Dual
CustomItems=CustomWeapons.KFWeapDef_AK12
CustomItems=CustomWeapons.KFWeapDef_Thompson
CustomItems=CustomWeapons.KFWeapDef_HRGCrossbow
CustomItems=CustomWeapons.KFWeapDef_Hemogoblin_NoBleed
iVersion=8

[TIM.TIMRepLink]
bDebugLog=false
iRetries=1
```
