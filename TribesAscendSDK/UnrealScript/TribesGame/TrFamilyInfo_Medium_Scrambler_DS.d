module UnrealScript.TribesGame.TrFamilyInfo_Medium_Scrambler_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium_Scrambler;

extern(C++) interface TrFamilyInfo_Medium_Scrambler_DS : TrFamilyInfo_Medium_Scrambler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium_Scrambler_DS")); }
	private static __gshared TrFamilyInfo_Medium_Scrambler_DS mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Scrambler_DS DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Medium_Scrambler_DS)("TrFamilyInfo_Medium_Scrambler_DS TribesGame.Default__TrFamilyInfo_Medium_Scrambler_DS")); }
}
