module UnrealScript.Engine.SkeletalMeshActor;

import ScriptClasses;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqAct_AttachToActor;
import UnrealScript.Engine.SeqAct_SetMesh;
import UnrealScript.Engine.FaceFXAsset;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.SeqAct_UpdatePhysBonesFromAnim;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SeqAct_SetSkelControlTarget;
import UnrealScript.Engine.SeqAct_SetMaterial;
import UnrealScript.Engine.AnimNotify_ForceField;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNotify_PlayParticleEffect;
import UnrealScript.Engine.SeqAct_PlayFaceFXAnim;

extern(C++) interface SkeletalMeshActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkeletalMeshActor")); }
	private static __gshared SkeletalMeshActor mDefaultProperties;
	@property final static SkeletalMeshActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkeletalMeshActor)("SkeletalMeshActor Engine.Default__SkeletalMeshActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mUpdateAnimSetList;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnToggle;
			ScriptFunction mOnSetMaterial;
			ScriptFunction mBeginAnimControl;
			ScriptFunction mMAT_BeginAnimControl;
			ScriptFunction mSetAnimPosition;
			ScriptFunction mFinishAnimControl;
			ScriptFunction mMAT_FinishAnimControl;
			ScriptFunction mPlayActorFaceFXAnim;
			ScriptFunction mStopActorFaceFXAnim;
			ScriptFunction mGetFaceFXAudioComponent;
			ScriptFunction mOnPlayFaceFXAnim;
			ScriptFunction mGetActorFaceFXAsset;
			ScriptFunction mIsActorPlayingFaceFXAnim;
			ScriptFunction mOnSetMesh;
			ScriptFunction mOnUpdatePhysBonesFromAnim;
			ScriptFunction mOnSetSkelControlTarget;
			ScriptFunction mDoKismetAttachment;
			ScriptFunction mTakeDamage;
			ScriptFunction mShouldSaveForCheckpoint;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
			ScriptFunction mPlayParticleEffect;
			ScriptFunction mSkelMeshActorOnParticleSystemFinished;
			ScriptFunction mCreateForceField;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.PostBeginPlay")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.Destroyed")); }
			ScriptFunction UpdateAnimSetList() { return mUpdateAnimSetList ? mUpdateAnimSetList : (mUpdateAnimSetList = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.UpdateAnimSetList")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.ReplicatedEvent")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.OnToggle")); }
			ScriptFunction OnSetMaterial() { return mOnSetMaterial ? mOnSetMaterial : (mOnSetMaterial = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.OnSetMaterial")); }
			ScriptFunction BeginAnimControl() { return mBeginAnimControl ? mBeginAnimControl : (mBeginAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.BeginAnimControl")); }
			ScriptFunction MAT_BeginAnimControl() { return mMAT_BeginAnimControl ? mMAT_BeginAnimControl : (mMAT_BeginAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.MAT_BeginAnimControl")); }
			ScriptFunction SetAnimPosition() { return mSetAnimPosition ? mSetAnimPosition : (mSetAnimPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.SetAnimPosition")); }
			ScriptFunction FinishAnimControl() { return mFinishAnimControl ? mFinishAnimControl : (mFinishAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.FinishAnimControl")); }
			ScriptFunction MAT_FinishAnimControl() { return mMAT_FinishAnimControl ? mMAT_FinishAnimControl : (mMAT_FinishAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.MAT_FinishAnimControl")); }
			ScriptFunction PlayActorFaceFXAnim() { return mPlayActorFaceFXAnim ? mPlayActorFaceFXAnim : (mPlayActorFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.PlayActorFaceFXAnim")); }
			ScriptFunction StopActorFaceFXAnim() { return mStopActorFaceFXAnim ? mStopActorFaceFXAnim : (mStopActorFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.StopActorFaceFXAnim")); }
			ScriptFunction GetFaceFXAudioComponent() { return mGetFaceFXAudioComponent ? mGetFaceFXAudioComponent : (mGetFaceFXAudioComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.GetFaceFXAudioComponent")); }
			ScriptFunction OnPlayFaceFXAnim() { return mOnPlayFaceFXAnim ? mOnPlayFaceFXAnim : (mOnPlayFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.OnPlayFaceFXAnim")); }
			ScriptFunction GetActorFaceFXAsset() { return mGetActorFaceFXAsset ? mGetActorFaceFXAsset : (mGetActorFaceFXAsset = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.GetActorFaceFXAsset")); }
			ScriptFunction IsActorPlayingFaceFXAnim() { return mIsActorPlayingFaceFXAnim ? mIsActorPlayingFaceFXAnim : (mIsActorPlayingFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.IsActorPlayingFaceFXAnim")); }
			ScriptFunction OnSetMesh() { return mOnSetMesh ? mOnSetMesh : (mOnSetMesh = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.OnSetMesh")); }
			ScriptFunction OnUpdatePhysBonesFromAnim() { return mOnUpdatePhysBonesFromAnim ? mOnUpdatePhysBonesFromAnim : (mOnUpdatePhysBonesFromAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.OnUpdatePhysBonesFromAnim")); }
			ScriptFunction OnSetSkelControlTarget() { return mOnSetSkelControlTarget ? mOnSetSkelControlTarget : (mOnSetSkelControlTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.OnSetSkelControlTarget")); }
			ScriptFunction DoKismetAttachment() { return mDoKismetAttachment ? mDoKismetAttachment : (mDoKismetAttachment = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.DoKismetAttachment")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.TakeDamage")); }
			ScriptFunction ShouldSaveForCheckpoint() { return mShouldSaveForCheckpoint ? mShouldSaveForCheckpoint : (mShouldSaveForCheckpoint = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.ShouldSaveForCheckpoint")); }
			ScriptFunction CreateCheckpointRecord() { return mCreateCheckpointRecord ? mCreateCheckpointRecord : (mCreateCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { return mApplyCheckpointRecord ? mApplyCheckpointRecord : (mApplyCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.ApplyCheckpointRecord")); }
			ScriptFunction PlayParticleEffect() { return mPlayParticleEffect ? mPlayParticleEffect : (mPlayParticleEffect = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.PlayParticleEffect")); }
			ScriptFunction SkelMeshActorOnParticleSystemFinished() { return mSkelMeshActorOnParticleSystemFinished ? mSkelMeshActorOnParticleSystemFinished : (mSkelMeshActorOnParticleSystemFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.SkelMeshActorOnParticleSystemFinished")); }
			ScriptFunction CreateForceField() { return mCreateForceField ? mCreateForceField : (mCreateForceField = ScriptObject.Find!(ScriptFunction)("Function Engine.SkeletalMeshActor.CreateForceField")); }
		}
	}
	struct SkelMeshActorControlTarget
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SkeletalMeshActor.SkelMeshActorControlTarget")); }
		@property final auto ref
		{
			Actor TargetActor() { return *cast(Actor*)(cast(size_t)&this + 8); }
			ScriptName ControlName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SkeletalMeshActor.CheckpointRecord")); }
		@property final
		{
			auto ref
			{
				Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 16); }
				Vector Location() { return *cast(Vector*)(cast(size_t)&this + 4); }
			}
			bool bSavedPosition() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool bSavedPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bReplicated() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bReplicated(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SkeletalMeshActor.SkelMeshActorControlTarget) ControlTargets() { return *cast(ScriptArray!(SkeletalMeshActor.SkelMeshActorControlTarget)*)(cast(size_t)cast(void*)this + 500); }
			ScriptArray!(InterpGroup) InterpGroupList() { return *cast(ScriptArray!(InterpGroup)*)(cast(size_t)cast(void*)this + 512); }
			float SavedCurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
			ScriptName SavedAnimSeqName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 524); }
			MaterialInterface ReplicatedMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 496); }
			SkeletalMesh ReplicatedMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 492); }
		}
		bool bCollideActors_OldValue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8) != 0; }
		bool bCollideActors_OldValue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8; } return val; }
		bool bForceSaveInCheckpoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
		bool bForceSaveInCheckpoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
		bool bShouldDoAnimNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
		bool bShouldDoAnimNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
		bool bDamageAppliesImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bDamageAppliesImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void UpdateAnimSetList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateAnimSetList, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void OnSetMaterial(SeqAct_SetMaterial Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMaterial*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetMaterial, params.ptr, cast(void*)0);
	}
	void BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginAnimControl, params.ptr, cast(void*)0);
	}
	void MAT_BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_BeginAnimControl, params.ptr, cast(void*)0);
	}
	void SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SlotName;
		*cast(int*)&params[8] = ChannelIndex;
		*cast(ScriptName*)&params[12] = InAnimSeqName;
		*cast(float*)&params[20] = InPosition;
		*cast(bool*)&params[24] = bFireNotifies;
		*cast(bool*)&params[28] = bLooping;
		*cast(bool*)&params[32] = bEnableRootMotion;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnimPosition, params.ptr, cast(void*)0);
	}
	void FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishAnimControl, params.ptr, cast(void*)0);
	}
	void MAT_FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_FinishAnimControl, params.ptr, cast(void*)0);
	}
	bool PlayActorFaceFXAnim(FaceFXAnimSet pAnimSet, ScriptString GroupName, ScriptString SeqName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = pAnimSet;
		*cast(ScriptString*)&params[4] = GroupName;
		*cast(ScriptString*)&params[16] = SeqName;
		*cast(SoundCue*)&params[28] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayActorFaceFXAnim, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	void StopActorFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopActorFaceFXAnim, cast(void*)0, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetFaceFXAudioComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFaceFXAudioComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr;
	}
	void OnPlayFaceFXAnim(SeqAct_PlayFaceFXAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_PlayFaceFXAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayFaceFXAnim, params.ptr, cast(void*)0);
	}
	FaceFXAsset GetActorFaceFXAsset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorFaceFXAsset, params.ptr, cast(void*)0);
		return *cast(FaceFXAsset*)params.ptr;
	}
	bool IsActorPlayingFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsActorPlayingFaceFXAnim, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnSetMesh(SeqAct_SetMesh Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMesh*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetMesh, params.ptr, cast(void*)0);
	}
	void OnUpdatePhysBonesFromAnim(SeqAct_UpdatePhysBonesFromAnim Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_UpdatePhysBonesFromAnim*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpdatePhysBonesFromAnim, params.ptr, cast(void*)0);
	}
	void OnSetSkelControlTarget(SeqAct_SetSkelControlTarget Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetSkelControlTarget*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetSkelControlTarget, params.ptr, cast(void*)0);
	}
	void DoKismetAttachment(Actor pAttachment, SeqAct_AttachToActor Action)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = pAttachment;
		*cast(SeqAct_AttachToActor*)&params[4] = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoKismetAttachment, params.ptr, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSaveForCheckpoint, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(SkeletalMeshActor.CheckpointRecord* Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SkeletalMeshActor.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(SkeletalMeshActor.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(SkeletalMeshActor.CheckpointRecord* Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SkeletalMeshActor.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(SkeletalMeshActor.CheckpointRecord*)params.ptr;
	}
	bool PlayParticleEffect(AnimNotify_PlayParticleEffect AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_PlayParticleEffect*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayParticleEffect, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SkelMeshActorOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SkelMeshActorOnParticleSystemFinished, params.ptr, cast(void*)0);
	}
	bool CreateForceField(AnimNotify_ForceField AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_ForceField*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateForceField, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
