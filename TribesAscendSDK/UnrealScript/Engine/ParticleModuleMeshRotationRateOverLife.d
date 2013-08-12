module UnrealScript.Engine.ParticleModuleMeshRotationRateOverLife;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotationRateOverLife : ParticleModuleRotationRateBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleMeshRotationRateOverLife")); }
	private static __gshared ParticleModuleMeshRotationRateOverLife mDefaultProperties;
	@property final static ParticleModuleMeshRotationRateOverLife DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleMeshRotationRateOverLife)("ParticleModuleMeshRotationRateOverLife Engine.Default__ParticleModuleMeshRotationRateOverLife")); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector RotRate() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
		bool bScaleRotRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bScaleRotRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
