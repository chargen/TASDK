module UnrealScript.UDKBase.UDKScout;

import ScriptClasses;
import UnrealScript.Engine.Scout;

extern(C++) interface UDKScout : Scout
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKScout")); }
	private static __gshared UDKScout mDefaultProperties;
	@property final static UDKScout DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKScout)("UDKScout UDKBase.Default__UDKScout")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSuggestJumpVelocity;
		public @property static final ScriptFunction SuggestJumpVelocity() { return mSuggestJumpVelocity ? mSuggestJumpVelocity : (mSuggestJumpVelocity = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKScout.SuggestJumpVelocity")); }
	}
	@property final
	{
		auto ref
		{
			ScriptName SizePersonFindName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1296); }
			ScriptClass PrototypePawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1292); }
			float MaxDoubleJumpHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1288); }
		}
		bool bRequiresDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1284) & 0x1) != 0; }
		bool bRequiresDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1284) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1284) &= ~0x1; } return val; }
	}
	final bool SuggestJumpVelocity(Vector* JumpVelocity, Vector Destination, Vector Start, bool bRequireFallLanding)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = *JumpVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		*cast(bool*)&params[36] = bRequireFallLanding;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestJumpVelocity, params.ptr, cast(void*)0);
		*JumpVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[40];
	}
}
