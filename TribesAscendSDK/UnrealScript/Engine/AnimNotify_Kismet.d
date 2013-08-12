module UnrealScript.Engine.AnimNotify_Kismet;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Kismet : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_Kismet")); }
	private static __gshared AnimNotify_Kismet mDefaultProperties;
	@property final static AnimNotify_Kismet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNotify_Kismet)("AnimNotify_Kismet Engine.Default__AnimNotify_Kismet")); }
	@property final auto ref ScriptName NotifyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 64); }
}
