module UnrealScript.Engine.MaterialExpressionWorldNormal;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionWorldNormal : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionWorldNormal")); }
	private static __gshared MaterialExpressionWorldNormal mDefaultProperties;
	@property final static MaterialExpressionWorldNormal DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionWorldNormal)("MaterialExpressionWorldNormal Engine.Default__MaterialExpressionWorldNormal")); }
}
