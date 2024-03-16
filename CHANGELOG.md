# Changelog

## [1.0.0] - 2024-10-31

### Added
- FN FAL CM (Reflex) - `KFWeapDef_FNFalCM_Reflex`  
A weapon with same stats as other Commando FN FALs but with reflex sight. It requires an external dependency to work properly. Check the README for more information.  
- Preview weapons for Sharpshooter as a test of addressing recoil reduction caused by playing with FPS higher than 120:
  - `Preview_KFWeapDef_M14EBR`
  - `Preview_KFWeapDef_M14EBR_IS`
  - `Preview_KFWeapDef_FNFal_4x`
  - `Preview_KFWeapDef_CenterfireMB464`

### Changed
- Dual AF2011 reload speed decreased by 5%
- FN FAL SS reverted the 10% reload speed increase

### Removed
- `KFWeapDef_FNFalCM_4x`

### Other
- Added .editorconfig
- Fixed most of the formatting issues
- Fixed some of the typos and inconsistencies
- Added null checks from picking up weapons from the ground
- Added yellow outline to dropped weapons that have less than 25% ammo
