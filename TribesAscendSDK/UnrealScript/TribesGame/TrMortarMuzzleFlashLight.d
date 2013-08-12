module UnrealScript.TribesGame.TrMortarMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMortarMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMortarMuzzleFlashLight")); }
	private static __gshared TrMortarMuzzleFlashLight mDefaultProperties;
	@property final static TrMortarMuzzleFlashLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrMortarMuzzleFlashLight)("TrMortarMuzzleFlashLight TribesGame.Default__TrMortarMuzzleFlashLight")); }
}
