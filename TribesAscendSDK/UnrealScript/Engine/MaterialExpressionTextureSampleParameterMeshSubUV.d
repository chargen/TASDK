module UnrealScript.Engine.MaterialExpressionTextureSampleParameterMeshSubUV;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter2D;

extern(C++) interface MaterialExpressionTextureSampleParameterMeshSubUV : MaterialExpressionTextureSampleParameter2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureSampleParameterMeshSubUV")); }
	private static __gshared MaterialExpressionTextureSampleParameterMeshSubUV mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameterMeshSubUV DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionTextureSampleParameterMeshSubUV)("MaterialExpressionTextureSampleParameterMeshSubUV Engine.Default__MaterialExpressionTextureSampleParameterMeshSubUV")); }
}
