module UnrealScript.Engine.MaterialExpressionIf;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionIf : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionIf")); }
	private static __gshared MaterialExpressionIf mDefaultProperties;
	@property final static MaterialExpressionIf DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionIf)("MaterialExpressionIf Engine.Default__MaterialExpressionIf")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput ALessThanB() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 220); }
		MaterialExpression.ExpressionInput AEqualsB() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 192); }
		MaterialExpression.ExpressionInput AGreaterThanB() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
