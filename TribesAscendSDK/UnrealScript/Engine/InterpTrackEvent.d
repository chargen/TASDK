module UnrealScript.Engine.InterpTrackEvent;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackEvent : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackEvent")); }
	private static __gshared InterpTrackEvent mDefaultProperties;
	@property final static InterpTrackEvent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackEvent)("InterpTrackEvent Engine.Default__InterpTrackEvent")); }
	struct EventTrackKey
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrackEvent.EventTrackKey")); }
		@property final auto ref
		{
			ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(InterpTrackEvent.EventTrackKey) EventTrack() { return *cast(ScriptArray!(InterpTrackEvent.EventTrackKey)*)(cast(size_t)cast(void*)this + 128); }
		bool bFireEventsWhenJumpingForwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
		bool bFireEventsWhenJumpingForwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
		bool bFireEventsWhenBackwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
		bool bFireEventsWhenBackwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
		bool bFireEventsWhenForwards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bFireEventsWhenForwards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
}
