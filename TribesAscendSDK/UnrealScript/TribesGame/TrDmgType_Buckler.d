module UnrealScript.TribesGame.TrDmgType_Buckler;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_Buckler : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Buckler")); }
	private static __gshared TrDmgType_Buckler mDefaultProperties;
	@property final static TrDmgType_Buckler DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Buckler)("TrDmgType_Buckler TribesGame.Default__TrDmgType_Buckler")); }
}
