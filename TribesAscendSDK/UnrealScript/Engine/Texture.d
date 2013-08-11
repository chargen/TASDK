module UnrealScript.Engine.Texture;

import ScriptClasses;
import UnrealScript.Engine.Surface;
import UnrealScript.Core.UObject;

extern(C++) interface Texture : Surface
{
	enum TextureCompressionSettings : ubyte
	{
		TC_Default = 0,
		TC_Normalmap = 1,
		TC_Displacementmap = 2,
		TC_NormalmapAlpha = 3,
		TC_Grayscale = 4,
		TC_HighDynamicRange = 5,
		TC_OneBitAlpha = 6,
		TC_NormalmapUncompressed = 7,
		TC_NormalmapBC5 = 8,
		TC_OneBitMonochrome = 9,
		TC_SimpleLightmapModification = 10,
		TC_VectorDisplacementmap = 11,
		TC_MAX = 12,
	}
	enum EPixelFormat : ubyte
	{
		PF_Unknown = 0,
		PF_A32B32G32R32F = 1,
		PF_A8R8G8B8 = 2,
		PF_G8 = 3,
		PF_G16 = 4,
		PF_DXT1 = 5,
		PF_DXT3 = 6,
		PF_DXT5 = 7,
		PF_UYVY = 8,
		PF_FloatRGB = 9,
		PF_FloatRGBA = 10,
		PF_DepthStencil = 11,
		PF_ShadowDepth = 12,
		PF_FilteredShadowDepth = 13,
		PF_R32F = 14,
		PF_G16R16 = 15,
		PF_G16R16F = 16,
		PF_G16R16F_FILTER = 17,
		PF_G32R32F = 18,
		PF_A2B10G10R10 = 19,
		PF_A16B16G16R16 = 20,
		PF_D24 = 21,
		PF_R16F = 22,
		PF_R16F_FILTER = 23,
		PF_BC5 = 24,
		PF_V8U8 = 25,
		PF_A1 = 26,
		PF_MAX = 27,
	}
	enum TextureFilter : ubyte
	{
		TF_Nearest = 0,
		TF_Linear = 1,
		TF_MAX = 2,
	}
	enum TextureAddress : ubyte
	{
		TA_Wrap = 0,
		TA_Clamp = 1,
		TA_Mirror = 2,
		TA_MAX = 3,
	}
	enum TextureGroup : ubyte
	{
		TEXTUREGROUP_World = 0,
		TEXTUREGROUP_WorldNormalMap = 1,
		TEXTUREGROUP_WorldSpecular = 2,
		TEXTUREGROUP_Character = 3,
		TEXTUREGROUP_CharacterNormalMap = 4,
		TEXTUREGROUP_CharacterSpecular = 5,
		TEXTUREGROUP_Weapon = 6,
		TEXTUREGROUP_WeaponNormalMap = 7,
		TEXTUREGROUP_WeaponSpecular = 8,
		TEXTUREGROUP_Vehicle = 9,
		TEXTUREGROUP_VehicleNormalMap = 10,
		TEXTUREGROUP_VehicleSpecular = 11,
		TEXTUREGROUP_Cinematic = 12,
		TEXTUREGROUP_Effects = 13,
		TEXTUREGROUP_EffectsNotFiltered = 14,
		TEXTUREGROUP_Skybox = 15,
		TEXTUREGROUP_UI = 16,
		TEXTUREGROUP_Lightmap = 17,
		TEXTUREGROUP_RenderTarget = 18,
		TEXTUREGROUP_MobileFlattened = 19,
		TEXTUREGROUP_ProcBuilding_Face = 20,
		TEXTUREGROUP_ProcBuilding_LightMap = 21,
		TEXTUREGROUP_Shadowmap = 22,
		TEXTUREGROUP_ColorLookupTable = 23,
		TEXTUREGROUP_Terrain_Heightmap = 24,
		TEXTUREGROUP_Terrain_Weightmap = 25,
		TEXTUREGROUP_ImageBasedReflection = 26,
		TEXTUREGROUP_MAX = 27,
	}
	enum TextureMipGenSettings : ubyte
	{
		TMGS_FromTextureGroup = 0,
		TMGS_SimpleAverage = 1,
		TMGS_Sharpen0 = 2,
		TMGS_Sharpen1 = 3,
		TMGS_Sharpen2 = 4,
		TMGS_Sharpen3 = 5,
		TMGS_Sharpen4 = 6,
		TMGS_Sharpen5 = 7,
		TMGS_Sharpen6 = 8,
		TMGS_Sharpen7 = 9,
		TMGS_Sharpen8 = 10,
		TMGS_Sharpen9 = 11,
		TMGS_Sharpen10 = 12,
		TMGS_NoMipmaps = 13,
		TMGS_LeaveExistingMips = 14,
		TMGS_Blur1 = 15,
		TMGS_Blur2 = 16,
		TMGS_Blur3 = 17,
		TMGS_Blur4 = 18,
		TMGS_Blur5 = 19,
		TMGS_MAX = 20,
	}
	struct TextureGroupContainer
	{
		public @property final bool TEXTUREGROUP_ImageBasedReflection() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000000) != 0; }
		public @property final bool TEXTUREGROUP_ImageBasedReflection(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000000; } return val; }
		private ubyte __TEXTUREGROUP_ImageBasedReflection[4];
		public @property final bool TEXTUREGROUP_Terrain_Weightmap() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000000) != 0; }
		public @property final bool TEXTUREGROUP_Terrain_Weightmap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000000; } return val; }
		private ubyte __TEXTUREGROUP_Terrain_Weightmap[4];
		public @property final bool TEXTUREGROUP_Terrain_Heightmap() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000000) != 0; }
		public @property final bool TEXTUREGROUP_Terrain_Heightmap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000000; } return val; }
		private ubyte __TEXTUREGROUP_Terrain_Heightmap[4];
		public @property final bool TEXTUREGROUP_ColorLookupTable() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800000) != 0; }
		public @property final bool TEXTUREGROUP_ColorLookupTable(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800000; } return val; }
		private ubyte __TEXTUREGROUP_ColorLookupTable[4];
		public @property final bool TEXTUREGROUP_Shadowmap() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400000) != 0; }
		public @property final bool TEXTUREGROUP_Shadowmap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400000; } return val; }
		private ubyte __TEXTUREGROUP_Shadowmap[4];
		public @property final bool TEXTUREGROUP_ProcBuilding_LightMap() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200000) != 0; }
		public @property final bool TEXTUREGROUP_ProcBuilding_LightMap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200000; } return val; }
		private ubyte __TEXTUREGROUP_ProcBuilding_LightMap[4];
		public @property final bool TEXTUREGROUP_ProcBuilding_Face() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100000) != 0; }
		public @property final bool TEXTUREGROUP_ProcBuilding_Face(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100000; } return val; }
		private ubyte __TEXTUREGROUP_ProcBuilding_Face[4];
		public @property final bool TEXTUREGROUP_MobileFlattened() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80000) != 0; }
		public @property final bool TEXTUREGROUP_MobileFlattened(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80000; } return val; }
		private ubyte __TEXTUREGROUP_MobileFlattened[4];
		public @property final bool TEXTUREGROUP_RenderTarget() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40000) != 0; }
		public @property final bool TEXTUREGROUP_RenderTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40000; } return val; }
		private ubyte __TEXTUREGROUP_RenderTarget[4];
		public @property final bool TEXTUREGROUP_Lightmap() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20000) != 0; }
		public @property final bool TEXTUREGROUP_Lightmap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20000; } return val; }
		private ubyte __TEXTUREGROUP_Lightmap[4];
		public @property final bool TEXTUREGROUP_UI() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10000) != 0; }
		public @property final bool TEXTUREGROUP_UI(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10000; } return val; }
		private ubyte __TEXTUREGROUP_UI[4];
		public @property final bool TEXTUREGROUP_Skybox() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8000) != 0; }
		public @property final bool TEXTUREGROUP_Skybox(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8000; } return val; }
		private ubyte __TEXTUREGROUP_Skybox[4];
		public @property final bool TEXTUREGROUP_EffectsNotFiltered() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000) != 0; }
		public @property final bool TEXTUREGROUP_EffectsNotFiltered(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000; } return val; }
		private ubyte __TEXTUREGROUP_EffectsNotFiltered[4];
		public @property final bool TEXTUREGROUP_Effects() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000) != 0; }
		public @property final bool TEXTUREGROUP_Effects(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000; } return val; }
		private ubyte __TEXTUREGROUP_Effects[4];
		public @property final bool TEXTUREGROUP_Cinematic() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000) != 0; }
		public @property final bool TEXTUREGROUP_Cinematic(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000; } return val; }
		private ubyte __TEXTUREGROUP_Cinematic[4];
		public @property final bool TEXTUREGROUP_VehicleSpecular() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800) != 0; }
		public @property final bool TEXTUREGROUP_VehicleSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800; } return val; }
		private ubyte __TEXTUREGROUP_VehicleSpecular[4];
		public @property final bool TEXTUREGROUP_VehicleNormalMap() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400) != 0; }
		public @property final bool TEXTUREGROUP_VehicleNormalMap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400; } return val; }
		private ubyte __TEXTUREGROUP_VehicleNormalMap[4];
		public @property final bool TEXTUREGROUP_Vehicle() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200) != 0; }
		public @property final bool TEXTUREGROUP_Vehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200; } return val; }
		private ubyte __TEXTUREGROUP_Vehicle[4];
		public @property final bool TEXTUREGROUP_WeaponSpecular() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100) != 0; }
		public @property final bool TEXTUREGROUP_WeaponSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100; } return val; }
		private ubyte __TEXTUREGROUP_WeaponSpecular[4];
		public @property final bool TEXTUREGROUP_WeaponNormalMap() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80) != 0; }
		public @property final bool TEXTUREGROUP_WeaponNormalMap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80; } return val; }
		private ubyte __TEXTUREGROUP_WeaponNormalMap[4];
		public @property final bool TEXTUREGROUP_Weapon() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40) != 0; }
		public @property final bool TEXTUREGROUP_Weapon(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40; } return val; }
		private ubyte __TEXTUREGROUP_Weapon[4];
		public @property final bool TEXTUREGROUP_CharacterSpecular() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
		public @property final bool TEXTUREGROUP_CharacterSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
		private ubyte __TEXTUREGROUP_CharacterSpecular[4];
		public @property final bool TEXTUREGROUP_CharacterNormalMap() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
		public @property final bool TEXTUREGROUP_CharacterNormalMap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
		private ubyte __TEXTUREGROUP_CharacterNormalMap[4];
		public @property final bool TEXTUREGROUP_Character() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
		public @property final bool TEXTUREGROUP_Character(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
		private ubyte __TEXTUREGROUP_Character[4];
		public @property final bool TEXTUREGROUP_WorldSpecular() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool TEXTUREGROUP_WorldSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __TEXTUREGROUP_WorldSpecular[4];
		public @property final bool TEXTUREGROUP_WorldNormalMap() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool TEXTUREGROUP_WorldNormalMap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __TEXTUREGROUP_WorldNormalMap[4];
		public @property final bool TEXTUREGROUP_World() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool TEXTUREGROUP_World(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __TEXTUREGROUP_World[4];
	}
	public @property final auto ref int InternalFormatLODBias() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref float AdjustHue() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref float AdjustRGBCurve() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref float AdjustSaturation() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref float AdjustVibrance() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref float AdjustBrightnessCurve() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref float AdjustBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref UObject.Guid LightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref UObject.Pointer Resource() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref ScriptString SourceFileTimestamp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptString SourceFilePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int NumCinematicMipLevels() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int CachedCombinedLODBias() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int LODBias() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref Texture.TextureMipGenSettings MipGenSettings() { return *cast(Texture.TextureMipGenSettings*)(cast(size_t)cast(void*)this + 151); }
	// WARNING: Property 'LODGroup' has the same name as a defined type!
	public @property final auto ref Texture.TextureFilter Filter() { return *cast(Texture.TextureFilter*)(cast(size_t)cast(void*)this + 149); }
	public @property final auto ref Texture.TextureCompressionSettings CompressionSettings() { return *cast(Texture.TextureCompressionSettings*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref UObject.UntypedBulkData_Mirror SourceArt() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float UnpackMax() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float UnpackMin() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bUseCinematicMipLevels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20000) != 0; }
	public @property final bool bUseCinematicMipLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20000; } return val; }
	public @property final bool bAsyncResourceReleaseHasBeenStarted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10000) != 0; }
	public @property final bool bAsyncResourceReleaseHasBeenStarted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10000; } return val; }
	public @property final bool bForcePVRTC4() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8000) != 0; }
	public @property final bool bForcePVRTC4(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8000; } return val; }
	public @property final bool bNoTiling() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4000) != 0; }
	public @property final bool bNoTiling(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4000; } return val; }
	public @property final bool bPreserveBorderA() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2000) != 0; }
	public @property final bool bPreserveBorderA(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2000; } return val; }
	public @property final bool bPreserveBorderB() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1000) != 0; }
	public @property final bool bPreserveBorderB(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1000; } return val; }
	public @property final bool bPreserveBorderG() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x800) != 0; }
	public @property final bool bPreserveBorderG(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x800; } return val; }
	public @property final bool bPreserveBorderR() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x400) != 0; }
	public @property final bool bPreserveBorderR(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x400; } return val; }
	public @property final bool bDitherMipMapAlpha() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x200) != 0; }
	public @property final bool bDitherMipMapAlpha(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x200; } return val; }
	public @property final bool NeverStream() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x100) != 0; }
	public @property final bool NeverStream(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x100; } return val; }
	public @property final bool DeferCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x80) != 0; }
	public @property final bool DeferCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x80; } return val; }
	public @property final bool CompressionFullDynamicRange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x40) != 0; }
	public @property final bool CompressionFullDynamicRange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x40; } return val; }
	public @property final bool CompressionNoMipmaps() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20) != 0; }
	public @property final bool CompressionNoMipmaps(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20; } return val; }
	public @property final bool CompressionNone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
	public @property final bool CompressionNone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
	public @property final bool CompressionNoAlpha() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
	public @property final bool CompressionNoAlpha(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	public @property final bool bIsSourceArtUncompressed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
	public @property final bool bIsSourceArtUncompressed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
	public @property final bool RGBE() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool RGBE(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final bool SRGB() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool SRGB(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
}