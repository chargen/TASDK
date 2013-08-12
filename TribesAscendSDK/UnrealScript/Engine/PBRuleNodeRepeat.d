module UnrealScript.Engine.PBRuleNodeRepeat;

import ScriptClasses;
import UnrealScript.Engine.ProcBuildingRuleset;
import UnrealScript.Engine.PBRuleNodeBase;

extern(C++) interface PBRuleNodeRepeat : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeRepeat")); }
	private static __gshared PBRuleNodeRepeat mDefaultProperties;
	@property final static PBRuleNodeRepeat DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PBRuleNodeRepeat)("PBRuleNodeRepeat Engine.Default__PBRuleNodeRepeat")); }
	@property final auto ref
	{
		float RepeatMaxSize() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
		ProcBuildingRuleset.EProcBuildingAxis RepeatAxis() { return *cast(ProcBuildingRuleset.EProcBuildingAxis*)(cast(size_t)cast(void*)this + 104); }
	}
}
