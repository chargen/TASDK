module UnrealScript.TribesGame.TrSeqEvent_Generator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface TrSeqEvent_Generator : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSeqEvent_Generator")); }
	private static __gshared TrSeqEvent_Generator mDefaultProperties;
	@property final static TrSeqEvent_Generator DefaultProperties() { mixin(MGDPC("TrSeqEvent_Generator", "TrSeqEvent_Generator TribesGame.Default__TrSeqEvent_Generator")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function TribesGame.TrSeqEvent_Generator.GetObjClassVersion")); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
