module UnrealScript.Engine.LightmassPrimitiveSettingsObject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface LightmassPrimitiveSettingsObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LightmassPrimitiveSettingsObject")); }
	private static __gshared LightmassPrimitiveSettingsObject mDefaultProperties;
	@property final static LightmassPrimitiveSettingsObject DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LightmassPrimitiveSettingsObject)("LightmassPrimitiveSettingsObject Engine.Default__LightmassPrimitiveSettingsObject")); }
	@property final auto ref EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 60); }
}
