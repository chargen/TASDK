module UnrealScript.GameFramework.PMESTG_LeaveADecalBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleEventSendToGame;

extern(C++) interface PMESTG_LeaveADecalBase : ParticleModuleEventSendToGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.PMESTG_LeaveADecalBase")); }
	private static __gshared PMESTG_LeaveADecalBase mDefaultProperties;
	@property final static PMESTG_LeaveADecalBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PMESTG_LeaveADecalBase)("PMESTG_LeaveADecalBase GameFramework.Default__PMESTG_LeaveADecalBase")); }
	@property final auto ref ScriptClass PhysicalMaterialPropertyClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 60); }
}
