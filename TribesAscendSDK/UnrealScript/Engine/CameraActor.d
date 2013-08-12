module UnrealScript.Engine.CameraActor;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.HUD;

extern(C++) interface CameraActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CameraActor")); }
	private static __gshared CameraActor mDefaultProperties;
	@property final static CameraActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CameraActor)("CameraActor Engine.Default__CameraActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetCameraView;
			ScriptFunction mDisplayDebug;
		}
		public @property static final
		{
			ScriptFunction GetCameraView() { return mGetCameraView ? mGetCameraView : (mGetCameraView = ScriptObject.Find!(ScriptFunction)("Function Engine.CameraActor.GetCameraView")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function Engine.CameraActor.DisplayDebug")); }
		}
	}
	@property final
	{
		auto ref
		{
			float AspectRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
			float CamOverridePostProcessAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			PostProcessVolume.PostProcessSettings CamOverridePostProcess() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 492); }
			float FOVAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bConstrainAspectRatio() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bConstrainAspectRatio(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
		bool bCamOverridePostProcess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
		bool bCamOverridePostProcess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
	}
final:
	void GetCameraView(float DeltaTime, UObject.TPOV* OutPOV)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UObject.TPOV*)&params[4] = *OutPOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCameraView, params.ptr, cast(void*)0);
		*OutPOV = *cast(UObject.TPOV*)&params[4];
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
}
