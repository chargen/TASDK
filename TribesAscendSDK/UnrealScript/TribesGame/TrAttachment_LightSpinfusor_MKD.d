module UnrealScript.TribesGame.TrAttachment_LightSpinfusor_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightSpinfusor_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_LightSpinfusor_MKD")); }
	private static __gshared TrAttachment_LightSpinfusor_MKD mDefaultProperties;
	@property final static TrAttachment_LightSpinfusor_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_LightSpinfusor_MKD)("TrAttachment_LightSpinfusor_MKD TribesGame.Default__TrAttachment_LightSpinfusor_MKD")); }
}
