module UnrealScript.UTGame.UTVehicle;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.UTGame.UTHUD;
import UnrealScript.Engine.Projectile;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTMapInfo;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTGib;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.UTGame.UTVehicleDeathPiece;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.Texture2D;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.UTGame.UTBot;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.UDKBase.UDKProjectile;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.UTGame.UTVehicleWeapon;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UTGame.UTSeqAct_ExitVehicle;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.UTGame.UTProjectile;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Emitter;
import UnrealScript.UTGame.UTVehicleFactory;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Weapon;

extern(C++) interface UTVehicle : UDKVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTVehicle")); }
	private static __gshared UTVehicle mDefaultProperties;
	@property final static UTVehicle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTVehicle)("UTVehicle UTGame.Default__UTVehicle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTryToDrive;
			ScriptFunction mInCustomEntryRadius;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mUpdateShadowSettings;
			ScriptFunction mReattachMesh;
			ScriptFunction mCreateDamageMaterialInstance;
			ScriptFunction mUpdateLookSteerStatus;
			ScriptFunction mSetInputs;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mGetChargePower;
			ScriptFunction mPlaySpawnEffect;
			ScriptFunction mStopSpawnEffect;
			ScriptFunction mEjectSeat;
			ScriptFunction mGetRanOverDamageType;
			ScriptFunction mDisplayWeaponBar;
			ScriptFunction mDrawKillIcon;
			ScriptFunction mRenderMapIcon;
			ScriptFunction mAdjustedStrength;
			ScriptFunction mContinueOnFoot;
			ScriptFunction mIsDriverSeat;
			ScriptFunction mRecommendCharge;
			ScriptFunction mCriticalChargeAttack;
			ScriptFunction mCreateVehicleEffect;
			ScriptFunction mInitializeEffects;
			ScriptFunction mSetVehicleEffectParms;
			ScriptFunction mTriggerVehicleEffect;
			ScriptFunction mPlayVehicleSound;
			ScriptFunction mPlayVehicleAnimation;
			ScriptFunction mVehicleEvent;
			ScriptFunction mEntryAnnouncement;
			ScriptFunction mExitRotation;
			ScriptFunction mFindAutoExit;
			ScriptFunction mRanInto;
			ScriptFunction mPancakeOther;
			ScriptFunction mTakeWaterDamage;
			ScriptFunction mDriverRadiusDamage;
			ScriptFunction mDestroyed;
			ScriptFunction mSetTexturesToBeResident;
			ScriptFunction mDisableVehicle;
			ScriptFunction mEnableVehicle;
			ScriptFunction mTakeFireDamage;
			ScriptFunction mGetSeatIndexFromPrefix;
			ScriptFunction mServerSetConsoleTurning;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mGetClampedViewRotation;
			ScriptFunction mShouldClamp;
			ScriptFunction mGetViewRotation;
			ScriptFunction mWeaponRotationChanged;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mSetKeyVehicle;
			ScriptFunction mDrivingStatusChanged;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mSeatAvailable;
			ScriptFunction mAnySeatAvailable;
			ScriptFunction mGetSeatIndexForController;
			ScriptFunction mGetControllerForSeatIndex;
			ScriptFunction mServerAdjacentSeat;
			ScriptFunction mServerChangeSeat;
			ScriptFunction mHasPriority;
			ScriptFunction mChangeSeat;
			ScriptFunction mTornOff;
			ScriptFunction mGetCollisionDamageInstigator;
			ScriptFunction mDied;
			ScriptFunction mBlowupVehicle;
			ScriptFunction mGetSeatPRI;
			ScriptFunction mCanEnterVehicle;
			ScriptFunction mKickOutBot;
			ScriptFunction mVehicleLocked;
			ScriptFunction mShouldShowUseable;
			ScriptFunction mPostRenderFor;
			ScriptFunction mGetDisplayedHealth;
			ScriptFunction mRenderPassengerBeacons;
			ScriptFunction mPostRenderPassengerBeacon;
			ScriptFunction mSetTeamNum;
			ScriptFunction mTeamChanged;
			ScriptFunction mTeamChanged_VehicleEffects;
			ScriptFunction mDodge;
			ScriptFunction mIncomingMissile;
			ScriptFunction mShootMissile;
			ScriptFunction mSendLockOnMessage;
			ScriptFunction mLockOnWarning;
			ScriptFunction mTooCloseToAttack;
			ScriptFunction mCheckTurretPitchLimit;
			ScriptFunction mPlayHorn;
			ScriptFunction mDriverLeave;
			ScriptFunction mUpdateControllerOnPossess;
			ScriptFunction mNumPassengers;
			ScriptFunction mGetMoveTargetFor;
			ScriptFunction mHandleEnteringFlag;
			ScriptFunction mDriverEnter;
			ScriptFunction mHoldGameObject;
			ScriptFunction mAttachFlag;
			ScriptFunction mDriverLeft;
			ScriptFunction mGetFirstAvailableSeat;
			ScriptFunction mPassengerEnter;
			ScriptFunction mPassengerLeave;
			ScriptFunction mCheckReset;
			ScriptFunction mOccupied;
			ScriptFunction mOpenPositionFor;
			ScriptFunction mBotDesireability;
			ScriptFunction mReservationCostMultiplier;
			ScriptFunction mSpokenFor;
			ScriptFunction mStopsProjectile;
			ScriptFunction mSetReservation;
			ScriptFunction mTeamLink;
			ScriptFunction mAllowLinkThroughOwnedActor;
			ScriptFunction mHealDamage;
			ScriptFunction mIncrementLinkedToCount;
			ScriptFunction mDecrementLinkedToCount;
			ScriptFunction mStartLinkedEffect;
			ScriptFunction mStopLinkedEffect;
			ScriptFunction mPlayHit;
			ScriptFunction mPlayTakeHitEffects;
			ScriptFunction mNotifyTakeHit;
			ScriptFunction mTakeDamage;
			ScriptFunction mGetHomingTarget;
			ScriptFunction mImportantVehicle;
			ScriptFunction mInitializeSeats;
			ScriptFunction mPreCacheSeatNames;
			ScriptFunction mInitializeTurrets;
			ScriptFunction mPossessedBy;
			ScriptFunction mSetFiringMode;
			ScriptFunction mClearFlashCount;
			ScriptFunction mIncrementFlashCount;
			ScriptFunction mSetFlashLocation;
			ScriptFunction mClearFlashLocation;
			ScriptFunction mGetBarrelLocationAndRotation;
			ScriptFunction mGetEffectLocation;
			ScriptFunction mGetPhysicalFireStartLoc;
			ScriptFunction mGetWeaponAim;
			ScriptFunction mOverrideBeginFire;
			ScriptFunction mOverrideEndFire;
			ScriptFunction mGetWeaponViewAxes;
			ScriptFunction mCauseMuzzleFlashLight;
			ScriptFunction mWeaponFired;
			ScriptFunction mVehicleWeaponFired;
			ScriptFunction mWeaponStoppedFiring;
			ScriptFunction mVehicleWeaponStoppedFiring;
			ScriptFunction mVehicleWeaponFireEffects;
			ScriptFunction mFindWeaponHitNormal;
			ScriptFunction mVehicleWeaponImpactEffects;
			ScriptFunction mSpawnImpactEmitter;
			ScriptFunction mVehicleAdjustFlashCount;
			ScriptFunction mVehicleAdjustFlashLocation;
			ScriptFunction mFindGoodEndView;
			ScriptFunction mCalcCamera;
			ScriptFunction mGetCameraFocus;
			ScriptFunction mGetCameraStart;
			ScriptFunction mLimitCameraZ;
			ScriptFunction mVehicleCalcCamera;
			ScriptFunction mAdjustCameraScale;
			ScriptFunction mStartBurnOut;
			ScriptFunction mTurnOffShadows;
			ScriptFunction mDisableDamageSmoke;
			ScriptFunction mDisableCollision;
			ScriptFunction mSetBurnOut;
			ScriptFunction mShouldSpawnExplosionLight;
			ScriptFunction mRBPenetrationDestroy;
			ScriptFunction mRigidBodyCollision;
			ScriptFunction mTurretExplosion;
			ScriptFunction mStopVehicleSounds;
			ScriptFunction mCheckDamageSmoke;
			ScriptFunction mAttachDriver;
			ScriptFunction mSitDriver;
			ScriptFunction mOnDriverPhysicsAssetChanged;
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mOnPropertyChange;
			ScriptFunction mGetHealth;
			ScriptFunction mGetCollisionDamageModifier;
			ScriptFunction mInitializeMorphs;
			ScriptFunction mReceivedHealthChange;
			ScriptFunction mApplyMorphHeal;
			ScriptFunction mApplyRandomMorphDamage;
			ScriptFunction mSpawnGibVehicle;
			ScriptFunction mGetSVehicleDebug;
			ScriptFunction mOnExitVehicle;
			ScriptFunction mSetShieldActive;
			ScriptFunction mSetSeatStoragePawn;
			ScriptFunction mSetMovementEffect;
			ScriptFunction mDetachDriver;
			ScriptFunction mCanAttack;
			ScriptFunction mGetVehicleKillStatName;
			ScriptFunction mDisplayHud;
			ScriptFunction mDrawBarGraph;
			ScriptFunction mDisplayExtraHud;
			ScriptFunction mDisplaySeats;
			ScriptFunction mGetSeatColor;
			ScriptFunction mApplyWeaponEffects;
			ScriptFunction mShouldLeaveForCombat;
		}
		public @property static final
		{
			ScriptFunction TryToDrive() { return mTryToDrive ? mTryToDrive : (mTryToDrive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TryToDrive")); }
			ScriptFunction InCustomEntryRadius() { return mInCustomEntryRadius ? mInCustomEntryRadius : (mInCustomEntryRadius = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.InCustomEntryRadius")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PostBeginPlay")); }
			ScriptFunction UpdateShadowSettings() { return mUpdateShadowSettings ? mUpdateShadowSettings : (mUpdateShadowSettings = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.UpdateShadowSettings")); }
			ScriptFunction ReattachMesh() { return mReattachMesh ? mReattachMesh : (mReattachMesh = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ReattachMesh")); }
			ScriptFunction CreateDamageMaterialInstance() { return mCreateDamageMaterialInstance ? mCreateDamageMaterialInstance : (mCreateDamageMaterialInstance = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.CreateDamageMaterialInstance")); }
			ScriptFunction UpdateLookSteerStatus() { return mUpdateLookSteerStatus ? mUpdateLookSteerStatus : (mUpdateLookSteerStatus = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.UpdateLookSteerStatus")); }
			ScriptFunction SetInputs() { return mSetInputs ? mSetInputs : (mSetInputs = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetInputs")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.FellOutOfWorld")); }
			ScriptFunction GetChargePower() { return mGetChargePower ? mGetChargePower : (mGetChargePower = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetChargePower")); }
			ScriptFunction PlaySpawnEffect() { return mPlaySpawnEffect ? mPlaySpawnEffect : (mPlaySpawnEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PlaySpawnEffect")); }
			ScriptFunction StopSpawnEffect() { return mStopSpawnEffect ? mStopSpawnEffect : (mStopSpawnEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.StopSpawnEffect")); }
			ScriptFunction EjectSeat() { return mEjectSeat ? mEjectSeat : (mEjectSeat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.EjectSeat")); }
			ScriptFunction GetRanOverDamageType() { return mGetRanOverDamageType ? mGetRanOverDamageType : (mGetRanOverDamageType = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetRanOverDamageType")); }
			ScriptFunction DisplayWeaponBar() { return mDisplayWeaponBar ? mDisplayWeaponBar : (mDisplayWeaponBar = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DisplayWeaponBar")); }
			ScriptFunction DrawKillIcon() { return mDrawKillIcon ? mDrawKillIcon : (mDrawKillIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DrawKillIcon")); }
			ScriptFunction RenderMapIcon() { return mRenderMapIcon ? mRenderMapIcon : (mRenderMapIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.RenderMapIcon")); }
			ScriptFunction AdjustedStrength() { return mAdjustedStrength ? mAdjustedStrength : (mAdjustedStrength = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.AdjustedStrength")); }
			ScriptFunction ContinueOnFoot() { return mContinueOnFoot ? mContinueOnFoot : (mContinueOnFoot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ContinueOnFoot")); }
			ScriptFunction IsDriverSeat() { return mIsDriverSeat ? mIsDriverSeat : (mIsDriverSeat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.IsDriverSeat")); }
			ScriptFunction RecommendCharge() { return mRecommendCharge ? mRecommendCharge : (mRecommendCharge = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.RecommendCharge")); }
			ScriptFunction CriticalChargeAttack() { return mCriticalChargeAttack ? mCriticalChargeAttack : (mCriticalChargeAttack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.CriticalChargeAttack")); }
			ScriptFunction CreateVehicleEffect() { return mCreateVehicleEffect ? mCreateVehicleEffect : (mCreateVehicleEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.CreateVehicleEffect")); }
			ScriptFunction InitializeEffects() { return mInitializeEffects ? mInitializeEffects : (mInitializeEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.InitializeEffects")); }
			ScriptFunction SetVehicleEffectParms() { return mSetVehicleEffectParms ? mSetVehicleEffectParms : (mSetVehicleEffectParms = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetVehicleEffectParms")); }
			ScriptFunction TriggerVehicleEffect() { return mTriggerVehicleEffect ? mTriggerVehicleEffect : (mTriggerVehicleEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TriggerVehicleEffect")); }
			ScriptFunction PlayVehicleSound() { return mPlayVehicleSound ? mPlayVehicleSound : (mPlayVehicleSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PlayVehicleSound")); }
			ScriptFunction PlayVehicleAnimation() { return mPlayVehicleAnimation ? mPlayVehicleAnimation : (mPlayVehicleAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PlayVehicleAnimation")); }
			ScriptFunction VehicleEvent() { return mVehicleEvent ? mVehicleEvent : (mVehicleEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.VehicleEvent")); }
			ScriptFunction EntryAnnouncement() { return mEntryAnnouncement ? mEntryAnnouncement : (mEntryAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.EntryAnnouncement")); }
			ScriptFunction ExitRotation() { return mExitRotation ? mExitRotation : (mExitRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ExitRotation")); }
			ScriptFunction FindAutoExit() { return mFindAutoExit ? mFindAutoExit : (mFindAutoExit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.FindAutoExit")); }
			ScriptFunction RanInto() { return mRanInto ? mRanInto : (mRanInto = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.RanInto")); }
			ScriptFunction PancakeOther() { return mPancakeOther ? mPancakeOther : (mPancakeOther = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PancakeOther")); }
			ScriptFunction TakeWaterDamage() { return mTakeWaterDamage ? mTakeWaterDamage : (mTakeWaterDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TakeWaterDamage")); }
			ScriptFunction DriverRadiusDamage() { return mDriverRadiusDamage ? mDriverRadiusDamage : (mDriverRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DriverRadiusDamage")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.Destroyed")); }
			ScriptFunction SetTexturesToBeResident() { return mSetTexturesToBeResident ? mSetTexturesToBeResident : (mSetTexturesToBeResident = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetTexturesToBeResident")); }
			ScriptFunction DisableVehicle() { return mDisableVehicle ? mDisableVehicle : (mDisableVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DisableVehicle")); }
			ScriptFunction EnableVehicle() { return mEnableVehicle ? mEnableVehicle : (mEnableVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.EnableVehicle")); }
			ScriptFunction TakeFireDamage() { return mTakeFireDamage ? mTakeFireDamage : (mTakeFireDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TakeFireDamage")); }
			ScriptFunction GetSeatIndexFromPrefix() { return mGetSeatIndexFromPrefix ? mGetSeatIndexFromPrefix : (mGetSeatIndexFromPrefix = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetSeatIndexFromPrefix")); }
			ScriptFunction ServerSetConsoleTurning() { return mServerSetConsoleTurning ? mServerSetConsoleTurning : (mServerSetConsoleTurning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ServerSetConsoleTurning")); }
			ScriptFunction ProcessViewRotation() { return mProcessViewRotation ? mProcessViewRotation : (mProcessViewRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ProcessViewRotation")); }
			ScriptFunction GetClampedViewRotation() { return mGetClampedViewRotation ? mGetClampedViewRotation : (mGetClampedViewRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetClampedViewRotation")); }
			ScriptFunction ShouldClamp() { return mShouldClamp ? mShouldClamp : (mShouldClamp = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ShouldClamp")); }
			ScriptFunction GetViewRotation() { return mGetViewRotation ? mGetViewRotation : (mGetViewRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetViewRotation")); }
			ScriptFunction WeaponRotationChanged() { return mWeaponRotationChanged ? mWeaponRotationChanged : (mWeaponRotationChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.WeaponRotationChanged")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ReplicatedEvent")); }
			ScriptFunction SetKeyVehicle() { return mSetKeyVehicle ? mSetKeyVehicle : (mSetKeyVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetKeyVehicle")); }
			ScriptFunction DrivingStatusChanged() { return mDrivingStatusChanged ? mDrivingStatusChanged : (mDrivingStatusChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DrivingStatusChanged")); }
			ScriptFunction OnAnimEnd() { return mOnAnimEnd ? mOnAnimEnd : (mOnAnimEnd = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.OnAnimEnd")); }
			ScriptFunction SeatAvailable() { return mSeatAvailable ? mSeatAvailable : (mSeatAvailable = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SeatAvailable")); }
			ScriptFunction AnySeatAvailable() { return mAnySeatAvailable ? mAnySeatAvailable : (mAnySeatAvailable = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.AnySeatAvailable")); }
			ScriptFunction GetSeatIndexForController() { return mGetSeatIndexForController ? mGetSeatIndexForController : (mGetSeatIndexForController = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetSeatIndexForController")); }
			ScriptFunction GetControllerForSeatIndex() { return mGetControllerForSeatIndex ? mGetControllerForSeatIndex : (mGetControllerForSeatIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetControllerForSeatIndex")); }
			ScriptFunction ServerAdjacentSeat() { return mServerAdjacentSeat ? mServerAdjacentSeat : (mServerAdjacentSeat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ServerAdjacentSeat")); }
			ScriptFunction ServerChangeSeat() { return mServerChangeSeat ? mServerChangeSeat : (mServerChangeSeat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ServerChangeSeat")); }
			ScriptFunction HasPriority() { return mHasPriority ? mHasPriority : (mHasPriority = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.HasPriority")); }
			ScriptFunction ChangeSeat() { return mChangeSeat ? mChangeSeat : (mChangeSeat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ChangeSeat")); }
			ScriptFunction TornOff() { return mTornOff ? mTornOff : (mTornOff = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TornOff")); }
			ScriptFunction GetCollisionDamageInstigator() { return mGetCollisionDamageInstigator ? mGetCollisionDamageInstigator : (mGetCollisionDamageInstigator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetCollisionDamageInstigator")); }
			ScriptFunction Died() { return mDied ? mDied : (mDied = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.Died")); }
			ScriptFunction BlowupVehicle() { return mBlowupVehicle ? mBlowupVehicle : (mBlowupVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.BlowupVehicle")); }
			ScriptFunction GetSeatPRI() { return mGetSeatPRI ? mGetSeatPRI : (mGetSeatPRI = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetSeatPRI")); }
			ScriptFunction CanEnterVehicle() { return mCanEnterVehicle ? mCanEnterVehicle : (mCanEnterVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.CanEnterVehicle")); }
			ScriptFunction KickOutBot() { return mKickOutBot ? mKickOutBot : (mKickOutBot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.KickOutBot")); }
			ScriptFunction VehicleLocked() { return mVehicleLocked ? mVehicleLocked : (mVehicleLocked = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.VehicleLocked")); }
			ScriptFunction ShouldShowUseable() { return mShouldShowUseable ? mShouldShowUseable : (mShouldShowUseable = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ShouldShowUseable")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PostRenderFor")); }
			ScriptFunction GetDisplayedHealth() { return mGetDisplayedHealth ? mGetDisplayedHealth : (mGetDisplayedHealth = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetDisplayedHealth")); }
			ScriptFunction RenderPassengerBeacons() { return mRenderPassengerBeacons ? mRenderPassengerBeacons : (mRenderPassengerBeacons = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.RenderPassengerBeacons")); }
			ScriptFunction PostRenderPassengerBeacon() { return mPostRenderPassengerBeacon ? mPostRenderPassengerBeacon : (mPostRenderPassengerBeacon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PostRenderPassengerBeacon")); }
			ScriptFunction SetTeamNum() { return mSetTeamNum ? mSetTeamNum : (mSetTeamNum = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetTeamNum")); }
			ScriptFunction TeamChanged() { return mTeamChanged ? mTeamChanged : (mTeamChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TeamChanged")); }
			ScriptFunction TeamChanged_VehicleEffects() { return mTeamChanged_VehicleEffects ? mTeamChanged_VehicleEffects : (mTeamChanged_VehicleEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TeamChanged_VehicleEffects")); }
			ScriptFunction Dodge() { return mDodge ? mDodge : (mDodge = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.Dodge")); }
			ScriptFunction IncomingMissile() { return mIncomingMissile ? mIncomingMissile : (mIncomingMissile = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.IncomingMissile")); }
			ScriptFunction ShootMissile() { return mShootMissile ? mShootMissile : (mShootMissile = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ShootMissile")); }
			ScriptFunction SendLockOnMessage() { return mSendLockOnMessage ? mSendLockOnMessage : (mSendLockOnMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SendLockOnMessage")); }
			ScriptFunction LockOnWarning() { return mLockOnWarning ? mLockOnWarning : (mLockOnWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.LockOnWarning")); }
			ScriptFunction TooCloseToAttack() { return mTooCloseToAttack ? mTooCloseToAttack : (mTooCloseToAttack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TooCloseToAttack")); }
			ScriptFunction CheckTurretPitchLimit() { return mCheckTurretPitchLimit ? mCheckTurretPitchLimit : (mCheckTurretPitchLimit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.CheckTurretPitchLimit")); }
			ScriptFunction PlayHorn() { return mPlayHorn ? mPlayHorn : (mPlayHorn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PlayHorn")); }
			ScriptFunction DriverLeave() { return mDriverLeave ? mDriverLeave : (mDriverLeave = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DriverLeave")); }
			ScriptFunction UpdateControllerOnPossess() { return mUpdateControllerOnPossess ? mUpdateControllerOnPossess : (mUpdateControllerOnPossess = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.UpdateControllerOnPossess")); }
			ScriptFunction NumPassengers() { return mNumPassengers ? mNumPassengers : (mNumPassengers = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.NumPassengers")); }
			ScriptFunction GetMoveTargetFor() { return mGetMoveTargetFor ? mGetMoveTargetFor : (mGetMoveTargetFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetMoveTargetFor")); }
			ScriptFunction HandleEnteringFlag() { return mHandleEnteringFlag ? mHandleEnteringFlag : (mHandleEnteringFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.HandleEnteringFlag")); }
			ScriptFunction DriverEnter() { return mDriverEnter ? mDriverEnter : (mDriverEnter = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DriverEnter")); }
			ScriptFunction HoldGameObject() { return mHoldGameObject ? mHoldGameObject : (mHoldGameObject = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.HoldGameObject")); }
			ScriptFunction AttachFlag() { return mAttachFlag ? mAttachFlag : (mAttachFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.AttachFlag")); }
			ScriptFunction DriverLeft() { return mDriverLeft ? mDriverLeft : (mDriverLeft = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DriverLeft")); }
			ScriptFunction GetFirstAvailableSeat() { return mGetFirstAvailableSeat ? mGetFirstAvailableSeat : (mGetFirstAvailableSeat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetFirstAvailableSeat")); }
			ScriptFunction PassengerEnter() { return mPassengerEnter ? mPassengerEnter : (mPassengerEnter = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PassengerEnter")); }
			ScriptFunction PassengerLeave() { return mPassengerLeave ? mPassengerLeave : (mPassengerLeave = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PassengerLeave")); }
			ScriptFunction CheckReset() { return mCheckReset ? mCheckReset : (mCheckReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.CheckReset")); }
			ScriptFunction Occupied() { return mOccupied ? mOccupied : (mOccupied = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.Occupied")); }
			ScriptFunction OpenPositionFor() { return mOpenPositionFor ? mOpenPositionFor : (mOpenPositionFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.OpenPositionFor")); }
			ScriptFunction BotDesireability() { return mBotDesireability ? mBotDesireability : (mBotDesireability = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.BotDesireability")); }
			ScriptFunction ReservationCostMultiplier() { return mReservationCostMultiplier ? mReservationCostMultiplier : (mReservationCostMultiplier = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ReservationCostMultiplier")); }
			ScriptFunction SpokenFor() { return mSpokenFor ? mSpokenFor : (mSpokenFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SpokenFor")); }
			ScriptFunction StopsProjectile() { return mStopsProjectile ? mStopsProjectile : (mStopsProjectile = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.StopsProjectile")); }
			ScriptFunction SetReservation() { return mSetReservation ? mSetReservation : (mSetReservation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetReservation")); }
			ScriptFunction TeamLink() { return mTeamLink ? mTeamLink : (mTeamLink = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TeamLink")); }
			ScriptFunction AllowLinkThroughOwnedActor() { return mAllowLinkThroughOwnedActor ? mAllowLinkThroughOwnedActor : (mAllowLinkThroughOwnedActor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.AllowLinkThroughOwnedActor")); }
			ScriptFunction HealDamage() { return mHealDamage ? mHealDamage : (mHealDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.HealDamage")); }
			ScriptFunction IncrementLinkedToCount() { return mIncrementLinkedToCount ? mIncrementLinkedToCount : (mIncrementLinkedToCount = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.IncrementLinkedToCount")); }
			ScriptFunction DecrementLinkedToCount() { return mDecrementLinkedToCount ? mDecrementLinkedToCount : (mDecrementLinkedToCount = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DecrementLinkedToCount")); }
			ScriptFunction StartLinkedEffect() { return mStartLinkedEffect ? mStartLinkedEffect : (mStartLinkedEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.StartLinkedEffect")); }
			ScriptFunction StopLinkedEffect() { return mStopLinkedEffect ? mStopLinkedEffect : (mStopLinkedEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.StopLinkedEffect")); }
			ScriptFunction PlayHit() { return mPlayHit ? mPlayHit : (mPlayHit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PlayHit")); }
			ScriptFunction PlayTakeHitEffects() { return mPlayTakeHitEffects ? mPlayTakeHitEffects : (mPlayTakeHitEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PlayTakeHitEffects")); }
			ScriptFunction NotifyTakeHit() { return mNotifyTakeHit ? mNotifyTakeHit : (mNotifyTakeHit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.NotifyTakeHit")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TakeDamage")); }
			ScriptFunction GetHomingTarget() { return mGetHomingTarget ? mGetHomingTarget : (mGetHomingTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetHomingTarget")); }
			ScriptFunction ImportantVehicle() { return mImportantVehicle ? mImportantVehicle : (mImportantVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ImportantVehicle")); }
			ScriptFunction InitializeSeats() { return mInitializeSeats ? mInitializeSeats : (mInitializeSeats = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.InitializeSeats")); }
			ScriptFunction PreCacheSeatNames() { return mPreCacheSeatNames ? mPreCacheSeatNames : (mPreCacheSeatNames = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PreCacheSeatNames")); }
			ScriptFunction InitializeTurrets() { return mInitializeTurrets ? mInitializeTurrets : (mInitializeTurrets = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.InitializeTurrets")); }
			ScriptFunction PossessedBy() { return mPossessedBy ? mPossessedBy : (mPossessedBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.PossessedBy")); }
			ScriptFunction SetFiringMode() { return mSetFiringMode ? mSetFiringMode : (mSetFiringMode = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetFiringMode")); }
			ScriptFunction ClearFlashCount() { return mClearFlashCount ? mClearFlashCount : (mClearFlashCount = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ClearFlashCount")); }
			ScriptFunction IncrementFlashCount() { return mIncrementFlashCount ? mIncrementFlashCount : (mIncrementFlashCount = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.IncrementFlashCount")); }
			ScriptFunction SetFlashLocation() { return mSetFlashLocation ? mSetFlashLocation : (mSetFlashLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetFlashLocation")); }
			ScriptFunction ClearFlashLocation() { return mClearFlashLocation ? mClearFlashLocation : (mClearFlashLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ClearFlashLocation")); }
			ScriptFunction GetBarrelLocationAndRotation() { return mGetBarrelLocationAndRotation ? mGetBarrelLocationAndRotation : (mGetBarrelLocationAndRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetBarrelLocationAndRotation")); }
			ScriptFunction GetEffectLocation() { return mGetEffectLocation ? mGetEffectLocation : (mGetEffectLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetEffectLocation")); }
			ScriptFunction GetPhysicalFireStartLoc() { return mGetPhysicalFireStartLoc ? mGetPhysicalFireStartLoc : (mGetPhysicalFireStartLoc = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetPhysicalFireStartLoc")); }
			ScriptFunction GetWeaponAim() { return mGetWeaponAim ? mGetWeaponAim : (mGetWeaponAim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetWeaponAim")); }
			ScriptFunction OverrideBeginFire() { return mOverrideBeginFire ? mOverrideBeginFire : (mOverrideBeginFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.OverrideBeginFire")); }
			ScriptFunction OverrideEndFire() { return mOverrideEndFire ? mOverrideEndFire : (mOverrideEndFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.OverrideEndFire")); }
			ScriptFunction GetWeaponViewAxes() { return mGetWeaponViewAxes ? mGetWeaponViewAxes : (mGetWeaponViewAxes = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetWeaponViewAxes")); }
			ScriptFunction CauseMuzzleFlashLight() { return mCauseMuzzleFlashLight ? mCauseMuzzleFlashLight : (mCauseMuzzleFlashLight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.CauseMuzzleFlashLight")); }
			ScriptFunction WeaponFired() { return mWeaponFired ? mWeaponFired : (mWeaponFired = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.WeaponFired")); }
			ScriptFunction VehicleWeaponFired() { return mVehicleWeaponFired ? mVehicleWeaponFired : (mVehicleWeaponFired = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.VehicleWeaponFired")); }
			ScriptFunction WeaponStoppedFiring() { return mWeaponStoppedFiring ? mWeaponStoppedFiring : (mWeaponStoppedFiring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.WeaponStoppedFiring")); }
			ScriptFunction VehicleWeaponStoppedFiring() { return mVehicleWeaponStoppedFiring ? mVehicleWeaponStoppedFiring : (mVehicleWeaponStoppedFiring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.VehicleWeaponStoppedFiring")); }
			ScriptFunction VehicleWeaponFireEffects() { return mVehicleWeaponFireEffects ? mVehicleWeaponFireEffects : (mVehicleWeaponFireEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.VehicleWeaponFireEffects")); }
			ScriptFunction FindWeaponHitNormal() { return mFindWeaponHitNormal ? mFindWeaponHitNormal : (mFindWeaponHitNormal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.FindWeaponHitNormal")); }
			ScriptFunction VehicleWeaponImpactEffects() { return mVehicleWeaponImpactEffects ? mVehicleWeaponImpactEffects : (mVehicleWeaponImpactEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.VehicleWeaponImpactEffects")); }
			ScriptFunction SpawnImpactEmitter() { return mSpawnImpactEmitter ? mSpawnImpactEmitter : (mSpawnImpactEmitter = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SpawnImpactEmitter")); }
			ScriptFunction VehicleAdjustFlashCount() { return mVehicleAdjustFlashCount ? mVehicleAdjustFlashCount : (mVehicleAdjustFlashCount = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.VehicleAdjustFlashCount")); }
			ScriptFunction VehicleAdjustFlashLocation() { return mVehicleAdjustFlashLocation ? mVehicleAdjustFlashLocation : (mVehicleAdjustFlashLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.VehicleAdjustFlashLocation")); }
			ScriptFunction FindGoodEndView() { return mFindGoodEndView ? mFindGoodEndView : (mFindGoodEndView = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.FindGoodEndView")); }
			ScriptFunction CalcCamera() { return mCalcCamera ? mCalcCamera : (mCalcCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.CalcCamera")); }
			ScriptFunction GetCameraFocus() { return mGetCameraFocus ? mGetCameraFocus : (mGetCameraFocus = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetCameraFocus")); }
			ScriptFunction GetCameraStart() { return mGetCameraStart ? mGetCameraStart : (mGetCameraStart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetCameraStart")); }
			ScriptFunction LimitCameraZ() { return mLimitCameraZ ? mLimitCameraZ : (mLimitCameraZ = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.LimitCameraZ")); }
			ScriptFunction VehicleCalcCamera() { return mVehicleCalcCamera ? mVehicleCalcCamera : (mVehicleCalcCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.VehicleCalcCamera")); }
			ScriptFunction AdjustCameraScale() { return mAdjustCameraScale ? mAdjustCameraScale : (mAdjustCameraScale = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.AdjustCameraScale")); }
			ScriptFunction StartBurnOut() { return mStartBurnOut ? mStartBurnOut : (mStartBurnOut = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.StartBurnOut")); }
			ScriptFunction TurnOffShadows() { return mTurnOffShadows ? mTurnOffShadows : (mTurnOffShadows = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TurnOffShadows")); }
			ScriptFunction DisableDamageSmoke() { return mDisableDamageSmoke ? mDisableDamageSmoke : (mDisableDamageSmoke = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DisableDamageSmoke")); }
			ScriptFunction DisableCollision() { return mDisableCollision ? mDisableCollision : (mDisableCollision = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DisableCollision")); }
			ScriptFunction SetBurnOut() { return mSetBurnOut ? mSetBurnOut : (mSetBurnOut = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetBurnOut")); }
			ScriptFunction ShouldSpawnExplosionLight() { return mShouldSpawnExplosionLight ? mShouldSpawnExplosionLight : (mShouldSpawnExplosionLight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ShouldSpawnExplosionLight")); }
			ScriptFunction RBPenetrationDestroy() { return mRBPenetrationDestroy ? mRBPenetrationDestroy : (mRBPenetrationDestroy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.RBPenetrationDestroy")); }
			ScriptFunction RigidBodyCollision() { return mRigidBodyCollision ? mRigidBodyCollision : (mRigidBodyCollision = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.RigidBodyCollision")); }
			ScriptFunction TurretExplosion() { return mTurretExplosion ? mTurretExplosion : (mTurretExplosion = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.TurretExplosion")); }
			ScriptFunction StopVehicleSounds() { return mStopVehicleSounds ? mStopVehicleSounds : (mStopVehicleSounds = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.StopVehicleSounds")); }
			ScriptFunction CheckDamageSmoke() { return mCheckDamageSmoke ? mCheckDamageSmoke : (mCheckDamageSmoke = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.CheckDamageSmoke")); }
			ScriptFunction AttachDriver() { return mAttachDriver ? mAttachDriver : (mAttachDriver = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.AttachDriver")); }
			ScriptFunction SitDriver() { return mSitDriver ? mSitDriver : (mSitDriver = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SitDriver")); }
			ScriptFunction OnDriverPhysicsAssetChanged() { return mOnDriverPhysicsAssetChanged ? mOnDriverPhysicsAssetChanged : (mOnDriverPhysicsAssetChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.OnDriverPhysicsAssetChanged")); }
			ScriptFunction GetHumanReadableName() { return mGetHumanReadableName ? mGetHumanReadableName : (mGetHumanReadableName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetHumanReadableName")); }
			ScriptFunction OnPropertyChange() { return mOnPropertyChange ? mOnPropertyChange : (mOnPropertyChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.OnPropertyChange")); }
			ScriptFunction GetHealth() { return mGetHealth ? mGetHealth : (mGetHealth = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetHealth")); }
			ScriptFunction GetCollisionDamageModifier() { return mGetCollisionDamageModifier ? mGetCollisionDamageModifier : (mGetCollisionDamageModifier = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetCollisionDamageModifier")); }
			ScriptFunction InitializeMorphs() { return mInitializeMorphs ? mInitializeMorphs : (mInitializeMorphs = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.InitializeMorphs")); }
			ScriptFunction ReceivedHealthChange() { return mReceivedHealthChange ? mReceivedHealthChange : (mReceivedHealthChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ReceivedHealthChange")); }
			ScriptFunction ApplyMorphHeal() { return mApplyMorphHeal ? mApplyMorphHeal : (mApplyMorphHeal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ApplyMorphHeal")); }
			ScriptFunction ApplyRandomMorphDamage() { return mApplyRandomMorphDamage ? mApplyRandomMorphDamage : (mApplyRandomMorphDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ApplyRandomMorphDamage")); }
			ScriptFunction SpawnGibVehicle() { return mSpawnGibVehicle ? mSpawnGibVehicle : (mSpawnGibVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SpawnGibVehicle")); }
			ScriptFunction GetSVehicleDebug() { return mGetSVehicleDebug ? mGetSVehicleDebug : (mGetSVehicleDebug = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetSVehicleDebug")); }
			ScriptFunction OnExitVehicle() { return mOnExitVehicle ? mOnExitVehicle : (mOnExitVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.OnExitVehicle")); }
			ScriptFunction SetShieldActive() { return mSetShieldActive ? mSetShieldActive : (mSetShieldActive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetShieldActive")); }
			ScriptFunction SetSeatStoragePawn() { return mSetSeatStoragePawn ? mSetSeatStoragePawn : (mSetSeatStoragePawn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetSeatStoragePawn")); }
			ScriptFunction SetMovementEffect() { return mSetMovementEffect ? mSetMovementEffect : (mSetMovementEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.SetMovementEffect")); }
			ScriptFunction DetachDriver() { return mDetachDriver ? mDetachDriver : (mDetachDriver = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DetachDriver")); }
			ScriptFunction CanAttack() { return mCanAttack ? mCanAttack : (mCanAttack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.CanAttack")); }
			ScriptFunction GetVehicleKillStatName() { return mGetVehicleKillStatName ? mGetVehicleKillStatName : (mGetVehicleKillStatName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetVehicleKillStatName")); }
			ScriptFunction DisplayHud() { return mDisplayHud ? mDisplayHud : (mDisplayHud = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DisplayHud")); }
			ScriptFunction DrawBarGraph() { return mDrawBarGraph ? mDrawBarGraph : (mDrawBarGraph = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DrawBarGraph")); }
			ScriptFunction DisplayExtraHud() { return mDisplayExtraHud ? mDisplayExtraHud : (mDisplayExtraHud = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DisplayExtraHud")); }
			ScriptFunction DisplaySeats() { return mDisplaySeats ? mDisplaySeats : (mDisplaySeats = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.DisplaySeats")); }
			ScriptFunction GetSeatColor() { return mGetSeatColor ? mGetSeatColor : (mGetSeatColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.GetSeatColor")); }
			ScriptFunction ApplyWeaponEffects() { return mApplyWeaponEffects ? mApplyWeaponEffects : (mApplyWeaponEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ApplyWeaponEffects")); }
			ScriptFunction ShouldLeaveForCombat() { return mShouldLeaveForCombat ? mShouldLeaveForCombat : (mShouldLeaveForCombat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicle.ShouldLeaveForCombat")); }
		}
	}
	static struct Constants
	{
		enum UTVEHICLE_UNSET_TEAM = 255;
	}
	enum EAIVehiclePurpose : ubyte
	{
		AIP_Offensive = 0,
		AIP_Defensive = 1,
		AIP_Any = 2,
		AIP_MAX = 3,
	}
	struct MaterialList
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTVehicle.MaterialList")); }
		@property final auto ref ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 0); }
	}
	struct TimePosition
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTVehicle.TimePosition")); }
		@property final auto ref
		{
			float Time() { return *cast(float*)(cast(size_t)&this + 12); }
			Vector Position() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			UTVehicle NextVehicle() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 2112); }
			float DefaultFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 2652); }
			ScriptArray!(SoundCue) HornSounds() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 2048); }
			ScriptArray!(MaterialInterface) TeamMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 2196); }
			ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) BigExplosionTemplates() { return *cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)(cast(size_t)cast(void*)this + 2232); }
			ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) DistanceTurretExplosionTemplates() { return *cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)(cast(size_t)cast(void*)this + 2312); }
			ScriptArray!(ParticleSystem) SpawnInTemplates() { return *cast(ScriptArray!(ParticleSystem)*)(cast(size_t)cast(void*)this + 2560); }
			ScriptArray!(UTVehicle.MaterialList) SpawnMaterialLists() { return *cast(ScriptArray!(UTVehicle.MaterialList)*)(cast(size_t)cast(void*)this + 2572); }
			ScriptArray!(MaterialInterface) OriginalMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 2608); }
			ScriptArray!(UTVehicle.TimePosition) OldPositions() { return *cast(ScriptArray!(UTVehicle.TimePosition)*)(cast(size_t)cast(void*)this + 2656); }
			ScriptArray!(SoundNodeWave) EnemyVehicleSound() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 2732); }
			ScriptArray!(SoundNodeWave) VehicleDestroyedSound() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 2744); }
			float LastEnemyWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2728); }
			StaticMesh ReferenceMovementMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 2724); }
			ParticleSystem DisabledTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 2716); }
			float TimeLastDisabled() { return *cast(float*)(cast(size_t)cast(void*)this + 2712); }
			float DisabledTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2708); }
			Vector OldCameraPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2696); }
			UTGib DeathCameraGib() { return *cast(UTGib*)(cast(size_t)cast(void*)this + 2692); }
			float MinCameraDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2688); }
			float LookForwardDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2684); }
			Vector CameraOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2672); }
			float CameraLag() { return *cast(float*)(cast(size_t)cast(void*)this + 2668); }
			float CameraSmoothingFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 2648); }
			float OldCamPosZ() { return *cast(float*)(cast(size_t)cast(void*)this + 2644); }
			float SeatCameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2640); }
			float LastCollisionDamageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2636); }
			float CollisionDamageMult() { return *cast(float*)(cast(size_t)cast(void*)this + 2632); }
			MaterialInterface BurnOutMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 2624); }
			float SpawnInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2620); }
			UObject.InterpCurveFloat SpawnMaterialParameterCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 2592); }
			ScriptName SpawnMaterialParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2584); }
			UIRoot.TextureCoordinates HudCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2544); }
			Texture2D HudIcons() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 2540); }
			Vector PassengerTeamBeaconOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2528); }
			PlayerReplicationInfo PassengerPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 2512); }
			Vector TeamBeaconOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2500); }
			float HealthPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2496); }
			int LastHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 2492); }
			UIRoot.TextureCoordinates DropOrbIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2476); }
			UIRoot.TextureCoordinates DropFlagIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2460); }
			UIRoot.TextureCoordinates EnterToolTipIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2444); }
			UIRoot.TextureCoordinates FlipToolTipIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2428); }
			UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2412); }
			float MapSize() { return *cast(float*)(cast(size_t)cast(void*)this + 2408); }
			ScriptName FlagBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2400); }
			Rotator FlagRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2388); }
			Vector FlagOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2376); }
			SoundCue BoostPadSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2372); }
			SoundCue SpawnOutSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2368); }
			SoundCue SpawnInSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2364); }
			float SpawnRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2360); }
			ScriptName BurnTimeParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2352); }
			SoundCue ExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2348); }
			float TurretExplosiveForce() { return *cast(float*)(cast(size_t)cast(void*)this + 2344); }
			StaticMesh DestroyedTurretTemplate() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 2340); }
			UTVehicleDeathPiece DestroyedTurret() { return *cast(UTVehicleDeathPiece*)(cast(size_t)cast(void*)this + 2336); }
			Vector TurretOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2324); }
			ScriptName TurretSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2304); }
			ScriptName TurretScaleControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2296); }
			float OuterExplosionShakeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2292); }
			float InnerExplosionShakeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2288); }
			CameraAnim DeathExplosionShake() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 2284); }
			float ExplosionInAirAngVel() { return *cast(float*)(cast(size_t)cast(void*)this + 2280); }
			float ExplosionMomentum() { return *cast(float*)(cast(size_t)cast(void*)this + 2276); }
			float ExplosionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2272); }
			float ExplosionDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2268); }
			int DelayedBurnoutCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2264); }
			float DeadVehicleLifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 2260); }
			float BurnOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2256); }
			ScriptName BigExplosionSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2248); }
			ParticleSystem SecondaryExplosion() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 2244); }
			ParticleSystem ExplosionTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 2228); }
			float MaxFireEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2224); }
			float MaxImpactEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2220); }
			ScriptClass ExplosionDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2216); }
			float DamageSmokeThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2212); }
			ScriptClass VehiclePieceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2208); }
			int ClientHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 2192); }
			float TimeTilSecondaryVehicleExplosion() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
			Emitter DeathExplosion() { return *cast(Emitter*)(cast(size_t)cast(void*)this + 2184); }
			float MaxExplosionLightDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2180); }
			ScriptClass ExplosionLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2176); }
			ScriptClass VehicleDrowningDamType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2172); }
			float HUDExtent() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
			float TeamBeaconPlayerInfoMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
			UDKPlayerController.ObjectiveAnnouncementInfo NeedToPickUpAnnouncement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 2148); }
			ScriptString VehicleNameString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2136); }
			ScriptString VehiclePositionString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2124); }
			UTBot Reservation() { return *cast(UTBot*)(cast(size_t)cast(void*)this + 2120); }
			UTVehicleFactory ParentFactory() { return *cast(UTVehicleFactory*)(cast(size_t)cast(void*)this + 2116); }
			SoundCue StolenSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2108); }
			int StolenAnnouncementIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 2104); }
			SoundCue RanOverSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2100); }
			ScriptClass RanOverDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2096); }
			SoundCue LockedOnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2092); }
			float ConsoleSteerScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2088); }
			float LookSteerDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 2084); }
			float LookSteerDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 2080); }
			float LookSteerSensitivity() { return *cast(float*)(cast(size_t)cast(void*)this + 2076); }
			float LeftStickDirDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 2072); }
			int HornIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 2068); }
			float LastHornTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2064); }
			float HornAIRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2060); }
			float MaxDesireability() { return *cast(float*)(cast(size_t)cast(void*)this + 2044); }
			SoundCue LinkedEndSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2040); }
			SoundCue LinkedToCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2036); }
			float LinkHealMult() { return *cast(float*)(cast(size_t)cast(void*)this + 2028); }
			float InitialSpawnDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 2024); }
			float RespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2020); }
			float PlayerStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2016); }
			float VehicleLostTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2012); }
			PhysicalMaterial DefaultPhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 2004); }
			PhysicalMaterial DrivingPhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 2000); }
			float DeflectionReverseThresh() { return *cast(float*)(cast(size_t)cast(void*)this + 1996); }
			Actor NoPassengerObjective() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1992); }
			ubyte LinkedToCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1989); }
			UTVehicle.EAIVehiclePurpose AIPurpose() { return *cast(UTVehicle.EAIVehiclePurpose*)(cast(size_t)cast(void*)this + 1988); }
			SoundCue VehicleLockedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1984); }
		}
		bool bCanCarryFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x2) != 0; }
		bool bCanCarryFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x2; } return val; }
		bool bRequestedEntryWithFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x200000) != 0; }
		bool bRequestedEntryWithFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x200000; } return val; }
		bool bHasCustomEntryRadius() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x10) != 0; }
		bool bHasCustomEntryRadius(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x10; } return val; }
		bool bDropDetailWhenDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x10000) != 0; }
		bool bDropDetailWhenDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x10000; } return val; }
		bool bSpectatedView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x200) != 0; }
		bool bSpectatedView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x200; } return val; }
		bool bDriverHoldsFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x1) != 0; }
		bool bDriverHoldsFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x1; } return val; }
		bool bIsNecrisVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x100) != 0; }
		bool bIsNecrisVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x100; } return val; }
		bool bHasEnemyVehicleSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x80) != 0; }
		bool bHasEnemyVehicleSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x80; } return val; }
		bool bStealthVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x40) != 0; }
		bool bStealthVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x40; } return val; }
		bool bShowDamageDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x20) != 0; }
		bool bShowDamageDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x20; } return val; }
		bool bAcceptTurretJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x10) != 0; }
		bool bAcceptTurretJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x10; } return val; }
		bool bIsConsoleTurning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x8) != 0; }
		bool bIsConsoleTurning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x8; } return val; }
		bool bStopDeathCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x4) != 0; }
		bool bStopDeathCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x4; } return val; }
		bool bCameraNeverHidesVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x2) != 0; }
		bool bCameraNeverHidesVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x2; } return val; }
		bool bFixedCamZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x1) != 0; }
		bool bFixedCamZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x1; } return val; }
		bool bNoFollowJumpZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x80000000) != 0; }
		bool bNoFollowJumpZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x80000000; } return val; }
		bool bLimitCameraZLookingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x40000000) != 0; }
		bool bLimitCameraZLookingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x40000000; } return val; }
		bool bNoZSmoothing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x20000000) != 0; }
		bool bNoZSmoothing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x20000000; } return val; }
		bool bRotateCameraUnderVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x10000000) != 0; }
		bool bRotateCameraUnderVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x10000000; } return val; }
		bool bReducedFallingCollisionDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x8000000) != 0; }
		bool bReducedFallingCollisionDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x8000000; } return val; }
		bool bPlayingSpawnEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x4000000) != 0; }
		bool bPlayingSpawnEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x4000000; } return val; }
		bool bPostRenderTraceSucceeded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x2000000) != 0; }
		bool bPostRenderTraceSucceeded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x2000000; } return val; }
		bool bHasTurretExplosion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x1000000) != 0; }
		bool bHasTurretExplosion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x1000000; } return val; }
		bool bRagdollDriverOnDarkwalkerHorn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x800000) != 0; }
		bool bRagdollDriverOnDarkwalkerHorn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x800000; } return val; }
		bool bInitializedVehicleEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x400000) != 0; }
		bool bInitializedVehicleEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x400000; } return val; }
		bool bFindGroundExit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x100000) != 0; }
		bool bFindGroundExit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x100000; } return val; }
		bool bUsingLookSteer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x80000) != 0; }
		bool bUsingLookSteer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x80000; } return val; }
		bool bLookSteerOnSimpleControls() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x40000) != 0; }
		bool bLookSteerOnSimpleControls(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x40000; } return val; }
		bool bLookSteerOnNormalControls() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x20000) != 0; }
		bool bLookSteerOnNormalControls(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x20000; } return val; }
		bool bHasBeenDriven() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x8000) != 0; }
		bool bHasBeenDriven(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x8000; } return val; }
		bool bDriverCastsShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x4000) != 0; }
		bool bDriverCastsShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x4000; } return val; }
		bool bDrawHealthOnHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x2000) != 0; }
		bool bDrawHealthOnHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x2000; } return val; }
		bool bShouldLeaveForCombat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x1000) != 0; }
		bool bShouldLeaveForCombat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x1000; } return val; }
		bool bNeverReset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x800) != 0; }
		bool bNeverReset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x800; } return val; }
		bool bHasWeaponBar() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x400) != 0; }
		bool bHasWeaponBar(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x400; } return val; }
		bool bShouldAutoCenterViewPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x200) != 0; }
		bool bShouldAutoCenterViewPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x200; } return val; }
		bool bStickDeflectionThrottle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x100) != 0; }
		bool bStickDeflectionThrottle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x100; } return val; }
		bool bOverrideAVRiLLocks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x80) != 0; }
		bool bOverrideAVRiLLocks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x80; } return val; }
		bool bMustBeUpright() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x40) != 0; }
		bool bMustBeUpright(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x40; } return val; }
		bool bKeyVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x20) != 0; }
		bool bKeyVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x20; } return val; }
		bool bEnteringUnlocks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x8) != 0; }
		bool bEnteringUnlocks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x8; } return val; }
		bool bValidLinkTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x4) != 0; }
		bool bValidLinkTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x4; } return val; }
	}
final:
	bool TryToDrive(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryToDrive, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool InCustomEntryRadius(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.InCustomEntryRadius, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void UpdateShadowSettings(bool bWantShadow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWantShadow;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateShadowSettings, params.ptr, cast(void*)0);
	}
	void ReattachMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReattachMesh, cast(void*)0, cast(void*)0);
	}
	void CreateDamageMaterialInstance()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateDamageMaterialInstance, cast(void*)0, cast(void*)0);
	}
	void UpdateLookSteerStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLookSteerStatus, cast(void*)0, cast(void*)0);
	}
	void SetInputs(float InForward, float InStrafe, float InUp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = InUp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInputs, params.ptr, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	float GetChargePower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetChargePower, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PlaySpawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaySpawnEffect, cast(void*)0, cast(void*)0);
	}
	void StopSpawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopSpawnEffect, cast(void*)0, cast(void*)0);
	}
	void EjectSeat(int SeatIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.EjectSeat, params.ptr, cast(void*)0);
	}
	ScriptClass GetRanOverDamageType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRanOverDamageType, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void DisplayWeaponBar(Canvas pCanvas, UTHUD pHUD)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTHUD*)&params[4] = pHUD;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayWeaponBar, params.ptr, cast(void*)0);
	}
	static void DrawKillIcon(Canvas pCanvas, float ScreenX, float ScreenY, float HUDScaleX, float HUDScaleY)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = ScreenX;
		*cast(float*)&params[8] = ScreenY;
		*cast(float*)&params[12] = HUDScaleX;
		*cast(float*)&params[16] = HUDScaleY;
		StaticClass.ProcessEvent(Functions.DrawKillIcon, params.ptr, cast(void*)0);
	}
	void RenderMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, UObject.LinearColor FinalColor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(UObject.LinearColor*)&params[12] = FinalColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderMapIcon, params.ptr, cast(void*)0);
	}
	float AdjustedStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustedStrength, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool ContinueOnFoot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ContinueOnFoot, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsDriverSeat(Vehicle TestSeatPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = TestSeatPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDriverSeat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool RecommendCharge(UTBot B, Pawn Enemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = Enemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecommendCharge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CriticalChargeAttack(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.CriticalChargeAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void CreateVehicleEffect(int EffectIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EffectIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateVehicleEffect, params.ptr, cast(void*)0);
	}
	void InitializeEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeEffects, cast(void*)0, cast(void*)0);
	}
	void SetVehicleEffectParms(ScriptName TriggerName, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TriggerName;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8] = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVehicleEffectParms, params.ptr, cast(void*)0);
	}
	void TriggerVehicleEffect(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerVehicleEffect, params.ptr, cast(void*)0);
	}
	void PlayVehicleSound(ScriptName SoundTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SoundTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVehicleSound, params.ptr, cast(void*)0);
	}
	void PlayVehicleAnimation(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVehicleAnimation, params.ptr, cast(void*)0);
	}
	void VehicleEvent(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleEvent, params.ptr, cast(void*)0);
	}
	void EntryAnnouncement(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.EntryAnnouncement, params.ptr, cast(void*)0);
	}
	Rotator ExitRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	bool FindAutoExit(Pawn ExitingDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindAutoExit, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.RanInto, params.ptr, cast(void*)0);
	}
	void PancakeOther(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PancakeOther, params.ptr, cast(void*)0);
	}
	void TakeWaterDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeWaterDamage, cast(void*)0, cast(void*)0);
	}
	void DriverRadiusDamage(float DamageAmount, float DamageRadius, Controller EventInstigator, ScriptClass pDamageType, float Momentum, Vector HitLocation, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = DamageRadius;
		*cast(Controller*)&params[8] = EventInstigator;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(Actor*)&params[32] = DamageCauser;
		*cast(float*)&params[36] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverRadiusDamage, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void SetTexturesToBeResident(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTexturesToBeResident, params.ptr, cast(void*)0);
	}
	bool DisableVehicle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void EnableVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableVehicle, cast(void*)0, cast(void*)0);
	}
	void TakeFireDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFireDamage, cast(void*)0, cast(void*)0);
	}
	int GetSeatIndexFromPrefix(ScriptString Prefix)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Prefix;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatIndexFromPrefix, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void ServerSetConsoleTurning(bool bNewConsoleTurning)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewConsoleTurning;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetConsoleTurning, params.ptr, cast(void*)0);
	}
	void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
	Rotator GetClampedViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClampedViewRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	bool ShouldClamp()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldClamp, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Rotator GetViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	void WeaponRotationChanged(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponRotationChanged, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void SetKeyVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetKeyVehicle, cast(void*)0, cast(void*)0);
	}
	void DrivingStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrivingStatusChanged, cast(void*)0, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimEnd, params.ptr, cast(void*)0);
	}
	bool SeatAvailable(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeatAvailable, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AnySeatAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnySeatAvailable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetSeatIndexForController(Controller ControllerToMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatIndexForController, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	Controller GetControllerForSeatIndex(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetControllerForSeatIndex, params.ptr, cast(void*)0);
		return *cast(Controller*)&params[4];
	}
	void ServerAdjacentSeat(int Direction, Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Direction;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAdjacentSeat, params.ptr, cast(void*)0);
	}
	void ServerChangeSeat(int RequestedSeat)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerChangeSeat, params.ptr, cast(void*)0);
	}
	bool HasPriority(Controller first, Controller Second)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = first;
		*cast(Controller*)&params[4] = Second;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasPriority, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool ChangeSeat(Controller ControllerToMove, int RequestedSeat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		*cast(int*)&params[4] = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeSeat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TornOff, cast(void*)0, cast(void*)0);
	}
	Controller GetCollisionDamageInstigator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollisionDamageInstigator, params.ptr, cast(void*)0);
		return *cast(Controller*)params.ptr;
	}
	bool Died(Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = pDamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.Died, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void BlowupVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BlowupVehicle, cast(void*)0, cast(void*)0);
	}
	PlayerReplicationInfo GetSeatPRI(int SeatNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatPRI, params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)&params[4];
	}
	bool CanEnterVehicle(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanEnterVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool KickOutBot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.KickOutBot, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void VehicleLocked(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleLocked, params.ptr, cast(void*)0);
	}
	bool ShouldShowUseable(PlayerController PC, float Dist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(float*)&params[4] = Dist;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowUseable, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
	float GetDisplayedHealth()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDisplayedHealth, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void RenderPassengerBeacons(PlayerController PC, Canvas pCanvas, UObject.LinearColor TeamColor, UObject.Color TextColor, UTWeapon Weap)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.LinearColor*)&params[8] = TeamColor;
		*cast(UObject.Color*)&params[24] = TextColor;
		*cast(UTWeapon*)&params[28] = Weap;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderPassengerBeacons, params.ptr, cast(void*)0);
	}
	void PostRenderPassengerBeacon(PlayerController PC, Canvas pCanvas, UObject.LinearColor TeamColor, UObject.Color TextColor, UTWeapon Weap, PlayerReplicationInfo InPassengerPRI, Vector InPassengerTeamBeaconOffset)
	{
		ubyte params[48];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.LinearColor*)&params[8] = TeamColor;
		*cast(UObject.Color*)&params[24] = TextColor;
		*cast(UTWeapon*)&params[28] = Weap;
		*cast(PlayerReplicationInfo*)&params[32] = InPassengerPRI;
		*cast(Vector*)&params[36] = InPassengerTeamBeaconOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderPassengerBeacon, params.ptr, cast(void*)0);
	}
	void SetTeamNum(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeamNum, params.ptr, cast(void*)0);
	}
	void TeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamChanged, cast(void*)0, cast(void*)0);
	}
	void TeamChanged_VehicleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamChanged_VehicleEffects, cast(void*)0, cast(void*)0);
	}
	bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.Dodge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void IncomingMissile(Projectile P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncomingMissile, params.ptr, cast(void*)0);
	}
	void ShootMissile(Projectile P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShootMissile, params.ptr, cast(void*)0);
	}
	void SendLockOnMessage(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendLockOnMessage, params.ptr, cast(void*)0);
	}
	void LockOnWarning(UDKProjectile IncomingMissile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKProjectile*)params.ptr = IncomingMissile;
		(cast(ScriptObject)this).ProcessEvent(Functions.LockOnWarning, params.ptr, cast(void*)0);
	}
	bool TooCloseToAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.TooCloseToAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckTurretPitchLimit(int NeededPitch, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = NeededPitch;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckTurretPitchLimit, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PlayHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayHorn, cast(void*)0, cast(void*)0);
	}
	bool DriverLeave(bool bForceLeave)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceLeave;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeave, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void UpdateControllerOnPossess(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateControllerOnPossess, params.ptr, cast(void*)0);
	}
	int NumPassengers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NumPassengers, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	UTVehicle GetMoveTargetFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMoveTargetFor, params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[4];
	}
	void HandleEnteringFlag(UTPlayerReplicationInfo EnteringPRI, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = EnteringPRI;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleEnteringFlag, params.ptr, cast(void*)0);
	}
	bool DriverEnter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverEnter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.HoldGameObject, params.ptr, cast(void*)0);
	}
	void AttachFlag(UTCarriedObject FlagActor, Pawn NewDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTCarriedObject*)params.ptr = FlagActor;
		*cast(Pawn*)&params[4] = NewDriver;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachFlag, params.ptr, cast(void*)0);
	}
	void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeft, cast(void*)0, cast(void*)0);
	}
	int GetFirstAvailableSeat(bool bSeatMustAllowFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSeatMustAllowFlag;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFirstAvailableSeat, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool PassengerEnter(Pawn P, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PassengerEnter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PassengerLeave(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PassengerLeave, params.ptr, cast(void*)0);
	}
	void CheckReset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckReset, cast(void*)0, cast(void*)0);
	}
	bool Occupied()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Occupied, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool OpenPositionFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenPositionFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float BotDesireability(UTSquadAI S, int TeamIndex, Actor Objective)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = S;
		*cast(int*)&params[4] = TeamIndex;
		*cast(Actor*)&params[8] = Objective;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float ReservationCostMultiplier(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReservationCostMultiplier, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool SpokenFor(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpokenFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopsProjectile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetReservation(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetReservation, params.ptr, cast(void*)0);
	}
	bool TeamLink(int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamLink, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowLinkThroughOwnedActor(Actor OwnedActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = OwnedActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowLinkThroughOwnedActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HealDamage(int Amount, Controller Healer, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		*cast(Controller*)&params[4] = Healer;
		*cast(ScriptClass*)&params[8] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.HealDamage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void IncrementLinkedToCount()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementLinkedToCount, cast(void*)0, cast(void*)0);
	}
	void DecrementLinkedToCount()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DecrementLinkedToCount, cast(void*)0, cast(void*)0);
	}
	void StartLinkedEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartLinkedEffect, cast(void*)0, cast(void*)0);
	}
	void StopLinkedEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopLinkedEffect, cast(void*)0, cast(void*)0);
	}
	void PlayHit(float Damage, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Vector Momentum, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[64];
		params[] = 0;
		*cast(float*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayHit, params.ptr, cast(void*)0);
	}
	void PlayTakeHitEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayTakeHitEffects, cast(void*)0, cast(void*)0);
	}
	void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass pDamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTakeHit, params.ptr, cast(void*)0);
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
	Actor GetHomingTarget(UTProjectile Seeker, Controller InstigatedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTProjectile*)params.ptr = Seeker;
		*cast(Controller*)&params[4] = InstigatedBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHomingTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[8];
	}
	bool ImportantVehicle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ImportantVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void InitializeSeats()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeSeats, cast(void*)0, cast(void*)0);
	}
	void PreCacheSeatNames()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreCacheSeatNames, cast(void*)0, cast(void*)0);
	}
	void InitializeTurrets()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeTurrets, cast(void*)0, cast(void*)0);
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.PossessedBy, params.ptr, cast(void*)0);
	}
	void SetFiringMode(Weapon Weap, ubyte FiringModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Weap;
		params[4] = FiringModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFiringMode, params.ptr, cast(void*)0);
	}
	void ClearFlashCount(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlashCount, params.ptr, cast(void*)0);
	}
	void IncrementFlashCount(Weapon Who, ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementFlashCount, params.ptr, cast(void*)0);
	}
	void SetFlashLocation(Weapon Who, ubyte FireModeNum, Vector NewLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		*cast(Vector*)&params[8] = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlashLocation, params.ptr, cast(void*)0);
	}
	void ClearFlashLocation(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlashLocation, params.ptr, cast(void*)0);
	}
	void GetBarrelLocationAndRotation(int SeatIndex, Vector* SocketLocation, Rotator* SocketRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Vector*)&params[4] = *SocketLocation;
		*cast(Rotator*)&params[16] = *SocketRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBarrelLocationAndRotation, params.ptr, cast(void*)0);
		*SocketLocation = *cast(Vector*)&params[4];
		*SocketRotation = *cast(Rotator*)&params[16];
	}
	Vector GetEffectLocation(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEffectLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetPhysicalFireStartLoc(UTWeapon ForWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = ForWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalFireStartLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Rotator GetWeaponAim(UTVehicleWeapon VWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTVehicleWeapon*)params.ptr = VWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponAim, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
	bool OverrideBeginFire(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverrideBeginFire, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool OverrideEndFire(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverrideEndFire, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetWeaponViewAxes(UTWeapon WhichWeapon, Vector* XAxis, Vector* YAxis, Vector* ZAxis)
	{
		ubyte params[40];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = WhichWeapon;
		*cast(Vector*)&params[4] = *XAxis;
		*cast(Vector*)&params[16] = *YAxis;
		*cast(Vector*)&params[28] = *ZAxis;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponViewAxes, params.ptr, cast(void*)0);
		*XAxis = *cast(Vector*)&params[4];
		*YAxis = *cast(Vector*)&params[16];
		*ZAxis = *cast(Vector*)&params[28];
	}
	void CauseMuzzleFlashLight(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CauseMuzzleFlashLight, params.ptr, cast(void*)0);
	}
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponFired, params.ptr, cast(void*)0);
	}
	void VehicleWeaponFired(bool bViaReplication, Vector HitLocation, int SeatIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bViaReplication;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponFired, params.ptr, cast(void*)0);
	}
	void WeaponStoppedFiring(Weapon InWeapon, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponStoppedFiring, params.ptr, cast(void*)0);
	}
	void VehicleWeaponStoppedFiring(bool bViaReplication, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bViaReplication;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponStoppedFiring, params.ptr, cast(void*)0);
	}
	void VehicleWeaponFireEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponFireEffects, params.ptr, cast(void*)0);
	}
	Actor FindWeaponHitNormal(Vector* HitLocation, Vector* HitNormal, Vector End, Vector Start, Actor.TraceHitInfo* HitInfo)
	{
		ubyte params[80];
		params[] = 0;
		*cast(Vector*)params.ptr = *HitLocation;
		*cast(Vector*)&params[12] = *HitNormal;
		*cast(Vector*)&params[24] = End;
		*cast(Vector*)&params[36] = Start;
		*cast(Actor.TraceHitInfo*)&params[48] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindWeaponHitNormal, params.ptr, cast(void*)0);
		*HitLocation = *cast(Vector*)params.ptr;
		*HitNormal = *cast(Vector*)&params[12];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[48];
		return *cast(Actor*)&params[76];
	}
	void VehicleWeaponImpactEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponImpactEffects, params.ptr, cast(void*)0);
	}
	void SpawnImpactEmitter(Vector HitLocation, Vector HitNormal, UDKPawn.MaterialImpactEffect* ImpactEffect, int SeatIndex)
	{
		ubyte params[76];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(UDKPawn.MaterialImpactEffect*)&params[24] = *ImpactEffect;
		*cast(int*)&params[72] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnImpactEmitter, params.ptr, cast(void*)0);
		*ImpactEffect = *cast(UDKPawn.MaterialImpactEffect*)&params[24];
	}
	void VehicleAdjustFlashCount(int SeatIndex, ubyte FireModeNum, bool bClear)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = FireModeNum;
		*cast(bool*)&params[8] = bClear;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleAdjustFlashCount, params.ptr, cast(void*)0);
	}
	void VehicleAdjustFlashLocation(int SeatIndex, ubyte FireModeNum, Vector NewLocation, bool bClear)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = FireModeNum;
		*cast(Vector*)&params[8] = NewLocation;
		*cast(bool*)&params[20] = bClear;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleAdjustFlashLocation, params.ptr, cast(void*)0);
	}
	void FindGoodEndView(PlayerController PC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindGoodEndView, params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	bool CalcCamera(float DeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	Vector GetCameraFocus(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCameraFocus, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetCameraStart(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCameraStart, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	float LimitCameraZ(float CurrentCamZ, float OriginalCamZ, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = CurrentCamZ;
		*cast(float*)&params[4] = OriginalCamZ;
		*cast(int*)&params[8] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.LimitCameraZ, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void VehicleCalcCamera(float DeltaTime, int SeatIndex, Vector* out_CamLoc, Rotator* out_CamRot, Vector* CamStart, bool bPivotOnly)
	{
		ubyte params[48];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(int*)&params[4] = SeatIndex;
		*cast(Vector*)&params[8] = *out_CamLoc;
		*cast(Rotator*)&params[20] = *out_CamRot;
		*cast(Vector*)&params[32] = *CamStart;
		*cast(bool*)&params[44] = bPivotOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleCalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[8];
		*out_CamRot = *cast(Rotator*)&params[20];
		*CamStart = *cast(Vector*)&params[32];
	}
	void AdjustCameraScale(bool bMoveCameraIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bMoveCameraIn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustCameraScale, params.ptr, cast(void*)0);
	}
	void StartBurnOut()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartBurnOut, cast(void*)0, cast(void*)0);
	}
	void TurnOffShadows()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TurnOffShadows, cast(void*)0, cast(void*)0);
	}
	void DisableDamageSmoke()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableDamageSmoke, cast(void*)0, cast(void*)0);
	}
	void DisableCollision()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableCollision, cast(void*)0, cast(void*)0);
	}
	void SetBurnOut()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBurnOut, cast(void*)0, cast(void*)0);
	}
	bool ShouldSpawnExplosionLight(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSpawnExplosionLight, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void RBPenetrationDestroy()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RBPenetrationDestroy, cast(void*)0, cast(void*)0);
	}
	void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComponent, Actor.CollisionImpactData* Collision, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *Collision;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RigidBodyCollision, params.ptr, cast(void*)0);
		*Collision = *cast(Actor.CollisionImpactData*)&params[8];
	}
	void TurretExplosion()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TurretExplosion, cast(void*)0, cast(void*)0);
	}
	void StopVehicleSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopVehicleSounds, cast(void*)0, cast(void*)0);
	}
	void CheckDamageSmoke()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDamageSmoke, cast(void*)0, cast(void*)0);
	}
	void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachDriver, params.ptr, cast(void*)0);
	}
	void SitDriver(UTPawn UTP, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SitDriver, params.ptr, cast(void*)0);
	}
	void OnDriverPhysicsAssetChanged(UTPawn UTP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDriverPhysicsAssetChanged, params.ptr, cast(void*)0);
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void OnPropertyChange(ScriptName PropName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPropertyChange, params.ptr, cast(void*)0);
	}
	int GetHealth(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHealth, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	float GetCollisionDamageModifier(ScriptArray!(Actor.RigidBodyContactInfo)* ContactInfos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Actor.RigidBodyContactInfo)*)params.ptr = *ContactInfos;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollisionDamageModifier, params.ptr, cast(void*)0);
		*ContactInfos = *cast(ScriptArray!(Actor.RigidBodyContactInfo)*)params.ptr;
		return *cast(float*)&params[12];
	}
	void InitializeMorphs()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeMorphs, cast(void*)0, cast(void*)0);
	}
	void ReceivedHealthChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedHealthChange, cast(void*)0, cast(void*)0);
	}
	void ApplyMorphHeal(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyMorphHeal, params.ptr, cast(void*)0);
	}
	void ApplyRandomMorphDamage(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyRandomMorphDamage, params.ptr, cast(void*)0);
	}
	UTGib SpawnGibVehicle(Vector SpawnLocation, Rotator SpawnRotation, StaticMesh TheMesh, Vector HitLocation, bool bSpinGib, Vector ImpulseDirection, ParticleSystem PS_OnBreak, ParticleSystem PS_Trail)
	{
		ubyte params[68];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		*cast(StaticMesh*)&params[24] = TheMesh;
		*cast(Vector*)&params[28] = HitLocation;
		*cast(bool*)&params[40] = bSpinGib;
		*cast(Vector*)&params[44] = ImpulseDirection;
		*cast(ParticleSystem*)&params[56] = PS_OnBreak;
		*cast(ParticleSystem*)&params[60] = PS_Trail;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnGibVehicle, params.ptr, cast(void*)0);
		return *cast(UTGib*)&params[64];
	}
	void GetSVehicleDebug(ScriptArray!(ScriptString)* DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSVehicleDebug, params.ptr, cast(void*)0);
		*DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	void OnExitVehicle(UTSeqAct_ExitVehicle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_ExitVehicle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnExitVehicle, params.ptr, cast(void*)0);
	}
	void SetShieldActive(int SeatIndex, bool bActive)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetShieldActive, params.ptr, cast(void*)0);
	}
	void SetSeatStoragePawn(int SeatIndex, Pawn PawnToSit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Pawn*)&params[4] = PawnToSit;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSeatStoragePawn, params.ptr, cast(void*)0);
	}
	void SetMovementEffect(int SeatIndex, bool bSetActive, UTPawn UTP)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bSetActive;
		*cast(UTPawn*)&params[8] = UTP;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMovementEffect, params.ptr, cast(void*)0);
	}
	void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachDriver, params.ptr, cast(void*)0);
	}
	bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptName GetVehicleKillStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVehicleKillStatName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void DisplayHud(UTHUD pHUD, Canvas pCanvas, UObject.Vector2D HudPOS, int SeatIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTHUD*)params.ptr = pHUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.Vector2D*)&params[8] = HudPOS;
		*cast(int*)&params[16] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayHud, params.ptr, cast(void*)0);
	}
	void DrawBarGraph(float X, float Y, float Width, float MaxWidth, float Height, Canvas DrawCanvas)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = MaxWidth;
		*cast(float*)&params[16] = Height;
		*cast(Canvas*)&params[20] = DrawCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawBarGraph, params.ptr, cast(void*)0);
	}
	void DisplayExtraHud(UTHUD pHUD, Canvas pCanvas, UObject.Vector2D pos, float Width, float Height, int SIndex)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTHUD*)params.ptr = pHUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.Vector2D*)&params[8] = pos;
		*cast(float*)&params[16] = Width;
		*cast(float*)&params[20] = Height;
		*cast(int*)&params[24] = SIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayExtraHud, params.ptr, cast(void*)0);
	}
	void DisplaySeats(UTHUD pHUD, Canvas pCanvas, float PosX, float PosY, float Width, float Height, int SIndex)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTHUD*)params.ptr = pHUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(float*)&params[8] = PosX;
		*cast(float*)&params[12] = PosY;
		*cast(float*)&params[16] = Width;
		*cast(float*)&params[20] = Height;
		*cast(int*)&params[24] = SIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplaySeats, params.ptr, cast(void*)0);
	}
	UObject.LinearColor GetSeatColor(int SeatIndex, bool bIsPlayersSeat)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bIsPlayersSeat;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatColor, params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[8];
	}
	void ApplyWeaponEffects(int OverlayFlags, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OverlayFlags;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyWeaponEffects, params.ptr, cast(void*)0);
	}
	bool ShouldLeaveForCombat(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldLeaveForCombat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
