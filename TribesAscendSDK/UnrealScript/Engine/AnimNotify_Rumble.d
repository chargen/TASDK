module UnrealScript.Engine.AnimNotify_Rumble;

import ScriptClasses;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Rumble : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_Rumble")); }
	private static __gshared AnimNotify_Rumble mDefaultProperties;
	@property final static AnimNotify_Rumble DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNotify_Rumble)("AnimNotify_Rumble Engine.Default__AnimNotify_Rumble")); }
	@property final
	{
		auto ref
		{
			ScriptClass PredefinedWaveForm() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 64); }
			ForceFeedbackWaveform WaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 68); }
			float EffectRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bCheckForBasedPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bCheckForBasedPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
}
