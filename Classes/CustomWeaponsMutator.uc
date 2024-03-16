class CustomWeaponsMutator extends KFMutator;

var private SkinsAdder SkinsAdder;

simulated event PostBeginPlay()
{
	super.PostBeginPlay();
	SkinsAdder = Spawn(class'SkinsAdder');
}
