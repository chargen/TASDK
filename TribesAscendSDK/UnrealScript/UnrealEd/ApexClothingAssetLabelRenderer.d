module UnrealScript.UnrealEd.ApexClothingAssetLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface ApexClothingAssetLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ApexClothingAssetLabelRenderer")); }
	private static __gshared ApexClothingAssetLabelRenderer mDefaultProperties;
	@property final static ApexClothingAssetLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ApexClothingAssetLabelRenderer)("ApexClothingAssetLabelRenderer UnrealEd.Default__ApexClothingAssetLabelRenderer")); }
}
