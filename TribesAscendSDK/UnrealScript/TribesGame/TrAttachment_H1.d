module UnrealScript.TribesGame.TrAttachment_H1;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_H1 : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_H1")); }
	private static __gshared TrAttachment_H1 mDefaultProperties;
	@property final static TrAttachment_H1 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_H1)("TrAttachment_H1 TribesGame.Default__TrAttachment_H1")); }
}
