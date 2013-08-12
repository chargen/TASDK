module UnrealScript.UDKBase.UDKTrajectoryReachSpec;

import ScriptClasses;
import UnrealScript.Engine.AdvancedReachSpec;

extern(C++) interface UDKTrajectoryReachSpec : AdvancedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKTrajectoryReachSpec")); }
	private static __gshared UDKTrajectoryReachSpec mDefaultProperties;
	@property final static UDKTrajectoryReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKTrajectoryReachSpec)("UDKTrajectoryReachSpec UDKBase.Default__UDKTrajectoryReachSpec")); }
}
