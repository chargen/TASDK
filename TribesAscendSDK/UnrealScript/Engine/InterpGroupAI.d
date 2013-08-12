module UnrealScript.Engine.InterpGroupAI;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpGroupAI : InterpGroup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpGroupAI")); }
	private static __gshared InterpGroupAI mDefaultProperties;
	@property final static InterpGroupAI DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpGroupAI)("InterpGroupAI Engine.Default__InterpGroupAI")); }
	@property final
	{
		auto ref
		{
			Actor StageMarkActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 120); }
			Pawn PreviewPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 116); }
			ScriptName StageMarkGroup() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 108); }
			ScriptClass PreviewPawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 104); }
		}
		bool bNoEncroachmentCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
		bool bNoEncroachmentCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
		bool SnapToRootBoneLocationWhenFinished() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
		bool SnapToRootBoneLocationWhenFinished(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	}
}
