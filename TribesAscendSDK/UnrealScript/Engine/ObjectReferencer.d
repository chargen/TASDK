module UnrealScript.Engine.ObjectReferencer;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ObjectReferencer : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ObjectReferencer")); }
	private static __gshared ObjectReferencer mDefaultProperties;
	@property final static ObjectReferencer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ObjectReferencer)("ObjectReferencer Engine.Default__ObjectReferencer")); }
	@property final auto ref ScriptArray!(UObject) ReferencedObjects() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 60); }
}
