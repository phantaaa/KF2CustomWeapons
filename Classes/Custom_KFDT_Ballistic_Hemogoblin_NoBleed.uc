class Custom_KFDT_Ballistic_Hemogoblin_NoBleed extends KFDT_Ballistic_Rifle abstract;

var class<Actor> TubeAttachClass;
var class<KFDamageType> BleedDamageType;

static simulated function bool CanDismemberHitZone( name InHitZoneName )
{
	if( super.CanDismemberHitZone( InHitZoneName ) )
	{
		return true;
	}

	switch ( InHitZoneName )
	{
	case 'lupperarm':
	case 'rupperarm':
	case 'chest':
	case 'heart':
		return true;
	}

	return false;
}

static simulated function bool CanDismemberHitZoneWhileAlive(name InHitZoneName)
{
	return false;
}

static function PlayImpactHitEffects(KFPawn P, vector HitLocation, vector HitDirection, byte HitZoneIndex, optional Pawn HitInstigator)
{
	local Actor TubeAttachment;
	local Vector StickLocation;
	local Rotator StickRotation;
	local name BoneName;
	local WorldInfo WI;
	local KFPawn RetracePawn;
	local Vector RetraceLocation;
	local Vector RetraceNormal;
	local TraceHitInfo HitInfo;

	WI = class'WorldInfo'.static.GetWorldInfo();
	if (P != none && HitZoneIndex > 0 && HitZoneIndex < P.HitZones.Length && WI != none && WI.NetMode != NM_DedicatedServer)
	{
		//Don't play additional FX here if we aren't attaching a new tube, let its built in blood spray handle things
		//super.PlayImpactHitEffects(P, HitLocation, HitDirection, HitZoneIndex, HitInstigator);

		//Retrace to get valid hit normal
		foreach WI.TraceActors(class'KFPawn', RetracePawn, RetraceLocation, RetraceNormal, HitLocation + HitDirection * 50, HitLocation - HitDirection * 50, vect(0, 0, 0), HitInfo, 1) //TRACEFLAG_Bullet
		{
			if (P == RetracePawn)
			{
				HitLocation = RetraceLocation;
				HitDirection = -RetraceNormal;
				break;
			}
		}

		TubeAttachment = P.Spawn(default.TubeAttachClass, P, , HitLocation, Rotator(HitDirection));
		if (TubeAttachment != none)
		{
			BoneName = P.HitZones[HitZoneIndex].BoneName;
			P.Mesh.TransformToBoneSpace(BoneName, TubeAttachment.Location, TubeAttachment.Rotation, StickLocation, StickRotation);
			TubeAttachment.SetBase(P, , P.Mesh, BoneName);
			TubeAttachment.SetRelativeLocation(StickLocation);
			TubeAttachment.SetRelativeRotation(StickRotation);
		}
	}
}

/** Called when damage is dealt to apply additional damage type (e.g. Damage Over Time) */
static function ApplySecondaryDamage( KFPawn Victim, int DamageTaken, optional Controller InstigatedBy )
{
	local class<KFDamageType> ToxicDT;
	local KFPawn_Monster KFM;

	ToxicDT = class'KFDT_Dart_Toxic'.static.GetMedicToxicDmgType( DamageTaken, InstigatedBy );
	if ( ToxicDT != None )
	{
		Victim.ApplyDamageOverTime(DamageTaken, InstigatedBy, ToxicDT);
	}

	// potential for two DoTs if DoT_Type is set
	if (default.BleedDamageType.default.DoT_Type != DOT_None)
	{
		KFM = KFPawn_Monster(Victim);
		iF(KFM == none)
		{
			return;
		}
		KFM.ApplyDamageOverTime(DamageTaken, InstigatedBy, class'Custom_KFDT_Bleeding_Hemogoblin');
		KFM.AdjustMovementSpeed(0.8);
	}
}

DefaultProperties
{
	KDamageImpulse=3000
	KDeathUpKick=800
	KDeathVel=500

	StumblePower=130 // 200 - stumbles FP and SC in 2 shots
	GunHitPower=5
	HeadDestructionDamageScale= 5

	BleedDamageType=class'Custom_KFDT_Bleeding_Hemogoblin'
	WeaponDef=class'KFWeapDef_Hemogoblin_NoBleed'
	ModifierPerkList(0)=class'KFPerk_FieldMedic'
	TubeAttachClass=class'KFWeapActor_Hemogoblin_Tube'
}
