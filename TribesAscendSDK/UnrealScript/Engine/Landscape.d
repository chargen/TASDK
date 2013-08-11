module UnrealScript.Engine.Landscape;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;
import UnrealScript.Engine.EngineTypes;
import UnrealScript.Engine.Material;

extern(C++) interface Landscape : Info
{
	struct LandscapeLayerInfo
	{
		public @property final auto ref MaterialInstanceConstant ThumbnailMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)&this + 16); }
		private ubyte __ThumbnailMIC[4];
		public @property final bool bNoWeightBlend() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bNoWeightBlend(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bNoWeightBlend[4];
		public @property final auto ref float Hardness() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Hardness[4];
		public @property final auto ref ScriptName LayerName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __LayerName[8];
	}
	struct LandscapeWeightmapUsage
	{
	}
	public @property final auto ref ScriptArray!(ScriptName) LayerNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref ScriptArray!(Landscape.LandscapeLayerInfo) LayerInfos() { return *cast(ScriptArray!(Landscape.LandscapeLayerInfo)*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) LandscapeComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) CollisionComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref int NumSubsections() { return *cast(int*)(cast(size_t)cast(void*)this + 820); }
	public @property final auto ref int SubsectionSizeQuads() { return *cast(int*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref int ComponentSizeQuads() { return *cast(int*)(cast(size_t)cast(void*)this + 812); }
	public @property final auto ref UObject.Pointer DataInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 808); }
	public @property final auto ref float StreamingDistanceMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref int StaticLightingResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref int MaxLODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref Material LandscapeMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 476); }
}