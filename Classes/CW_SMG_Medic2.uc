class CW_SMG_Medic2 extends CW_SMG_Medic;

simulated function AltFireMode()
{
	SpawnMedDart();
	SetTimer(FireInterval[ALTFIRE_FIREMODE],false,nameof(SpawnMedDart));
}

simulated function SpawnMedDart()
{
	if (!HasAmmo(ALTFIRE_FIREMODE,AmmoCost[ALTFIRE_FIREMODE]))
	{
		return;
	}
	StartFire(ALTFIRE_FIREMODE);
}

DefaultProperties
{
	// Healing 
	HealAmount=10 // 15
	HealFullRechargeSeconds=13
	
	// Inventory handling
	InventoryGroup=IG_Secondary
	GroupPriority=35 //50
	EquipTime = 0.20; // 0.45
	PutDownTime = 0.20; // 0.33
	MinFiringPutDownPct = 0.60 // 0.80

	// Darts recoil
	DartMaxRecoilPitch=150 //250
	DartMinRecoilPitch=100 //200
	DartMaxRecoilYaw=50 //100
	DartMinRecoilYaw=-50 //-100
	
	// Damage
	FireInterval(DEFAULT_FIREMODE)=+.075 // 800 RPM
	
	// Fire mode specifics
	Spread(DEFAULT_FIREMODE)=0.007
	InstantHitDamage(DEFAULT_FIREMODE)=20.0 //15.0

	AmmoCost(ALTFIRE_FIREMODE)=25 //20 //40
	FireInterval(ALTFIRE_FIREMODE)=+.135 //0.175(default)
	Spread(ALTFIRE_FIREMODE)=0.f

}
