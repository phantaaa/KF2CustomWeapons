class Preview_CW_Rifle_CenterfireMB464 extends CW_Rifle_CenterfireMB464;

var private bool bAppliedRecoilMod;

simulated event Tick(float DeltaTime)
{
    if(`IsInZedTime(self) )
    {
        if (!bAppliedRecoilMod)
        {
            RecoilRate = 0.0125f;
            bAppliedRecoilMod = true;
        }
    }
    else if (bAppliedRecoilMod)
    {
        RecoilRate = SuppressRecoilSpeed;
        bAppliedRecoilMod = false;
    }

    super.Tick(DeltaTime);
}