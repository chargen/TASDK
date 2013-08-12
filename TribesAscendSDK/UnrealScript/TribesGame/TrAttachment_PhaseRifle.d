module UnrealScript.TribesGame.TrAttachment_PhaseRifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_PhaseRifle : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_PhaseRifle")); }
	private static __gshared TrAttachment_PhaseRifle mDefaultProperties;
	@property final static TrAttachment_PhaseRifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_PhaseRifle)("TrAttachment_PhaseRifle TribesGame.Default__TrAttachment_PhaseRifle")); }
}
