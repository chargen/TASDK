module UnrealScript.TribesGame.TrDevice_SN7_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_SN7;

extern(C++) interface TrDevice_SN7_MKD : TrDevice_SN7
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_SN7_MKD")); }
	private static __gshared TrDevice_SN7_MKD mDefaultProperties;
	@property final static TrDevice_SN7_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_SN7_MKD)("TrDevice_SN7_MKD TribesGame.Default__TrDevice_SN7_MKD")); }
}
