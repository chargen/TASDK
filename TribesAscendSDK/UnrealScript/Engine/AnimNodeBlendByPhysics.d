module UnrealScript.Engine.AnimNodeBlendByPhysics;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface AnimNodeBlendByPhysics : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeBlendByPhysics")); }
	private static __gshared AnimNodeBlendByPhysics mDefaultProperties;
	@property final static AnimNodeBlendByPhysics DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeBlendByPhysics)("AnimNodeBlendByPhysics Engine.Default__AnimNodeBlendByPhysics")); }
}
