module UnrealScript.UnrealEd.OutputAuditSummaryCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface OutputAuditSummaryCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.OutputAuditSummaryCommandlet")); }
	private static __gshared OutputAuditSummaryCommandlet mDefaultProperties;
	@property final static OutputAuditSummaryCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OutputAuditSummaryCommandlet)("OutputAuditSummaryCommandlet UnrealEd.Default__OutputAuditSummaryCommandlet")); }
}
