module UnrealScript.Engine.SoundNodeModulator;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeModulator : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeModulator")); }
	private static __gshared SoundNodeModulator mDefaultProperties;
	@property final static SoundNodeModulator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeModulator)("SoundNodeModulator Engine.Default__SoundNodeModulator")); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat VolumeModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 120); }
		DistributionFloat.RawDistributionFloat PitchModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 92); }
		float VolumeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
		float VolumeMin() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
		float PitchMax() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		float PitchMin() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	}
}
