module UnrealScript.TribesGame.TrProj_MIRVGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_MIRVLauncher;

extern(C++) interface TrProj_MIRVGrenade : TrProj_MIRVLauncher
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_MIRVGrenade")); }
	private static __gshared TrProj_MIRVGrenade mDefaultProperties;
	@property final static TrProj_MIRVGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_MIRVGrenade)("TrProj_MIRVGrenade TribesGame.Default__TrProj_MIRVGrenade")); }
}
