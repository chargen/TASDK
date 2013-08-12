module UnrealScript.Engine.DrawCapsuleComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawCapsuleComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawCapsuleComponent")); }
	private static __gshared DrawCapsuleComponent mDefaultProperties;
	@property final static DrawCapsuleComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DrawCapsuleComponent)("DrawCapsuleComponent Engine.Default__DrawCapsuleComponent")); }
	@property final
	{
		auto ref
		{
			float CapsuleRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float CapsuleHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			Material CapsuleMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 492); }
			UObject.Color CapsuleColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bDrawOnlyIfSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x4) != 0; }
		bool bDrawOnlyIfSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x4; } return val; }
		bool bDrawLitCapsule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x2) != 0; }
		bool bDrawLitCapsule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x2; } return val; }
		bool bDrawWireCapsule() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
		bool bDrawWireCapsule(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	}
}
