class Custom_KFDT_Bleeding_Hemogoblin extends KFDT_Toxic
abstract
hidedropdown;

DefaultProperties
{
	KDamageImpulse=0
	KDeathUpKick=0
	KDeathVel=0
	
	//Afflictions
	// BleedPower=150
	PoisonPower=0.f
	
	//Damage Over Time Components
	DoT_Type=DOT_Toxic
	DoT_Duration=5.0 //10
	DoT_Interval=1.0 //1.0
	DoT_DamageScale=0.35 //0.1
	bStackDoT=true
}
