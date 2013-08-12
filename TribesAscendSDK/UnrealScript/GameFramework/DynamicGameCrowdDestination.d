module UnrealScript.GameFramework.DynamicGameCrowdDestination;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdDestination;

extern(C++) interface DynamicGameCrowdDestination : GameCrowdDestination
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.DynamicGameCrowdDestination")); }
	private static __gshared DynamicGameCrowdDestination mDefaultProperties;
	@property final static DynamicGameCrowdDestination DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DynamicGameCrowdDestination)("DynamicGameCrowdDestination GameFramework.Default__DynamicGameCrowdDestination")); }
}
