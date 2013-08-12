module UnrealScript.Engine.GravityVolume;

import ScriptClasses;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface GravityVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GravityVolume")); }
	private static __gshared GravityVolume mDefaultProperties;
	@property final static GravityVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GravityVolume)("GravityVolume Engine.Default__GravityVolume")); }
	@property final auto ref float GravityZ() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
}
