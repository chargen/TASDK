module UnrealScript.Engine.ParticleModuleMeshRotationRate;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotationRate : ParticleModuleRotationRateBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleMeshRotationRate")); }
	private static __gshared ParticleModuleMeshRotationRate mDefaultProperties;
	@property final static ParticleModuleMeshRotationRate DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleMeshRotationRate)("ParticleModuleMeshRotationRate Engine.Default__ParticleModuleMeshRotationRate")); }
	@property final auto ref DistributionVector.RawDistributionVector StartRotationRate() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
