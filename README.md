# CustomWeapons ([Workshop page](https://steamcommunity.com/sharedfiles/filedetails/?id=1937095339))

Weapon library mainly for [Controlled Difficulty](https://steamcommunity.com/sharedfiles/filedetails/?id=2052571175) purposes containing gun fixes/balance changes, also including few new weapons. This has to be used with [Custom Trader Inventory](https://steamcommunity.com/sharedfiles/filedetails/?id=2830826239). Every weapon has labeled changes in game trader description. All weapons have removed upgrades.

## Server Setup
Add to KFEngine.ini:
```ini
[OnlineSubsystemSteamworks.KFWorkshopSteamworks]
ServerSubscribedWorkshopItems=1937095339
```

## Important
To see skins you have to add mutator which comes with this package:
```
?mutator=CustomWeapons.CustomWeaponsMutator
```

## FN FAL CM (Reflex)

### Option 1:
Add [FN FAL (Reflex) workshop item](https://steamcommunity.com/sharedfiles/filedetails/?id=3270321697) id to the `KFEngine.ini` on the server and add the dummy mutator:
```ini
[OnlineSubsystemSteamworks.KFWorkshopSteamworks]
ServerSubscribedWorkshopItems=3270321697 
```
Launch parameters:
`?Mutator=CustomWeapons.CustomWeaponsMutator,FNFalCM.FNFalCMMut`  
This way everyone who joins the server will download the required weapon files automatically.

### Option 2:
Ensure that everyone has subscribed to the [FN FAL (Reflex) workshop item](https://steamcommunity.com/sharedfiles/filedetails/?id=3270321697).

## CTI Configuration
```ini
[CTI.CTI]
Version=5
LogLevel=LL_Error
UnlockDLC=False
bPreloadContent=true
bOfficialWeaponsList=False
bDisableItemLimitCheck=False
bApplyPatch=False

[CTI.RemoveItems]
Ball=true
bHRG=False
bDLC=False
Item=

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
Item=CustomWeapons.KFWeapDef_FNFalCM_Reflex
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

## TIM Configuration
```ini
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
CustomItems=CustomWeapons.KFWeapDef_FNFalCM_Reflex
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

## Preview Weapons
Those weapons are in preview state, and are an attempt to address recoil reduction caused by playing Sharpshooter on FPS higher than 120. [Thanks to courtesy of Carl who spend his time and effort researching this issue.](https://www.zsdr.org/index.php/2024/06/29/quantifying-the-kf2-recoil-rate-of-fire-reloads-on-fps-dependency/). You can play with this weapons with any FPS, try it out and report back if u have any feedback.

```ini
Preview_KFWeapDef_M14EBR
Preview_KFWeapDef_M14EBR_IS
Preview_KFWeapDef_FNFal_4x
Preview_KFWeapDef_CenterfireMB464
```
