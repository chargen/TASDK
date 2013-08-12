module UnrealScript.Core.ClassProperty;

import ScriptClasses;
import UnrealScript.Core.ObjectProperty;

extern(C++) interface ClassProperty : ObjectProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.ClassProperty")); }
	private static __gshared ClassProperty mDefaultProperties;
	@property final static ClassProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ClassProperty)("ClassProperty Core.Default__ClassProperty")); }
}
