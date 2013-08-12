module UnrealScript.UTGame.UTSkelControl_CicadaEngine;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UTSkelControl_CicadaEngine : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_CicadaEngine")); }
	private static __gshared UTSkelControl_CicadaEngine mDefaultProperties;
	@property final static UTSkelControl_CicadaEngine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSkelControl_CicadaEngine)("UTSkelControl_CicadaEngine UTGame.Default__UTSkelControl_CicadaEngine")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTickSkelControl;
		public @property static final ScriptFunction TickSkelControl() { return mTickSkelControl ? mTickSkelControl : (mTickSkelControl = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSkelControl_CicadaEngine.TickSkelControl")); }
	}
	@property final auto ref
	{
		int DesiredPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 268); }
		float LastThrust() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float PitchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float MaxVelocityPitchRateMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		float MinVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float MaxVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float PitchRate() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		float BackPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float ForwardPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	}
	final void TickSkelControl(float DeltaTime, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickSkelControl, params.ptr, cast(void*)0);
	}
}
