module UnrealScript.TribesGame.TrAttachment_SpinfusorD_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SpinfusorD_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_SpinfusorD_MKD")); }
	private static __gshared TrAttachment_SpinfusorD_MKD mDefaultProperties;
	@property final static TrAttachment_SpinfusorD_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_SpinfusorD_MKD)("TrAttachment_SpinfusorD_MKD TribesGame.Default__TrAttachment_SpinfusorD_MKD")); }
}
