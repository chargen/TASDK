module UnrealScript.TribesGame.TrDmgType_RepairToolSD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_RepairTool;

extern(C++) interface TrDmgType_RepairToolSD : TrDmgType_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_RepairToolSD")); }
	private static __gshared TrDmgType_RepairToolSD mDefaultProperties;
	@property final static TrDmgType_RepairToolSD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_RepairToolSD)("TrDmgType_RepairToolSD TribesGame.Default__TrDmgType_RepairToolSD")); }
}
