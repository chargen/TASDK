module UnrealScript.Engine.SeqCond_IsBenchmarking;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsBenchmarking : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqCond_IsBenchmarking")); }
	private static __gshared SeqCond_IsBenchmarking mDefaultProperties;
	@property final static SeqCond_IsBenchmarking DefaultProperties() { mixin(MGDPC("SeqCond_IsBenchmarking", "SeqCond_IsBenchmarking Engine.Default__SeqCond_IsBenchmarking")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqCond_IsBenchmarking.GetObjClassVersion")); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
