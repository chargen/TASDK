module UnrealScript.TribesGame.TrDevice_TargetingBeacon;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_TargetingBeacon : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_TargetingBeacon")); }
	private static __gshared TrDevice_TargetingBeacon mDefaultProperties;
	@property final static TrDevice_TargetingBeacon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_TargetingBeacon)("TrDevice_TargetingBeacon TribesGame.Default__TrDevice_TargetingBeacon")); }
}
