module UnrealScript.Engine.ForceFieldShapeCapsule;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface ForceFieldShapeCapsule : ForceFieldShape
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ForceFieldShapeCapsule")); }
	private static __gshared ForceFieldShapeCapsule mDefaultProperties;
	@property final static ForceFieldShapeCapsule DefaultProperties() { mixin(MGDPC("ForceFieldShapeCapsule", "ForceFieldShapeCapsule Engine.Default__ForceFieldShapeCapsule")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetHeight;
			ScriptFunction mGetRadius;
			ScriptFunction mFillBySphere;
			ScriptFunction mFillByBox;
			ScriptFunction mFillByCapsule;
			ScriptFunction mFillByCylinder;
			ScriptFunction mGetDrawComponent;
		}
		public @property static final
		{
			ScriptFunction GetHeight() { mixin(MGF("mGetHeight", "Function Engine.ForceFieldShapeCapsule.GetHeight")); }
			ScriptFunction GetRadius() { mixin(MGF("mGetRadius", "Function Engine.ForceFieldShapeCapsule.GetRadius")); }
			ScriptFunction FillBySphere() { mixin(MGF("mFillBySphere", "Function Engine.ForceFieldShapeCapsule.FillBySphere")); }
			ScriptFunction FillByBox() { mixin(MGF("mFillByBox", "Function Engine.ForceFieldShapeCapsule.FillByBox")); }
			ScriptFunction FillByCapsule() { mixin(MGF("mFillByCapsule", "Function Engine.ForceFieldShapeCapsule.FillByCapsule")); }
			ScriptFunction FillByCylinder() { mixin(MGF("mFillByCylinder", "Function Engine.ForceFieldShapeCapsule.FillByCylinder")); }
			ScriptFunction GetDrawComponent() { mixin(MGF("mGetDrawComponent", "Function Engine.ForceFieldShapeCapsule.GetDrawComponent")); }
		}
	}
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Shape'!
final:
	float GetHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHeight, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRadius, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void FillBySphere(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillBySphere, params.ptr, cast(void*)0);
	}
	void FillByBox(Vector Extent)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillByBox, params.ptr, cast(void*)0);
	}
	void FillByCapsule(float Height, float Radius)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Height;
		*cast(float*)&params[4] = Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillByCapsule, params.ptr, cast(void*)0);
	}
	void FillByCylinder(float BottomRadius, float TopRadius, float Height, float HeightOffset)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = BottomRadius;
		*cast(float*)&params[4] = TopRadius;
		*cast(float*)&params[8] = Height;
		*cast(float*)&params[12] = HeightOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillByCylinder, params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetDrawComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDrawComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr;
	}
}
