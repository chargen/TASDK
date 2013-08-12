module UnrealScript.Engine.LevelStreamingPersistent;

import ScriptClasses;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingPersistent : LevelStreaming
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LevelStreamingPersistent")); }
	private static __gshared LevelStreamingPersistent mDefaultProperties;
	@property final static LevelStreamingPersistent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LevelStreamingPersistent)("LevelStreamingPersistent Engine.Default__LevelStreamingPersistent")); }
}
