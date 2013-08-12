module UnrealScript.Engine.ApexStaticComponent;

import ScriptClasses;
import UnrealScript.Engine.ApexComponentBase;

extern(C++) interface ApexStaticComponent : ApexComponentBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ApexStaticComponent")); }
	private static __gshared ApexStaticComponent mDefaultProperties;
	@property final static ApexStaticComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ApexStaticComponent)("ApexStaticComponent Engine.Default__ApexStaticComponent")); }
}
