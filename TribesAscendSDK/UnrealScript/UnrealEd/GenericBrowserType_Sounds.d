module UnrealScript.UnrealEd.GenericBrowserType_Sounds;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Sounds : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_Sounds")); }
	private static __gshared GenericBrowserType_Sounds mDefaultProperties;
	@property final static GenericBrowserType_Sounds DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_Sounds)("GenericBrowserType_Sounds UnrealEd.Default__GenericBrowserType_Sounds")); }
}
