module UnrealScript.Engine.InterpGroupInst;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpGroupInst : UObject
{
	public @property final auto ref ScriptArray!(InterpTrackInst) TrackInst() { return *cast(ScriptArray!(InterpTrackInst)*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref Actor GroupActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref InterpGroup Group() { return *cast(InterpGroup*)(cast(size_t)cast(void*)this + 60); }
}