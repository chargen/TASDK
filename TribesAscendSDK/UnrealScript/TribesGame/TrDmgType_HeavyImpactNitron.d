module UnrealScript.TribesGame.TrDmgType_HeavyImpactNitron;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_ConcussionGrenade;

extern(C++) interface TrDmgType_HeavyImpactNitron : TrDmgType_ConcussionGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_HeavyImpactNitron")); }
	private static __gshared TrDmgType_HeavyImpactNitron mDefaultProperties;
	@property final static TrDmgType_HeavyImpactNitron DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_HeavyImpactNitron)("TrDmgType_HeavyImpactNitron TribesGame.Default__TrDmgType_HeavyImpactNitron")); }
}
