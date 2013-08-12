module UnrealScript.TribesGame.TrDaDCore_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrDaDCore;

extern(C++) interface TrDaDCore_DS : TrDaDCore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDaDCore_DS")); }
	private static __gshared TrDaDCore_DS mDefaultProperties;
	@property final static TrDaDCore_DS DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDaDCore_DS)("TrDaDCore_DS TribesGame.Default__TrDaDCore_DS")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCore_DS.PostBeginPlay")); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
