module UnrealScript.TribesGame.TrFamilyInfo_Medium_Engineer_DS;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium_Engineer;

extern(C++) interface TrFamilyInfo_Medium_Engineer_DS : TrFamilyInfo_Medium_Engineer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Medium_Engineer_DS")); }
	private static __gshared TrFamilyInfo_Medium_Engineer_DS mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Engineer_DS DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Medium_Engineer_DS", "TrFamilyInfo_Medium_Engineer_DS TribesGame.Default__TrFamilyInfo_Medium_Engineer_DS")); }
}
