module UnrealScript.TribesGame.TrAccolade_GenDefense;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_GenDefense : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_GenDefense")); }
	private static __gshared TrAccolade_GenDefense mDefaultProperties;
	@property final static TrAccolade_GenDefense DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_GenDefense)("TrAccolade_GenDefense TribesGame.Default__TrAccolade_GenDefense")); }
}
