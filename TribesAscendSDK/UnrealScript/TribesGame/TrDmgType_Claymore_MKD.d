module UnrealScript.TribesGame.TrDmgType_Claymore_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_Claymore_MKD : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Claymore_MKD")); }
	private static __gshared TrDmgType_Claymore_MKD mDefaultProperties;
	@property final static TrDmgType_Claymore_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Claymore_MKD)("TrDmgType_Claymore_MKD TribesGame.Default__TrDmgType_Claymore_MKD")); }
}
