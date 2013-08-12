module UnrealScript.Engine.ParticleModuleAttractorPoint;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleAttractorBase;

extern(C++) interface ParticleModuleAttractorPoint : ParticleModuleAttractorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleAttractorPoint")); }
	private static __gshared ParticleModuleAttractorPoint mDefaultProperties;
	@property final static ParticleModuleAttractorPoint DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleAttractorPoint)("ParticleModuleAttractorPoint Engine.Default__ParticleModuleAttractorPoint")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat Strength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 128); }
			DistributionFloat.RawDistributionFloat Range() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 100); }
			DistributionVector.RawDistributionVector Position() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bUseWorldSpacePosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x8) != 0; }
		bool bUseWorldSpacePosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x8; } return val; }
		bool bOverrideVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x4) != 0; }
		bool bOverrideVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x4; } return val; }
		bool bAffectBaseVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x2) != 0; }
		bool bAffectBaseVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x2; } return val; }
		bool StrengthByDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x1) != 0; }
		bool StrengthByDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x1; } return val; }
	}
}
