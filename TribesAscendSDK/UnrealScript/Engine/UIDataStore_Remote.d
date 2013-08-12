module UnrealScript.Engine.UIDataStore_Remote;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_Remote : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_Remote")); }
	private static __gshared UIDataStore_Remote mDefaultProperties;
	@property final static UIDataStore_Remote DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDataStore_Remote)("UIDataStore_Remote Engine.Default__UIDataStore_Remote")); }
}
