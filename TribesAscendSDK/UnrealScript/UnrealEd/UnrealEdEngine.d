module UnrealScript.UnrealEd.UnrealEdEngine;

import ScriptClasses;
import UnrealScript.UnrealEd.EditorEngine;

extern(C++) interface UnrealEdEngine : EditorEngine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.UnrealEdEngine")); }
	private static __gshared UnrealEdEngine mDefaultProperties;
	@property final static UnrealEdEngine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UnrealEdEngine)("UnrealEdEngine UnrealEd.Default__UnrealEdEngine")); }
}
