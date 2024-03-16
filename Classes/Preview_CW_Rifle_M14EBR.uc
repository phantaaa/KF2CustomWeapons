class Preview_CW_Rifle_M14EBR extends CW_Rifle_M14EBR;

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
