module UnrealScript.UDKBase.UDKSkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface UDKSkeletalMeshComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkeletalMeshComponent")); }
	private static __gshared UDKSkeletalMeshComponent mDefaultProperties;
	@property final static UDKSkeletalMeshComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKSkeletalMeshComponent)("UDKSkeletalMeshComponent UDKBase.Default__UDKSkeletalMeshComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreloadTextures;
			ScriptFunction mSetFOV;
		}
		public @property static final
		{
			ScriptFunction PreloadTextures() { return mPreloadTextures ? mPreloadTextures : (mPreloadTextures = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKSkeletalMeshComponent.PreloadTextures")); }
			ScriptFunction SetFOV() { return mSetFOV ? mSetFOV : (mSetFOV = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKSkeletalMeshComponent.SetFOV")); }
		}
	}
	@property final
	{
		auto ref
		{
			float ClearStreamingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1520); }
			float FOV() { return *cast(float*)(cast(size_t)cast(void*)this + 1512); }
		}
		bool bForceLoadTextures() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1516) & 0x1) != 0; }
		bool bForceLoadTextures(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1516) &= ~0x1; } return val; }
	}
final:
	void PreloadTextures(bool bForcePreload, float ClearTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForcePreload;
		*cast(float*)&params[4] = ClearTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreloadTextures, params.ptr, cast(void*)0);
	}
	void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFOV, params.ptr, cast(void*)0);
	}
}
