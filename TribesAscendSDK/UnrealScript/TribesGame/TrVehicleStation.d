module UnrealScript.TribesGame.TrVehicleStation;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrVehiclePad;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrStation;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicleStation : TrStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleStation")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRequestSpawnVehicle;
			ScriptFunction mGetNumVehiclesSpawnedByType;
			ScriptFunction mGetMaxVehicleCountAllowed;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mPawnEnteredStation;
			ScriptFunction mPawnLeftStation;
			ScriptFunction mPlayStationEnteredEffects;
			ScriptFunction mPlayStationLeftEffects;
			ScriptFunction mPlayRetractAnim;
			ScriptFunction mPlayVehiclePadDeployAnim;
			ScriptFunction mPlayVehiclePadCollapseAnim;
			ScriptFunction mSpawnVehicle;
			ScriptFunction mTeleportDriverToVehicle;
			ScriptFunction mUnlock;
			ScriptFunction mAbleToSpawnVehicleType;
			ScriptFunction mAddVehicleToPackedList;
			ScriptFunction mGetMarker;
			ScriptFunction mShouldPostRenderForCaH;
		}
		public @property static final
		{
			ScriptFunction RequestSpawnVehicle() { return mRequestSpawnVehicle ? mRequestSpawnVehicle : (mRequestSpawnVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.RequestSpawnVehicle")); }
			ScriptFunction GetNumVehiclesSpawnedByType() { return mGetNumVehiclesSpawnedByType ? mGetNumVehiclesSpawnedByType : (mGetNumVehiclesSpawnedByType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.GetNumVehiclesSpawnedByType")); }
			ScriptFunction GetMaxVehicleCountAllowed() { return mGetMaxVehicleCountAllowed ? mGetMaxVehicleCountAllowed : (mGetMaxVehicleCountAllowed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.GetMaxVehicleCountAllowed")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.ReplicatedEvent")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.PostInitAnimTree")); }
			ScriptFunction PawnEnteredStation() { return mPawnEnteredStation ? mPawnEnteredStation : (mPawnEnteredStation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.PawnEnteredStation")); }
			ScriptFunction PawnLeftStation() { return mPawnLeftStation ? mPawnLeftStation : (mPawnLeftStation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.PawnLeftStation")); }
			ScriptFunction PlayStationEnteredEffects() { return mPlayStationEnteredEffects ? mPlayStationEnteredEffects : (mPlayStationEnteredEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.PlayStationEnteredEffects")); }
			ScriptFunction PlayStationLeftEffects() { return mPlayStationLeftEffects ? mPlayStationLeftEffects : (mPlayStationLeftEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.PlayStationLeftEffects")); }
			ScriptFunction PlayRetractAnim() { return mPlayRetractAnim ? mPlayRetractAnim : (mPlayRetractAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.PlayRetractAnim")); }
			ScriptFunction PlayVehiclePadDeployAnim() { return mPlayVehiclePadDeployAnim ? mPlayVehiclePadDeployAnim : (mPlayVehiclePadDeployAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.PlayVehiclePadDeployAnim")); }
			ScriptFunction PlayVehiclePadCollapseAnim() { return mPlayVehiclePadCollapseAnim ? mPlayVehiclePadCollapseAnim : (mPlayVehiclePadCollapseAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.PlayVehiclePadCollapseAnim")); }
			ScriptFunction SpawnVehicle() { return mSpawnVehicle ? mSpawnVehicle : (mSpawnVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.SpawnVehicle")); }
			ScriptFunction TeleportDriverToVehicle() { return mTeleportDriverToVehicle ? mTeleportDriverToVehicle : (mTeleportDriverToVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.TeleportDriverToVehicle")); }
			ScriptFunction Unlock() { return mUnlock ? mUnlock : (mUnlock = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.Unlock")); }
			ScriptFunction AbleToSpawnVehicleType() { return mAbleToSpawnVehicleType ? mAbleToSpawnVehicleType : (mAbleToSpawnVehicleType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.AbleToSpawnVehicleType")); }
			ScriptFunction AddVehicleToPackedList() { return mAddVehicleToPackedList ? mAddVehicleToPackedList : (mAddVehicleToPackedList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.AddVehicleToPackedList")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.GetMarker")); }
			ScriptFunction ShouldPostRenderForCaH() { return mShouldPostRenderForCaH ? mShouldPostRenderForCaH : (mShouldPostRenderForCaH = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleStation.ShouldPostRenderForCaH")); }
		}
	}
	static struct Constants
	{
		enum SPAWNED_VEHICLE_LIST_MASK = 0xF;
	}
	struct VehicleSpawnInfo
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrVehicleStation.VehicleSpawnInfo")); }
		@property final auto ref
		{
			Rotator m_rSpawnRotOffset() { return *cast(Rotator*)(cast(size_t)&this + 20); }
			Vector m_vSpawnLocOffset() { return *cast(Vector*)(cast(size_t)&this + 8); }
			int m_nMaxCount() { return *cast(int*)(cast(size_t)&this + 4); }
			ScriptClass m_VehicleClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			TrAnimNodeBlendList m_VehicleStationBlendNode() { return *cast(TrAnimNodeBlendList*)(cast(size_t)cast(void*)this + 1596); }
			float m_fTimeToSpawnVehicleAfterRequest() { return *cast(float*)(cast(size_t)cast(void*)this + 1592); }
			float m_fInstigatorTeleportTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1588); }
			TrPawn m_PawnRequestingVehicle() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 1584); }
			TrVehicle m_LastSpawnedVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 1580); }
			float m_fSpawnTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1576); }
			float m_fPostSpawnLockoutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
			TrObject.EVehicleTypes m_LastRequestedVehicleType() { return *cast(TrObject.EVehicleTypes*)(cast(size_t)cast(void*)this + 1569); }
			ubyte r_nSpawnSequenceEnded() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1568); }
			int r_nSpawnedVehicles() { return *cast(int*)(cast(size_t)cast(void*)this + 1560); }
			TrVehiclePad m_VehiclePad() { return *cast(TrVehiclePad*)(cast(size_t)cast(void*)this + 1556); }
			TrVehicleStation.VehicleSpawnInfo m_SpawnList() { return *cast(TrVehicleStation.VehicleSpawnInfo*)(cast(size_t)cast(void*)this + 1396); }
		}
		bool r_bSpawnSequenceStarted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1564) & 0x2) != 0; }
		bool r_bSpawnSequenceStarted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1564) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1564) &= ~0x2; } return val; }
		bool r_bIsLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1564) & 0x1) != 0; }
		bool r_bIsLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1564) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1564) &= ~0x1; } return val; }
	}
final:
	bool RequestSpawnVehicle(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestSpawnVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetNumVehiclesSpawnedByType(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumVehiclesSpawnedByType, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetMaxVehicleCountAllowed(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxVehicleCountAllowed, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void PawnEnteredStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredStation, params.ptr, cast(void*)0);
	}
	void PawnLeftStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeftStation, params.ptr, cast(void*)0);
	}
	void PlayStationEnteredEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStationEnteredEffects, cast(void*)0, cast(void*)0);
	}
	void PlayStationLeftEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStationLeftEffects, cast(void*)0, cast(void*)0);
	}
	void PlayRetractAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRetractAnim, cast(void*)0, cast(void*)0);
	}
	void PlayVehiclePadDeployAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVehiclePadDeployAnim, cast(void*)0, cast(void*)0);
	}
	void PlayVehiclePadCollapseAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVehiclePadCollapseAnim, cast(void*)0, cast(void*)0);
	}
	void SpawnVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnVehicle, cast(void*)0, cast(void*)0);
	}
	void TeleportDriverToVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TeleportDriverToVehicle, cast(void*)0, cast(void*)0);
	}
	void Unlock()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Unlock, cast(void*)0, cast(void*)0);
	}
	bool AbleToSpawnVehicleType(TrObject.EVehicleTypes VehicleType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		(cast(ScriptObject)this).ProcessEvent(Functions.AbleToSpawnVehicleType, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AddVehicleToPackedList(TrObject.EVehicleTypes VehicleType, int Num)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.EVehicleTypes*)params.ptr = VehicleType;
		*cast(int*)&params[4] = Num;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVehicleToPackedList, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	bool ShouldPostRenderForCaH()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldPostRenderForCaH, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
