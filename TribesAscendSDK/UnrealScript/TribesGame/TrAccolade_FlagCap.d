module UnrealScript.TribesGame.TrAccolade_FlagCap;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagCap : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_FlagCap")); }
	private static __gshared TrAccolade_FlagCap mDefaultProperties;
	@property final static TrAccolade_FlagCap DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_FlagCap)("TrAccolade_FlagCap TribesGame.Default__TrAccolade_FlagCap")); }
}
