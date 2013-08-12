module UnrealScript.TribesGame.TrDevice_SaberLauncher_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_SaberLauncher_MKD : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_SaberLauncher_MKD")); }
	private static __gshared TrDevice_SaberLauncher_MKD mDefaultProperties;
	@property final static TrDevice_SaberLauncher_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_SaberLauncher_MKD)("TrDevice_SaberLauncher_MKD TribesGame.Default__TrDevice_SaberLauncher_MKD")); }
}
