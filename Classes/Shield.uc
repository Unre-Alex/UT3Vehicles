//============================================================
// Shield (The shield generated by the Shield Generator).
// Credits: 100GPing100(Jos� Lu�s)
// Copytight Jos� Lu�s, 2012
// Contact: zeluis.100@gmail.com
//============================================================
class Shield extends Actor;

#exec audio import group=ShieldSounds file=..\Sounds\UT3Nightshade\Shield\Shield_Ambient.wav
#exec audio import group=ShieldSounds file=..\Sounds\UT3Nightshade\Shield\Shield_Hit.wav

/* How much health the shield currently has. */
var int Health;
/* The mine that is producing this shield. */
var DeployableMine BaseMine;
/*  */
var Sound HitSnd;

event TakeDamage(int DamageAmount, Pawn Instigator, vector HitLocation, vector Momentum, class<DamageType> DamageType)
{
	Super.TakeDamage(DamageAmount, Instigator, HitLocation, Momentum, DamageType);
	
	Health -= DamageAmount;
	PlaySound(HitSnd, SLOT_None, 1.5);
	
	if (Health <= 0)
		BaseMine.Destroy();
}

DefaultProperties
{
	// Looks.
	StaticMesh = StaticMesh'UT3NightshadeSM.Shield';
	DrawType = DT_StaticMesh;
	DrawScale = 5.0;
	Rotation = (Roll=0);
	
	// Collision.
	bCollideActors = true;
	bBlockActors = false;
	bBlockZeroExtentTraces = true;
	//bBlockNonZeroExtentTraces = false;
	bProjTarget = true;
	bActorShadows = false;
	
	// Damage.
	Health = 4000;
	
	// Sound.
	AmbientSound = Sound'UT3Nightshade.ShieldSounds.Shield_Ambient';
	HitSnd = Sound'UT3Nightshade.ShieldSounds.Shield_Hit';
	SoundRadius = 250;
	SoundVolume = 128;
}
