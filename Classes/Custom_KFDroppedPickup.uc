class Custom_KFDroppedPickup extends KFDroppedPickup;

auto state Pickup
{
	function bool ValidTouch(Pawn Other)
	{
		local Actor HitA;
		local vector HitLocation, HitNormal;
		local TraceHitInfo HitInfo;
		local bool bHitWall;

		// make sure its a live player
		if (Other == None || !Other.bCanPickupInventory || !Other.IsAliveAndWell() || (Other.DrivenVehicle == None && Other.Controller == None))
		{
			return false;
		}

		if (`TimeSince(CreationTime) < PickupDelay)
		{
			return false;
		}
		// prevent picking up as soon as it's spawned
		if ( Other == Instigator )
		{
			// If low on health, wait a little longer to allow pickup again
			if( (bUseLowHealthDelay && (Instigator.Health / Instigator.HealthMax) <= 0.2f && `TimeSince(CreationTime) < 1.f)
				|| `TimeSince(CreationTime) < 0.1f )
			{
				return false;
			}
		}

		// make sure not touching through wall
		foreach Other.TraceActors( class'Actor', HitA, HitLocation, HitNormal, MyCylinderComp.GetPosition() + vect(0,0,10), Other.Location, vect(1,1,1), HitInfo )
		{
			if ( IsTouchBlockedBy(HitA, HitInfo.HitComponent) )
			{
				if (MyMeshComp == None)
				{
					return false;
				}
				else
				{
					bHitWall = true;
					break;
				}
			}
		}
		if (bHitWall)
		{
			// fail only if wall between both cylinder and mesh center
			foreach Other.TraceActors( class'Actor', HitA, HitLocation, HitNormal, MyMeshComp.Bounds.Origin + vect(0,0,10), Other.Location, vect(1,1,1), HitInfo )
			{
				if ( IsTouchBlockedBy(HitA, HitInfo.HitComponent) )
				{
					return false;
				}
			}
		}

		// make sure game will let player pick me up
		if (WorldInfo.Game.PickupQuery(Other, Inventory.class, self))
		{
			return true;
		}
		else
		{
			SetTimer(0.5,false,nameof(CheckTouching));
		}
		return false;
	}

	function BeginState(Name PreviousStateName)
	{
		SetTimer(LifeSpan - 1, false);
	}

	function CheckTouching()
	{
		local Pawn P;

		foreach TouchingActors(class'Pawn', P)
		{
			Touch( P, None, Location, vect(0,0,1) );
		}
	}
}
