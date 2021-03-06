//-----------------------------------------------------------
//
//-----------------------------------------------------------
class UT3LeviathanShieldEffectRed extends Emitter;

#exec OBJ LOAD FILE="..\Textures\AW-2004Particles.utx"
#exec OBJ LOAD FILE="..\Textures\AW-2k4XP.utx"

DefaultProperties
{
    Begin Object Class=MeshEmitter Name=MeshEmitter18
        StaticMesh=StaticMesh'UT3PaladinSM.PaladinShield'
        UseParticleColor=True
        UseColorScale=True
        AutomaticInitialSpawning=False
        ColorScale(0)=(Color=(B=64,G=64,R=255))
        ColorScale(1)=(RelativeTime=1.0,Color=(B=64,G=64,R=255))
        CoordinateSystem=PTCS_Relative
        MaxParticles=1
        UniformSize=false
        StartSizeRange=(X=(Min=1.0,Max=1.0),Y=(Min=1.0,Max=1.0),Z=(Min=1.0,Max=1.0))
        //StartSizeRange=(X=(Min=0.7,Max=0.7),Y=(Min=1.4,Max=1.4),Z=(Min=1.6,Max=1.6))
        InitialParticlesPerSecond=5000.0
        LifetimeRange=(Min=0.1,Max=0.1)
    End Object
    Emitters(0)=MeshEmitter'MeshEmitter18'

    bNoDelete=false
    AmbientGlow=254
    bHardAttach=true
    PrePivot=(X=20,Y=0.0,Z=-30)
}
