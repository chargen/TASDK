module UnrealScript.UnrealEd.BrowserManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface BrowserManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.BrowserManager")); }
	private static __gshared BrowserManager mDefaultProperties;
	@property final static BrowserManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(BrowserManager)("BrowserManager UnrealEd.Default__BrowserManager")); }
}
