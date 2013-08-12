module UnrealScript.Engine.ParticleModuleCameraOffset;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleCameraBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleCameraOffset : ParticleModuleCameraBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleCameraOffset")); }
	private static __gshared ParticleModuleCameraOffset mDefaultProperties;
	@property final static ParticleModuleCameraOffset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleCameraOffset)("ParticleModuleCameraOffset Engine.Default__ParticleModuleCameraOffset")); }
	enum EParticleCameraOffsetUpdateMethod : ubyte
	{
		EPCOUM_DirectSet = 0,
		EPCOUM_Additive = 1,
		EPCOUM_Scalar = 2,
		EPCOUM_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			ParticleModuleCameraOffset.EParticleCameraOffsetUpdateMethod UpdateMethod() { return *cast(ParticleModuleCameraOffset.EParticleCameraOffsetUpdateMethod*)(cast(size_t)cast(void*)this + 104); }
			DistributionFloat.RawDistributionFloat CameraOffset() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bSpawnTimeOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bSpawnTimeOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
