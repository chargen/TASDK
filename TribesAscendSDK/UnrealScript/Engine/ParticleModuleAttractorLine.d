module UnrealScript.Engine.ParticleModuleAttractorLine;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleAttractorBase;

extern(C++) interface ParticleModuleAttractorLine : ParticleModuleAttractorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleAttractorLine")); }
	private static __gshared ParticleModuleAttractorLine mDefaultProperties;
	@property final static ParticleModuleAttractorLine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleAttractorLine)("ParticleModuleAttractorLine Engine.Default__ParticleModuleAttractorLine")); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat Strength() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 124); }
		DistributionFloat.RawDistributionFloat Range() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 96); }
		Vector EndPoint1() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
		Vector EndPoint0() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
	}
}
