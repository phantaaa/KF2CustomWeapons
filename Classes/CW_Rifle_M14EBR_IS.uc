class CW_Rifle_M14EBR_IS extends CW_Rifle_M14EBR;

simulated event Tick(float DeltaTime)
{
	local float InterpValue;
	local float DefaultZoomInTime;
	
	// Copy/paste modified from KFWeapon
	if (LaserSight != None && bIsLaserSightEnabled)
	{
		LaserSight.Update(DeltaTime, Self);
	}
	
	// Copy/paste modified from KFWeap_ScopedBase
	if(ScopeLenseMIC == none)
	{
		return;
	}
	
	if(Instigator != none && Instigator.Controller != none && Instigator.IsHumanControlled())
	{
		if(bZoomingOut)
		{
			maxRecoilPitch=default.maxRecoilPitch;
			minRecoilPitch=default.minRecoilPitch;
			
			InterpValue = ZoomTime/default.ZoomOutTime;
			ScopeLenseMIC.SetScalarParameterValue(InterpParamName, InterpValue);
		}
		else if(bZoomingIn)
		{
			maxRecoilPitch=320; // 225
			minRecoilPitch=320; // 225
			
			DefaultZoomInTime = default.ZoomInTime;
			InterpValue = -ZoomTime/DefaultZoomInTime + 1;
			ScopeLenseMIC.SetScalarParameterValue(InterpParamName, InterpValue);
		}
	}
}

DefaultProperties
{
	ScopedSensitivityMod=15.00 //12.500000
	
	// FOV
	MeshFOV=65
	MeshIronSightFOV=27
	PlayerIronSightFOV=70
	
	// Content
	FirstPersonMeshName="CustomM14Package.FPP_Model.WEP_1stP_M14_EBR"
	
	// Zooming/Position
	PlayerViewOffset=(X=15.0,Y=11.5,Z=-2)
	IronSightPosition=(X=5.0,Y=0,Z=3.75)
}
