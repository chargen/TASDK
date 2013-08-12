module UnrealScript.Engine.AnimObject;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface AnimObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimObject")); }
	private static __gshared AnimObject mDefaultProperties;
	@property final static AnimObject DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimObject)("AnimObject Engine.Default__AnimObject")); }
	@property final auto ref
	{
		ScriptString CategoryDesc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
		int OutDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		int NodePosY() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
		int NodePosX() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
		int DrawHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		int DrawWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
}
