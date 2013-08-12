module UnrealScript.Engine.MaterialExpressionStaticSwitchParameter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionParameter;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionStaticSwitchParameter : MaterialExpressionParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionStaticSwitchParameter")); }
	private static __gshared MaterialExpressionStaticSwitchParameter mDefaultProperties;
	@property final static MaterialExpressionStaticSwitchParameter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionStaticSwitchParameter)("MaterialExpressionStaticSwitchParameter Engine.Default__MaterialExpressionStaticSwitchParameter")); }
	@property final
	{
		auto ref
		{
			UObject.Pointer InstanceOverride() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 192); }
			MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 164); }
			MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		}
		bool ExtendedCaptionDisplay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x2) != 0; }
		bool ExtendedCaptionDisplay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x2; } return val; }
		bool DefaultValue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
		bool DefaultValue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	}
}
