module UnrealScript.TribesGame.TrGameObjective;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Material;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrStatsInterface;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.Engine.SoundCue;

extern(C++) interface TrGameObjective : UTGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameObjective")); }
	private static __gshared TrGameObjective mDefaultProperties;
	@property final static TrGameObjective DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameObjective)("TrGameObjective TribesGame.Default__TrGameObjective")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsEnemy;
			ScriptFunction mIsInLOS_Basic;
			ScriptFunction mApplyServerSettings;
			ScriptFunction mGetScreenName;
			ScriptFunction mGetSpectatorName;
			ScriptFunction mGetHealthAmount;
			ScriptFunction mGetUpgradeCost;
			ScriptFunction mShouldShowPromptText;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mTick;
			ScriptFunction mShootable;
			ScriptFunction mRegenerateHealth;
			ScriptFunction mDoRepairs;
			ScriptFunction mTakeDamage;
			ScriptFunction mClientRecievedHitInfo;
			ScriptFunction mClientPlayUpgradeEffect;
			ScriptFunction mPlayDestroyedEffects;
			ScriptFunction mOnHealthChanged;
			ScriptFunction mPlayDamageHealthEffects;
			ScriptFunction mPlayDamageShieldEffects;
			ScriptFunction mPlayExplosion;
			ScriptFunction mSetPowered;
			ScriptFunction mOnPowerStatusChanged;
			ScriptFunction mHideMesh;
			ScriptFunction mShouldPostRenderForCaH;
			ScriptFunction mPostRenderFor;
			ScriptFunction mGetMarker;
			ScriptFunction mGetPossessiveInstigatorName;
			ScriptFunction mBlocksLineChecksFromSourceActor;
			ScriptFunction mReset;
			ScriptFunction mSpawnHelpTextCollisionProxy;
			ScriptFunction mShouldShowHelpText;
			ScriptFunction mReceivesPowerFromGenerator;
			ScriptFunction mPerformUpgrade;
			ScriptFunction mAddUpgrader;
			ScriptFunction mAddDamageAssistance;
			ScriptFunction mCheckRepairAssists;
			ScriptFunction mCheckDestroyAssists;
			ScriptFunction mClearDamageAssistance;
			ScriptFunction mGiveDestroyAccolade;
			ScriptFunction mGetSpectatorHealthInfo;
			ScriptFunction mGetSpectatorDescription;
			ScriptFunction mIsAliveAndWell;
			ScriptFunction mInstantlyRegenerateHealth;
			ScriptFunction mHideBasePlatform;
			ScriptFunction mDestroyed;
			ScriptFunction mRequiresLOSForRepairDeployable;
			ScriptFunction mAwardKillAssists;
			ScriptFunction mAwardUpgradeAssists;
			ScriptFunction mOnUpgradePerformed;
		}
		public @property static final
		{
			ScriptFunction IsEnemy() { return mIsEnemy ? mIsEnemy : (mIsEnemy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.IsEnemy")); }
			ScriptFunction IsInLOS_Basic() { return mIsInLOS_Basic ? mIsInLOS_Basic : (mIsInLOS_Basic = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.IsInLOS_Basic")); }
			ScriptFunction ApplyServerSettings() { return mApplyServerSettings ? mApplyServerSettings : (mApplyServerSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.ApplyServerSettings")); }
			ScriptFunction GetScreenName() { return mGetScreenName ? mGetScreenName : (mGetScreenName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.GetScreenName")); }
			ScriptFunction GetSpectatorName() { return mGetSpectatorName ? mGetSpectatorName : (mGetSpectatorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.GetSpectatorName")); }
			ScriptFunction GetHealthAmount() { return mGetHealthAmount ? mGetHealthAmount : (mGetHealthAmount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.GetHealthAmount")); }
			ScriptFunction GetUpgradeCost() { return mGetUpgradeCost ? mGetUpgradeCost : (mGetUpgradeCost = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.GetUpgradeCost")); }
			ScriptFunction ShouldShowPromptText() { return mShouldShowPromptText ? mShouldShowPromptText : (mShouldShowPromptText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.ShouldShowPromptText")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.ReplicatedEvent")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.Tick")); }
			ScriptFunction Shootable() { return mShootable ? mShootable : (mShootable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.Shootable")); }
			ScriptFunction RegenerateHealth() { return mRegenerateHealth ? mRegenerateHealth : (mRegenerateHealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.RegenerateHealth")); }
			ScriptFunction DoRepairs() { return mDoRepairs ? mDoRepairs : (mDoRepairs = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.DoRepairs")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.TakeDamage")); }
			ScriptFunction ClientRecievedHitInfo() { return mClientRecievedHitInfo ? mClientRecievedHitInfo : (mClientRecievedHitInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.ClientRecievedHitInfo")); }
			ScriptFunction ClientPlayUpgradeEffect() { return mClientPlayUpgradeEffect ? mClientPlayUpgradeEffect : (mClientPlayUpgradeEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.ClientPlayUpgradeEffect")); }
			ScriptFunction PlayDestroyedEffects() { return mPlayDestroyedEffects ? mPlayDestroyedEffects : (mPlayDestroyedEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.PlayDestroyedEffects")); }
			ScriptFunction OnHealthChanged() { return mOnHealthChanged ? mOnHealthChanged : (mOnHealthChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.OnHealthChanged")); }
			ScriptFunction PlayDamageHealthEffects() { return mPlayDamageHealthEffects ? mPlayDamageHealthEffects : (mPlayDamageHealthEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.PlayDamageHealthEffects")); }
			ScriptFunction PlayDamageShieldEffects() { return mPlayDamageShieldEffects ? mPlayDamageShieldEffects : (mPlayDamageShieldEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.PlayDamageShieldEffects")); }
			ScriptFunction PlayExplosion() { return mPlayExplosion ? mPlayExplosion : (mPlayExplosion = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.PlayExplosion")); }
			ScriptFunction SetPowered() { return mSetPowered ? mSetPowered : (mSetPowered = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.SetPowered")); }
			ScriptFunction OnPowerStatusChanged() { return mOnPowerStatusChanged ? mOnPowerStatusChanged : (mOnPowerStatusChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.OnPowerStatusChanged")); }
			ScriptFunction HideMesh() { return mHideMesh ? mHideMesh : (mHideMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.HideMesh")); }
			ScriptFunction ShouldPostRenderForCaH() { return mShouldPostRenderForCaH ? mShouldPostRenderForCaH : (mShouldPostRenderForCaH = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.ShouldPostRenderForCaH")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.PostRenderFor")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.GetMarker")); }
			ScriptFunction GetPossessiveInstigatorName() { return mGetPossessiveInstigatorName ? mGetPossessiveInstigatorName : (mGetPossessiveInstigatorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.GetPossessiveInstigatorName")); }
			ScriptFunction BlocksLineChecksFromSourceActor() { return mBlocksLineChecksFromSourceActor ? mBlocksLineChecksFromSourceActor : (mBlocksLineChecksFromSourceActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.BlocksLineChecksFromSourceActor")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.Reset")); }
			ScriptFunction SpawnHelpTextCollisionProxy() { return mSpawnHelpTextCollisionProxy ? mSpawnHelpTextCollisionProxy : (mSpawnHelpTextCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.SpawnHelpTextCollisionProxy")); }
			ScriptFunction ShouldShowHelpText() { return mShouldShowHelpText ? mShouldShowHelpText : (mShouldShowHelpText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.ShouldShowHelpText")); }
			ScriptFunction ReceivesPowerFromGenerator() { return mReceivesPowerFromGenerator ? mReceivesPowerFromGenerator : (mReceivesPowerFromGenerator = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.ReceivesPowerFromGenerator")); }
			ScriptFunction PerformUpgrade() { return mPerformUpgrade ? mPerformUpgrade : (mPerformUpgrade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.PerformUpgrade")); }
			ScriptFunction AddUpgrader() { return mAddUpgrader ? mAddUpgrader : (mAddUpgrader = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.AddUpgrader")); }
			ScriptFunction AddDamageAssistance() { return mAddDamageAssistance ? mAddDamageAssistance : (mAddDamageAssistance = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.AddDamageAssistance")); }
			ScriptFunction CheckRepairAssists() { return mCheckRepairAssists ? mCheckRepairAssists : (mCheckRepairAssists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.CheckRepairAssists")); }
			ScriptFunction CheckDestroyAssists() { return mCheckDestroyAssists ? mCheckDestroyAssists : (mCheckDestroyAssists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.CheckDestroyAssists")); }
			ScriptFunction ClearDamageAssistance() { return mClearDamageAssistance ? mClearDamageAssistance : (mClearDamageAssistance = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.ClearDamageAssistance")); }
			ScriptFunction GiveDestroyAccolade() { return mGiveDestroyAccolade ? mGiveDestroyAccolade : (mGiveDestroyAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.GiveDestroyAccolade")); }
			ScriptFunction GetSpectatorHealthInfo() { return mGetSpectatorHealthInfo ? mGetSpectatorHealthInfo : (mGetSpectatorHealthInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.GetSpectatorHealthInfo")); }
			ScriptFunction GetSpectatorDescription() { return mGetSpectatorDescription ? mGetSpectatorDescription : (mGetSpectatorDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.GetSpectatorDescription")); }
			ScriptFunction IsAliveAndWell() { return mIsAliveAndWell ? mIsAliveAndWell : (mIsAliveAndWell = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.IsAliveAndWell")); }
			ScriptFunction InstantlyRegenerateHealth() { return mInstantlyRegenerateHealth ? mInstantlyRegenerateHealth : (mInstantlyRegenerateHealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.InstantlyRegenerateHealth")); }
			ScriptFunction HideBasePlatform() { return mHideBasePlatform ? mHideBasePlatform : (mHideBasePlatform = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.HideBasePlatform")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.Destroyed")); }
			ScriptFunction RequiresLOSForRepairDeployable() { return mRequiresLOSForRepairDeployable ? mRequiresLOSForRepairDeployable : (mRequiresLOSForRepairDeployable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.RequiresLOSForRepairDeployable")); }
			ScriptFunction AwardKillAssists() { return mAwardKillAssists ? mAwardKillAssists : (mAwardKillAssists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.AwardKillAssists")); }
			ScriptFunction AwardUpgradeAssists() { return mAwardUpgradeAssists ? mAwardUpgradeAssists : (mAwardUpgradeAssists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.AwardUpgradeAssists")); }
			ScriptFunction OnUpgradePerformed() { return mOnUpgradePerformed ? mOnUpgradePerformed : (mOnUpgradePerformed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGameObjective.OnUpgradePerformed")); }
		}
	}
	static struct Constants
	{
		enum
		{
			MAX_CLASS_SLOTS = 10,
			TR_QUERY_CTF = 0,
			TR_QUERY_TDM = 1,
			TR_QUERY_RABBIT = 2,
			TR_QUERY_TEAMRABBIT = 3,
			TR_QUERY_ARENA = 4,
			TR_QUERY_DEFENDANDDESTROY = 5,
			TR_QUERY_CTFBLITZ = 6,
			CONTEXT_GAME_MODE_TRCTF = 0,
			CONTEXT_GAME_MODE_TRTDM = 1,
			CONTEXT_GAME_MODE_TRRABBIT = 2,
			CONTEXT_GAME_MODE_TRSIEGE = 3,
			CONTEXT_GAME_MODE_TRTRAINING = 4,
			CONTEXT_GAME_MODE_TRSTORM = 5,
			CONTEXT_GAME_MODE_TRTEAMRABBIT = 6,
			CONTEXT_GAME_MODE_TRARENA = 7,
			CONTEXT_GAME_MODE_TRDEFENDANDDESTROY = 8,
			CONTEXT_GAME_MODE_TRCAPTUREANDHOLD = 9,
			CONTEXT_GAME_MODE_TRCTFBLITZ = 10,
			STAT_VIEW_BASE_PLAYER = 1,
			STAT_VIEW_BASE_GAME = 101,
			STAT_VIEW_BASE_WEAPON_TYPE = 1000,
			GAME_SESSION_NAME = "Game",
			PROPERTY_CUSTOM_MAPNAME = 0x40000001,
			PROPERTY_CUSTOM_GAMEMODE = 0x40000002,
			PROPERTY_SERVER_DESCRIPTION = 0x40000003,
			PROPERTY_CUSTOM_MUTATORS = 0x40000004,
			CLASS_TYPE_UNKNOWN = 1668,
			CLASS_TYPE_LIGHT_INFILTRATOR = 1682,
			CLASS_TYPE_LIGHT_JUMPER = 1696,
			CLASS_TYPE_LIGHT_ARCHITECT = 1697,
			CLASS_TYPE_LIGHT_PATHFINDER = 1683,
			CLASS_TYPE_LIGHT_NAKEDPATHFINDER = 1701,
			CLASS_TYPE_LIGHT_WRAITH = 1685,
			CLASS_TYPE_LIGHT_SENTINEL = 1686,
			CLASS_TYPE_MEDIUM_ENGINEER = 1698,
			CLASS_TYPE_MEDIUM_RANGER = 1687,
			CLASS_TYPE_MEDIUM_SCRAMBLER = 1688,
			CLASS_TYPE_MEDIUM_SOLDIER = 1693,
			CLASS_TYPE_MEDIUM_RAIDER = 1699,
			CLASS_TYPE_MEDIUM_TECHNICIAN = 1694,
			CLASS_TYPE_MEDIUM_WARDER = 1700,
			CLASS_TYPE_HEAVY_BRUTE = 1689,
			CLASS_TYPE_HEAVY_ROOK = 1690,
			CLASS_TYPE_HEAVY_DOOMBRINGER = 1691,
			CLASS_TYPE_HEAVY_JUGGERNAUGHT = 1692,
			CLASS_TYPE_HEAVY_MARAUDER = 1695,
			CLASS_PURCHASE_LIGHT_INFILTRATOR = 7476,
			CLASS_PURCHASE_LIGHT_PATHFINDER = 7466,
			CLASS_PURCHASE_LIGHT_SENTINEL = 7478,
			CLASS_PURCHASE_MEDIUM_SOLDIER = 7470,
			CLASS_PURCHASE_MEDIUM_RAIDER = 7494,
			CLASS_PURCHASE_MEDIUM_TECHNICIAN = 7472,
			CLASS_PURCHASE_HEAVY_BRUTE = 7486,
			CLASS_PURCHASE_HEAVY_DOOMBRINGER = 7488,
			CLASS_PURCHASE_HEAVY_JUGGERNAUGHT = 7474,
			CLASS_INFO_BIT_NONE = 0x00000000,
			CLASS_INFO_BIT_INFILTRATOR = 0x00000001,
			CLASS_INFO_BIT_JUMPER = 0x00000002,
			CLASS_INFO_BIT_ARCHITECT = 0x00000004,
			CLASS_INFO_BIT_PATHFINDER = 0x00000008,
			CLASS_INFO_BIT_WRAITH = 0x00000010,
			CLASS_INFO_BIT_SENTINEL = 0x00000020,
			CLASS_INFO_BIT_ENGINEER = 0x00000040,
			CLASS_INFO_BIT_RANGER = 0x00000080,
			CLASS_INFO_BIT_SCRAMBLER = 0x00000100,
			CLASS_INFO_BIT_SOLDIER = 0x00000200,
			CLASS_INFO_BIT_RAIDER = 0x00000400,
			CLASS_INFO_BIT_TECHNICIAN = 0x00000800,
			CLASS_INFO_BIT_WARDER = 0x00001000,
			CLASS_INFO_BIT_BRUTE = 0x00002000,
			CLASS_INFO_BIT_ROOK = 0x00004000,
			CLASS_INFO_BIT_DOOMBRINGER = 0x00008000,
			CLASS_INFO_BIT_JUGGERNAUT = 0x00010000,
			CLASS_INFO_BIT_MARAUDER = 0x00020000,
			CLASS_INFO_BIT_NAKEDPATHFINDER = 0x00040000,
			WEAPON_ID_UNKNOWN = 102000,
			WEAPON_ID_AVMINE = 102003,
			WEAPON_ID_DUALRHINO = 102024,
			WEAPON_ID_LACERATOR = 102016,
			WEAPON_ID_ARX_BUSTER = 7384,
			WEAPON_ID_CHAINGUN = 7386,
			WEAPON_ID_DROPJAMMER = 7456,
			WEAPON_ID_FORCEFIELD = 7411,
			WEAPON_ID_FORCEFIELD_PERSONAL = 7460,
			WEAPON_ID_GRENADE = 7390,
			WEAPON_ID_GRENADE_AP = 7434,
			WEAPON_ID_GRENADE_AP_HEAVY = 7447,
			WEAPON_ID_GRENADE_EMP = 7444,
			WEAPON_ID_GRENADE_FLARE = 7389,
			WEAPON_ID_GRENADE_NITRON = 7387,
			WEAPON_ID_GRENADE_NITRON_HEAVY = 7450,
			WEAPON_ID_GRENADE_SPIKE = 7428,
			WEAPON_ID_GRENADE_ST = 7437,
			WEAPON_ID_GRENADE_STICKY = 7402,
			WEAPON_ID_GRENADE_STICKY_LIGHT = 7455,
			WEAPON_ID_GRENADE_WHITEOUT = 7432,
			WEAPON_ID_GRENADE_XL = 7430,
			WEAPON_ID_GUNNER_BEOWULF = 7405,
			WEAPON_ID_GUNNER_HERC = 7404,
			WEAPON_ID_LAUNCHER_BOLT = 7425,
			WEAPON_ID_LAUNCHER_BOLT_HEAVY = 7452,
			WEAPON_ID_LAUNCHER_GRENADE = 7416,
			WEAPON_ID_LAUNCHER_MIRV = 7457,
			WEAPON_ID_LAUNCHER_MORTAR = 7393,
			WEAPON_ID_LAUNCHER_SABER = 7398,
			WEAPON_ID_MELEE = 7391,
			WEAPON_ID_MINE = 7392,
			WEAPON_ID_MINE_CLAYMORE = 7421,
			WEAPON_ID_MINE_PRISM = 7440,
			WEAPON_ID_MOTIONALARM = 7426,
			WEAPON_ID_PILOT_BEOWULF = 7406,
			WEAPON_ID_PILOT_GRAVCYCLE = 7410,
			WEAPON_ID_PILOT_HAVOC = 7409,
			WEAPON_ID_PILOT_HERC = 7403,
			WEAPON_ID_PILOT_SHRIKE = 7407,
			WEAPON_ID_PISTOL_EAGLE = 7388,
			WEAPON_ID_PISTOL_EAGLE_CUSTOM = 7439,
			WEAPON_ID_PISTOL_NOVA_COLT = 7394,
			WEAPON_ID_PISTOL_NOVA_SLUG = 7431,
			WEAPON_ID_PISTOL_FALCON = 7419,
			WEAPON_ID_PISTOL_H1 = 7435,
			WEAPON_ID_PISTOL_SN7 = 7418,
			WEAPON_ID_PISTOL_SPARROW = 7433,
			WEAPON_ID_TURRET_EXR = 7417,
			WEAPON_ID_TURRET_BASE = 7412,
			WEAPON_ID_TURRET_LIGHT = 7413,
			WEAPON_ID_TURRET_WALL = 7445,
			WEAPON_ID_REPAIR_TOOL = 7396,
			WEAPON_ID_REPAIR_TOOL_SD = 7436,
			WEAPON_ID_RIFLE_ASSAULT = 7385,
			WEAPON_ID_RIFLE_ASSAULT_LIGHT = 7438,
			WEAPON_ID_RIFLE_ASSAULT_S22 = 7424,
			WEAPON_ID_RIFLE_ASSAULT_X1 = 7458,
			WEAPON_ID_RIFLE_PHASE = 7395,
			WEAPON_ID_RIFLE_SNIPER = 7400,
			WEAPON_ID_SMG_NJ4 = 7441,
			WEAPON_ID_SMG_RHINO = 7397,
			WEAPON_ID_SMG_TCN4 = 7443,
			WEAPON_ID_SHOTGUN = 7399,
			WEAPON_ID_SHOTGUN_ARX = 7454,
			WEAPON_ID_SHOTGUN_AUTO = 7449,
			WEAPON_ID_SHOTGUN_SAWED_OFF = 7427,
			WEAPON_ID_SPINFUSOR = 7401,
			WEAPON_ID_SPINFUSOR_D = 7446,
			WEAPON_ID_SPINFUSOR_HEAVY = 7448,
			WEAPON_ID_SPINFUSOR_LIGHT = 7422,
			WEAPON_ID_SPINFUSOR_TOSS = 7459,
			WEAPON_ID_CALLIN_TACTICALSTRIKE = 7609,
			WEAPON_ID_CALLIN_INVENTORYDROP = 7610,
			WEAPON_ID_CALLIN_ORBITALSTRIKE = 7611,
			WEAPON_ID_TCNG = 7736,
			WEAPON_ID_FALLING = 7815,
			WEAPON_ID_HITWALL = 7816,
			WEAPON_ID_RANOVER = 7817,
			WEAPON_ID_THUMPER = 7461,
			WEAPON_ID_THUMPER_D = 7462,
			WEAPON_ID_STEALTHLIGHTSPINFUSOR = 7902,
			WEAPON_ID_GRENADE_T5 = 7914,
			WEAPON_ID_PROXIMITY_GRENADE = 8222,
			WEAPON_ID_INFILTRATORBLANK = 8230,
			WEAPON_ID_ACCURIZEDSHOTGUN = 8239,
			WEAPON_ID_MINE_ARMOREDCLAYMORE = 8240,
			WEAPON_ID_BUCKLER = 8242,
			WEAPON_ID_IMPACTBOMBLETS = 8244,
			WEAPON_ID_LIGHTTWINFUSOR = 8245,
			WEAPON_ID_LR1MORTAR = 8246,
			WEAPON_ID_MIRV_GRENADE = 8247,
			WEAPON_ID_GRENADE_NINJASMOKE = 8248,
			WEAPON_ID_NJ5SMG = 8249,
			WEAPON_ID_PLASMA_CANNON = 8250,
			WEAPON_ID_PLASMA_GUN = 8251,
			WEAPON_ID_REMOTE_ARX_BUSTER = 8252,
			WEAPON_ID_ROCKETLAUNCHER = 8253,
			WEAPON_ID_SAP20 = 8254,
			WEAPON_ID_THROWINGKNIVES = 8256,
			WEAPON_ID_TWINFUSOR = 8257,
			WEAPON_ID_HEAVYTWINFUSOR = 8656,
			WEAPON_ID_SPIKELAUNCHER = 8357,
			WEAPON_ID_TARGETINGBEACON = 8358,
			ITEM_PACK_AMMO = 7821,
			ITEM_PACK_BLINK = 7822,
			ITEM_PACK_DAMAGE = 7823,
			ITEM_PACK_ENERGY_SOLDIER = 7824,
			ITEM_PACK_ENERGY_JUGGERNAUT = 7901,
			ITEM_PACK_ENERGY_BRUTE = 7830,
			ITEM_PACK_RECHARGE_PATHFINDER = 7825,
			ITEM_PACK_RECHARGE_SENTINEL = 7900,
			ITEM_PACK_HEAVYSHIELD = 7826,
			ITEM_PACK_JAMMER = 7827,
			ITEM_PACK_LIGHTREGEN = 7828,
			ITEM_PACK_POWERPOOL = 7829,
			ITEM_PACK_MINORENERGY = 7830,
			ITEM_PACK_REGEN = 7831,
			ITEM_PACK_SHIELD = 7832,
			ITEM_PACK_STEALTH = 7833,
			ITEM_PACK_UTILITY_SOLDIER = 8223,
			ITEM_PACK_HIGHSPEEDSTEALTH = 8243,
			ITEM_PACK_SURVIVAL = 8255,
			WEAPON_BASE_UNKNOWN = 0,
			WEAPON_BASE_SPINFUSOR = 1,
			WEAPON_BASE_PISTOL = 2,
			WEAPON_BASE_SNIPERRIFLE = 3,
			WEAPON_BASE_ASSAULTRIFLE = 4,
			WEAPON_BASE_GRENADE = 5,
			WEAPON_BASE_REPAIRTOOL = 6,
			WEAPON_BASE_CALLIN = 7,
			WEAPON_BASE_SMG = 8,
			WEAPON_BASE_SHOTGUN = 9,
			WEAPON_BASE_VEHICLE = 10,
			WEAPON_TYPE_UNKNOWN = 0,
			WEAPON_TYPE_PROJECTILE = 1,
			WEAPON_TYPE_INSTANTFIRE = 2,
			ITEM_PERK_BOUNTYHUNTER = 8153,
			ITEM_PERK_CLOSECOMBAT = 8156,
			ITEM_PERK_DETERMINATION = 8157,
			ITEM_PERK_EGOCENTRIC = 7917,
			ITEM_PERK_LOOTER = 8158,
			ITEM_PERK_MECHANIC = 8170,
			ITEM_PERK_PILOT = 8159,
			ITEM_PERK_POTENTIALENERGY = 8160,
			ITEM_PERK_QUICKDRAW = 8161,
			ITEM_PERK_REACH = 7916,
			ITEM_PERK_SAFEFALL = 8162,
			ITEM_PERK_SAFETYTHIRD = 8163,
			ITEM_PERK_STEALTHY = 8164,
			ITEM_PERK_SUPERCAPACITOR = 8165,
			ITEM_PERK_SUPERHEAVY = 8166,
			ITEM_PERK_SURVIVALIST = 8167,
			ITEM_PERK_ULTRACAPACITOR = 8168,
			ITEM_PERK_WHEELDEAL = 8169,
			ITEM_PERK_RAGE = 8232,
			ITEM_PERK_SONICPUNCH = 8231,
			ITEM_PERK_LIGHTWEIGHT = 8646,
			ITEM_SKILL_PATHFINDER_PRIMARY_AMMO_I = 7508,
			ITEM_SKILL_PATHFINDER_PRIMARY_AMMO_II = 7637,
			ITEM_SKILL_PATHFINDER_PRIMARY_ANTIARMOR = 7509,
			ITEM_SKILL_PATHFINDER_SECONDARY_AMMO_I = 7638,
			ITEM_SKILL_PATHFINDER_SECONDARY_AMMO_II = 7640,
			ITEM_SKILL_PATHFINDER_SECONDARY_CLIP = 7639,
			ITEM_SKILL_PATHFINDER_SECONDARY_FALLOFF = 7641,
			ITEM_SKILL_PATHFINDER_GRENADE_AMMO = 7504,
			ITEM_SKILL_PATHFINDER_GRENADE_RADIUS = 7505,
			ITEM_SKILL_PATHFINDER_HEALTH_POOL = 7636,
			ITEM_SKILL_PATHFINDER_HEALTH_REGEN_RATE = 7507,
			ITEM_SKILL_PATHFINDER_HEALTH_REGEN_DELAY = 7506,
			ITEM_SKILL_PATHFINDER_ENERGY_REGEN_I = 7501,
			ITEM_SKILL_PATHFINDER_ENERGY_REGEN_II = 7635,
			ITEM_SKILL_PATHFINDER_SPEED_I = 7502,
			ITEM_SKILL_PATHFINDER_SPEED_II = 7503,
			ITEM_SKILL_PATHFINDER_GROUND_SPEED = 7754,
			ITEM_SKILL_PATHFINDER_STOP_DISTANCE = 7755,
			ITEM_SKILL_JUMPER_PRIMARY_AMMO_I = 7564,
			ITEM_SKILL_JUMPER_PRIMARY_AMMO_II = 7646,
			ITEM_SKILL_JUMPER_PRIMARY_ANTIARMOR = 7645,
			ITEM_SKILL_JUMPER_SECONDARY_AMMO = 7647,
			ITEM_SKILL_JUMPER_SECONDARY_RELOAD = 7565,
			ITEM_SKILL_JUMPER_SECONDARY_FALLOFF = 7648,
			ITEM_SKILL_JUMPER_GRENADE_AMMO = 7563,
			ITEM_SKILL_JUMPER_PACK_COST_I = 7558,
			ITEM_SKILL_JUMPER_PACK_COST_II = 7643,
			ITEM_SKILL_JUMPER_PACK_POTENCY = 7560,
			ITEM_SKILL_JUMPER_HEALTH_POOL = 7562,
			ITEM_SKILL_JUMPER_HEALTH_REGEN_RATE = 7644,
			ITEM_SKILL_JUMPER_HEALTH_REGEN_DELAY = 7561,
			ITEM_SKILL_JUMPER_ENERGY_POOL = 7642,
			ITEM_SKILL_JUMPER_CONTROL = 7557,
			ITEM_SKILL_JUMPER_SPEED = 7559,
			ITEM_SKILL_JUMPER_GROUND_SPEED = 7756,
			ITEM_SKILL_JUMPER_STOP_DISTANCE = 7757,
			ITEM_SKILL_SOLDIER_PRIMARY_AMMO_I = 7551,
			ITEM_SKILL_SOLDIER_PRIMARY_AMMO_II = 7667,
			ITEM_SKILL_SOLDIER_PRIMARY_ANTIARMOR = 7552,
			ITEM_SKILL_SOLDIER_SECONDARY_AMMO = 7670,
			ITEM_SKILL_SOLDIER_SECONDARY_CLIP = 7671,
			ITEM_SKILL_SOLDIER_SECONDARY_RELOAD = 7556,
			ITEM_SKILL_SOLDIER_GRENADE_AMMO = 7540,
			ITEM_SKILL_SOLDIER_HEALTH_POOL_I = 7555,
			ITEM_SKILL_SOLDIER_HEALTH_POOL_II = 7668,
			ITEM_SKILL_SOLDIER_HEALTH_REGEN_RATE = 7669,
			ITEM_SKILL_SOLDIER_HEALTH_REGEN_DELAY = 7554,
			ITEM_SKILL_SOLDIER_ENERGY_POOL_I = 7541,
			ITEM_SKILL_SOLDIER_ENERGY_POOL_II = 7665,
			ITEM_SKILL_SOLDIER_CONTROL = 7664,
			ITEM_SKILL_SOLDIER_SPEED_I = 7548,
			ITEM_SKILL_SOLDIER_SPEED_II = 7666,
			ITEM_SKILL_SOLDIER_GROUND_SPEED = 7759,
			ITEM_SKILL_SOLDIER_STOP_DISTANCE = 7760,
			ITEM_SKILL_SOLDIER_WEAPON_SWITCH = 7761,
			ITEM_SKILL_JUGGERNAUGHT_PRIMARY_AMMO_I = 7568,
			ITEM_SKILL_JUGGERNAUGHT_PRIMARY_AMMO_II = 7658,
			ITEM_SKILL_JUGGERNAUGHT_PRIMARY_ANTIARMOR = 7569,
			ITEM_SKILL_JUGGERNAUGHT_SECONDARY_AMMO_I = 7573,
			ITEM_SKILL_JUGGERNAUGHT_SECONDARY_AMMO_II = 7660,
			ITEM_SKILL_JUGGERNAUGHT_SECONDARY_ANTIARMOR = 7574,
			ITEM_SKILL_JUGGERNAUGHT_GRENADE_AMMO_I = 7566,
			ITEM_SKILL_JUGGERNAUGHT_GRENADE_AMMO_II = 7663,
			ITEM_SKILL_JUGGERNAUGHT_GRENADE_RADIUS = 7662,
			ITEM_SKILL_JUGGERNAUGHT_HEALTH_POOL_I = 7576,
			ITEM_SKILL_JUGGERNAUGHT_HEALTH_POOL_II = 7661,
			ITEM_SKILL_JUGGERNAUGHT_ENERGY_POOL_I = 7572,
			ITEM_SKILL_JUGGERNAUGHT_ENERGY_POOL_II = 7659,
			ITEM_SKILL_JUGGERNAUGHT_HEALTH_REGEN_DELAY = 7575,
			ITEM_SKILL_JUGGERNAUGHT_CONTROL = 7657,
			ITEM_SKILL_JUGGERNAUGHT_SPEED = 7570,
			ITEM_SKILL_JUGGERNAUGHT_GROUND_SPEED = 7770,
			ITEM_SKILL_JUGGERNAUGHT_WEAPON_SWITCH = 7771,
			ITEM_SKILL_TECHNICIAN_PRIMARY_AMMO = 7685,
			ITEM_SKILL_TECHNICIAN_PRIMARY_RELOAD = 7686,
			ITEM_SKILL_TECHNICIAN_REPAIR_RATE_I = 7519,
			ITEM_SKILL_TECHNICIAN_REPAIR_RATE_II = 7681,
			ITEM_SKILL_TECHNICIAN_GRENADE_AMMO_I = 7518,
			ITEM_SKILL_TECHNICIAN_GRENADE_AMMO_II = 7687,
			ITEM_SKILL_TECHNICIAN_DEPLOY_ACQUIRE = 7512,
			ITEM_SKILL_TECHNICIAN_DEPLOY_LIMIT = 7513,
			ITEM_SKILL_TECHNICIAN_DEPLOY_ANTIARMOR = 7514,
			ITEM_SKILL_TECHNICIAN_HEALTH_POOL_I = 7520,
			ITEM_SKILL_TECHNICIAN_HEALTH_POOL_II = 7684,
			ITEM_SKILL_TECHNICIAN_HEALTH_REGEN_DELAY = 7516,
			ITEM_SKILL_TECHNICIAN_ENERGY_POOL = 7515,
			ITEM_SKILL_TECHNICIAN_CONTROL = 7517,
			ITEM_SKILL_TECHNICIAN_SPEED_I = 7682,
			ITEM_SKILL_TECHNICIAN_SPEED_II = 7683,
			ITEM_SKILL_TECHNICIAN_GROUND_SPEED = 7765,
			ITEM_SKILL_TECHNICIAN_STOP_DISTANCE = 7766,
			ITEM_SKILL_TECHNICIAN_WEAPON_SWITCH = 7767,
			ITEM_SKILL_SENTINEL_PRIMARY_AMMO_I = 7528,
			ITEM_SKILL_SENTINEL_PRIMARY_AMMO_II = 7655,
			ITEM_SKILL_SENTINEL_PRIMARY_CLIP = 7654,
			ITEM_SKILL_SENTINEL_PRIMARY_FALLOFF = 7529,
			ITEM_SKILL_SENTINEL_SECONDARY_AMMO = 7651,
			ITEM_SKILL_SENTINEL_SECONDARY_CLIP = 7652,
			ITEM_SKILL_SENTINEL_GRENADE_AMMO = 7527,
			ITEM_SKILL_SENTINEL_GRENADE_RADIUS = 7656,
			ITEM_SKILL_SENTINEL_DEPLOY_HEALTH = 7649,
			ITEM_SKILL_SENTINEL_DEPLOY_RADIUS_I = 7521,
			ITEM_SKILL_SENTINEL_DEPLOY_RADIUS_II = 7650,
			ITEM_SKILL_SENTINEL_HEALTH_REGEN_RATE = 7526,
			ITEM_SKILL_SENTINEL_HEALTH_REGEN_DELAY = 7525,
			ITEM_SKILL_SENTINEL_ENERGY_POOL_I = 7523,
			ITEM_SKILL_SENTINEL_ENERGY_POOL_II = 7653,
			ITEM_SKILL_SENTINEL_SPEED = 7524,
			ITEM_SKILL_SENTINEL_WEAPON_SWITCH = 7758,
			ITEM_SKILL_RANGER_PRIMARY_AMMO = 7679,
			ITEM_SKILL_RANGER_PRIMARY_CLIP = 7680,
			ITEM_SKILL_RANGER_PRIMARY_RELOAD = 7582,
			ITEM_SKILL_RANGER_SECONDARY_AMMO_I = 7581,
			ITEM_SKILL_RANGER_SECONDARY_AMMO_II = 7675,
			ITEM_SKILL_RANGER_SECONDARY_ANTIARMOR = 7674,
			ITEM_SKILL_RANGER_GRENADE_AMMO_I = 7580,
			ITEM_SKILL_RANGER_GRENADE_AMMO_II = 7677,
			ITEM_SKILL_RANGER_PACK_COST = 7583,
			ITEM_SKILL_RANGER_HEALTH_POOL_I = 7585,
			ITEM_SKILL_RANGER_HEALTH_POOL_II = 7676,
			ITEM_SKILL_RANGER_HEALTH_REGEN_DELAY = 7584,
			ITEM_SKILL_RANGER_ENERGY_POOL_I = 7577,
			ITEM_SKILL_RANGER_ENERGY_POOL_II = 7678,
			ITEM_SKILL_RANGER_CONTROL = 7672,
			ITEM_SKILL_RANGER_SPEED_I = 7578,
			ITEM_SKILL_RANGER_SPEED_II = 7673,
			ITEM_SKILL_RANGER_GROUND_SPEED = 7762,
			ITEM_SKILL_RANGER_STOP_DISTANCE = 7763,
			ITEM_SKILL_RANGER_WEAPON_SWITCH = 7764,
			ITEM_SKILL_DOOMBRINGER_PRIMARY_AMMO_I = 7598,
			ITEM_SKILL_DOOMBRINGER_PRIMARY_AMMO_II = 7632,
			ITEM_SKILL_DOOMBRINGER_PRIMARY_SPINUP = 7597,
			ITEM_SKILL_DOOMBRINGER_GRENADE_AMMO_I = 7590,
			ITEM_SKILL_DOOMBRINGER_GRENADE_AMMO_II = 7634,
			ITEM_SKILL_DOOMBRINGER_DEPLOY_AMMO = 7591,
			ITEM_SKILL_DOOMBRINGER_GRENADE_ANTIARMOR = 7633,
			ITEM_SKILL_DOOMBRINGER_DEPLOY_HEALTH_I = 7592,
			ITEM_SKILL_DOOMBRINGER_DEPLOY_HEALTH_II = 7629,
			ITEM_SKILL_DOOMBRINGER_HEALTH_POOL_I = 7596,
			ITEM_SKILL_DOOMBRINGER_HEALTH_POOL_II = 7631,
			ITEM_SKILL_DOOMBRINGER_HEALTH_REGEN_DELAY = 7595,
			ITEM_SKILL_DOOMBRINGER_ENERGY_POOL = 7628,
			ITEM_SKILL_DOOMBRINGER_CONTROL = 7594,
			ITEM_SKILL_DOOMBRINGER_SPEED_I = 7593,
			ITEM_SKILL_DOOMBRINGER_SPEED_II = 7630,
			ITEM_SKILL_DOOMBRINGER_GROUND_SPEED = 7772,
			ITEM_SKILL_DOOMBRINGER_STOP_DISTANCE = 7773,
			ITEM_SKILL_DOOMBRINGER_WEAPON_SWITCH = 7774,
			ITEM_SKILL_INFILTRATOR_PRIMARY_AMMO_I = 7612,
			ITEM_SKILL_INFILTRATOR_PRIMARY_AMMO_II = 7818,
			ITEM_SKILL_INFILTRATOR_PRIMARY_RELOAD = 7614,
			ITEM_SKILL_INFILTRATOR_PRIMARY_FALLOFF = 7613,
			ITEM_SKILL_INFILTRATOR_SECONDARY_AMMO = 7623,
			ITEM_SKILL_INFILTRATOR_SECONDARY_CLIP = 7625,
			ITEM_SKILL_INFILTRATOR_SECONDARY_RELOAD = 7624,
			ITEM_SKILL_INFILTRATOR_GRENADE_AMMO_I = 7615,
			ITEM_SKILL_INFILTRATOR_GRENADE_AMMO_II = 7618,
			ITEM_SKILL_INFILTRATOR_GRENADE_RADIUS = 7617,
			ITEM_SKILL_INFILTRATOR_GRENADE_ANTIARMOR = 7616,
			ITEM_SKILL_INFILTRATOR_PACK_COST_I = 7620,
			ITEM_SKILL_INFILTRATOR_PACK_COST_II = 7622,
			ITEM_SKILL_INFILTRATOR_PACK_POTENCY = 7621,
			ITEM_SKILL_INFILTRATOR_HEALTH_REGEN_RATE = 7627,
			ITEM_SKILL_INFILTRATOR_HEALTH_REGEN_DELAY = 7626,
			ITEM_SKILL_INFILTRATOR_ENERGY_POOL = 7619,
			ITEM_SKILL_RAIDER_PRIMARY_AMMO = 7688,
			ITEM_SKILL_RAIDER_PRIMARY_RELOAD = 7690,
			ITEM_SKILL_RAIDER_PRIMARY_FALLOFF = 7689,
			ITEM_SKILL_RAIDER_SECONDARY_AMMO = 7691,
			ITEM_SKILL_RAIDER_SECONDARY_CLIP = 7693,
			ITEM_SKILL_RAIDER_SECONDARY_ANTIARMOR = 7692,
			ITEM_SKILL_RAIDER_GRENADE_AMMO = 7694,
			ITEM_SKILL_RAIDER_GRENADE_EFFECT = 7695,
			ITEM_SKILL_RAIDER_GRENADE_RADIUS = 7696,
			ITEM_SKILL_RAIDER_PACK_COST_I = 7700,
			ITEM_SKILL_RAIDER_PACK_COST_II = 7703,
			ITEM_SKILL_RAIDER_PACK_POTENCY = 7701,
			ITEM_SKILL_RAIDER_HEALTH_POOL_I = 7698,
			ITEM_SKILL_RAIDER_HEALTH_POOL_II = 7699,
			ITEM_SKILL_RAIDER_HEALTH_REGEN_DELAY = 7697,
			ITEM_SKILL_RAIDER_ENERGY_POOL = 7702,
			ITEM_SKILL_BRUTE_ENERGY_POOL = 7723,
			ITEM_SKILL_BRUTE_GRENADE_AMMO = 7720,
			ITEM_SKILL_BRUTE_GRENADE_DURATION = 7721,
			ITEM_SKILL_BRUTE_GRENADE_RADIUS = 7722,
			ITEM_SKILL_BRUTE_HEALTH_POOL_I = 7729,
			ITEM_SKILL_BRUTE_HEALTH_POOL_II = 7732,
			ITEM_SKILL_BRUTE_HEALTH_REGEN_DELAY = 7730,
			ITEM_SKILL_BRUTE_HEALTH_REGEN_RATE = 7731,
			ITEM_SKILL_BRUTE_PRIMARY_AMMO_I = 7726,
			ITEM_SKILL_BRUTE_PRIMARY_AMMO_II = 7728,
			ITEM_SKILL_BRUTE_PRIMARY_ANTIARMOR = 7727,
			ITEM_SKILL_BRUTE_SECONARY_AMMO = 7733,
			ITEM_SKILL_BRUTE_SECONDARY_CLIP = 7735,
			ITEM_SKILL_BRUTE_SECONDARY_RELOAD = 7734,
			ITEM_SKILL_BRUTE_CONTROL = 7725,
			ITEM_SKILL_BRUTE_SPEED = 7724,
			ITEM_SKILL_BRUTE_GROUND_SPEED = 7775,
			ITEM_SKILL_BRUTE_WEAPON_SWITCH = 7776,
			ITEM_SKILL_SCRAMBLER_ENERGY_POOL = 7707,
			ITEM_SKILL_SCRAMBLER_GRENADE_AMMO = 7704,
			ITEM_SKILL_SCRAMBLER_GRENADE_DURATION = 7706,
			ITEM_SKILL_SCRAMBLER_GRENADE_RADIUS = 7705,
			ITEM_SKILL_SCRAMBLER_HEALTH_POOL_I = 7714,
			ITEM_SKILL_SCRAMBLER_HEALTH_POOL_II = 7715,
			ITEM_SKILL_SCRAMBLER_HEALTH_REGEN_DELAY = 7713,
			ITEM_SKILL_SCRAMBLER_PACK_COST_I = 7716,
			ITEM_SKILL_SCRAMBLER_PACK_COST_II = 7718,
			ITEM_SKILL_SCRAMBLER_PACK_EFFECTIVENESS_I = 7717,
			ITEM_SKILL_SCRAMBLER_PACK_EFFECTIVENESS_II = 7719,
			ITEM_SKILL_SCRAMBLER_PRIMARY_AMMO_I = 7710,
			ITEM_SKILL_SCRAMBLER_PRIMARY_AMMO_II = 7712,
			ITEM_SKILL_SCRAMBLER_PRIMARY_ANTIARMOR = 7711,
			ITEM_SKILL_SCRAMBLER_CONTROL = 7709,
			ITEM_SKILL_SCRAMBLER_SPEED = 7708,
			ITEM_SKILL_SCRAMBLER_GROUND_SPEED = 7768,
			ITEM_SKILL_SCRAMBLER_WEAPON_SWITCH = 7769,
			ITEM_SKILL_WRAITH_ENERGY_POOL = 7790,
			ITEM_SKILL_WRAITH_ENERGY_REGEN_I = 7781,
			ITEM_SKILL_WRAITH_ENERGY_REGEN_II = 7783,
			ITEM_SKILL_WRAITH_GRENADE_AMMO = 7788,
			ITEM_SKILL_WRAITH_GRENADE_RADIUS = 7789,
			ITEM_SKILL_WRAITH_GROUND_SPEED = 7782,
			ITEM_SKILL_WRAITH_HEALTH_REGEN_DELAY = 7791,
			ITEM_SKILL_WRAITH_HEALTH_REGEN_RATE = 7792,
			ITEM_SKILL_WRAITH_PRIMARY_AMMO_I = 7793,
			ITEM_SKILL_WRAITH_PRIMARY_AMMO_II = 7796,
			ITEM_SKILL_WRAITH_PRIMARY_CLIP = 7795,
			ITEM_SKILL_WRAITH_PRIMARY_ENERGY_COST = 7794,
			ITEM_SKILL_WRAITH_SECONDARY_AMMO = 7784,
			ITEM_SKILL_WRAITH_SECONDARY_CLIP_I = 7785,
			ITEM_SKILL_WRAITH_SECONDARY_CLIP_II = 7786,
			ITEM_SKILL_WRAITH_WEAPON_SWITCH = 7787,
			TR_MAX_CALLINS = 3,
			PROPERTY_CALLIN_ORBITALSTRIKE = 10241,
			PROPERTY_CALLIN_TACTICALSTRIKE = 10201,
			PROPERTY_CALLIN_SUPPORTINVENTORY = 10234,
			ITEM_SKIN_PATHFINDER = 7834,
			ITEM_SKIN_PATHFINDER_MERC = 8326,
			ITEM_SKIN_INFILTRATOR = 7835,
			ITEM_SKIN_INFILTRATOR_ASSASSIN = 8337,
			ITEM_SKIN_INFILTRATOR_MERC = 8336,
			ITEM_SKIN_SENTINEL = 8327,
			ITEM_SKIN_SENTINEL_MERC = 8665,
			ITEM_SKIN_SOLDIER = 8328,
			ITEM_SKIN_TECHNICIAN = 8329,
			ITEM_SKIN_TECHNICIAN_MERC = 8731,
			ITEM_SKIN_RAIDER = 8330,
			ITEM_SKIN_RAIDER_GRIEVER = 8351,
			ITEM_SKIN_RAIDER_MERC = 8352,
			ITEM_SKIN_JUGGERNAUT = 8331,
			ITEM_SKIN_DOOMBRINGER = 8332,
			ITEM_SKIN_BRUTE = 8333,
			ITEM_SKIN_BRUTE_MERC = 8663,
			ITEM_VOICE_LIGHT_STANDARD = 7903,
			ITEM_VOICE_MEDIUM_STANDARD = 7904,
			ITEM_VOICE_HEAVY_STANDARD = 7905,
			ITEM_ARMOR_MOD_PATHFINDER_1 = 7836,
			ITEM_ARMOR_MOD_SENTINEL_1 = 7837,
			ITEM_ARMOR_MOD_INFILTRATOR_1 = 7838,
			ITEM_ARMOR_MOD_SOLDIER_1 = 7839,
			ITEM_ARMOR_MOD_TECHNICIAN_1 = 7840,
			ITEM_ARMOR_MOD_RAIDER_1 = 7841,
			ITEM_ARMOR_MOD_JUGGERNAUT_1 = 7842,
			ITEM_ARMOR_MOD_DOOMBRINGER_1 = 7843,
			ITEM_ARMOR_MOD_BRUTE_1 = 7844,
			WEAPON_ID_ARX_BUSTER_MKD = 8391,
			WEAPON_ID_CHAINGUN_MKD = 8392,
			WEAPON_ID_GRENADE_MKD = 8393,
			WEAPON_ID_GRENADE_AP_HEAVY_MKD = 8394,
			WEAPON_ID_GRENADE_EMP_MKD = 8395,
			WEAPON_ID_GRENADE_NITRON_MKD = 8396,
			WEAPON_ID_GRENADE_SPIKE_MKD = 8397,
			WEAPON_ID_GRENADE_STICKY_MKD = 8398,
			WEAPON_ID_GRENADE_XL_MKD = 8399,
			WEAPON_ID_LAUNCHER_MORTAR_MKD = 8400,
			WEAPON_ID_LAUNCHER_SABER_MKD = 8401,
			WEAPON_ID_MINE_CLAYMORE_MKD = 8402,
			WEAPON_ID_PISTOL_NOVA_COLT_MKD = 8403,
			WEAPON_ID_PISTOL_SN7_MKD = 8404,
			WEAPON_ID_REPAIR_TOOL_SD_MKD = 8405,
			WEAPON_ID_RIFLE_ASSAULT_MKD = 8406,
			WEAPON_ID_RIFLE_SNIPER_MKD = 8407,
			WEAPON_ID_SMG_NJ4_MKD = 8408,
			WEAPON_ID_SMG_RHINO_MKD = 8409,
			WEAPON_ID_SMG_TCN4_MKD = 8410,
			WEAPON_ID_SHOTGUN_MKD = 8411,
			WEAPON_ID_SHOTGUN_AUTO_MKD = 8412,
			WEAPON_ID_SPINFUSOR_D_MKD = 8413,
			WEAPON_ID_SPINFUSOR_HEAVY_MKD = 8414,
			WEAPON_ID_SPINFUSOR_LIGHT_MKD = 8415,
			WEAPON_ID_TCNG_MKD = 8416,
			WEAPON_ID_THUMPERD_MKD = 8417,
			WEAPON_ID_REPAIR_DEPLOYABLE = 8698,
			WEAPON_ID_SPINFUSOR_LIGHT_100X = 8696,
			WEAPON_ID_SPINFUSOR_100X = 8697,
			WEAPON_ID_TC24 = 8699,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_1 = 8700,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_2 = 8701,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_100X_3 = 8702,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_1 = 8703,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_2 = 8704,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_100X_3 = 8705,
			ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_1 = 8706,
			ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_2 = 8707,
			ITEM_UPGRADE_TECHNICIAN_REPAIR_DEPLOYABLE_3 = 8708,
			ITEM_UPGRADE_TECHNICIAN_TC24_1 = 8709,
			ITEM_UPGRADE_TECHNICIAN_TC24_2 = 8710,
			ITEM_UPGRADE_TECHNICIAN_TC24_3 = 8711,
			ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR_100X = 265,
			ACTIVITY_TECHNICIAN_BELT_REPAIR_DEPLOYABLE = 266,
			ACTIVITY_SOLDIER_PRIMARY_SPINFUSOR_100X = 264,
			ACTIVITY_TECHNICIAN_PRIMARY_TC24 = 267,
			ACTIVITY_SENTINEL_PRIMARY_SAP20 = 268,
			ACTIVITY_SENTINEL_SECONDARY_ACCURIZEDSHOTGUN = 269,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_1 = 8418,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_2 = 8419,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_MKD_3 = 8420,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_1 = 8421,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_2 = 8422,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_3 = 8423,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_MKD_4 = 8424,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_1 = 8425,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_2 = 8426,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_3 = 8427,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_MKD_4 = 8428,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_1 = 8429,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_2 = 8430,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_3 = 8431,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_MKD_4 = 8432,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_1 = 8433,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_2 = 8434,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_3 = 8435,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_MKD_4 = 8436,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_1 = 8437,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_2 = 8438,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_MKD_3 = 8439,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_1 = 8440,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_2 = 8441,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_MKD_3 = 8442,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_1 = 8443,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_2 = 8444,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_3 = 8445,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_MKD_4 = 8446,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_1 = 8447,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_2 = 8448,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_MKD_3 = 8449,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_1 = 8657,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_2 = 8658,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYTWINFUSOR_3 = 8659,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_1 = 8450,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_2 = 8451,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_MKD_3 = 8452,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_1 = 8453,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_2 = 8454,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_MKD_3 = 8455,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_1 = 8456,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_2 = 8457,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_MKD_3 = 8458,
			ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_1 = 8459,
			ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_2 = 8460,
			ITEM_UPGRADE_SOLDIER_THUMPERD_MKD_3 = 8461,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_1 = 8462,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_2 = 8463,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_MKD_3 = 8464,
			ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_1 = 8465,
			ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_2 = 8466,
			ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_3 = 8467,
			ITEM_UPGRADE_RAIDER_NJ4SMG_MKD_4 = 8468,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_1 = 8469,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_2 = 8470,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_MKD_3 = 8471,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_1 = 8472,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_2 = 8473,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_MKD_3 = 8474,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_1 = 8475,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_2 = 8476,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_3 = 8477,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_MKD_4 = 8478,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_1 = 8479,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_2 = 8480,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_MKD_3 = 8481,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_1 = 8482,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_2 = 8483,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_MKD_3 = 8484,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_1 = 8486,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_2 = 8487,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_3 = 8488,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_MKD_4 = 8489,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_1 = 8490,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_2 = 8491,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_MKD_3 = 8492,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_1 = 8493,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_2 = 8494,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_MKD_3 = 8495,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_1 = 8496,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_2 = 8497,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_MKD_3 = 8498,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_1 = 8499,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_2 = 8500,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_MKD_3 = 8501,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_1 = 8502,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_2 = 8503,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_MKD_3 = 8504,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_1 = 8505,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_2 = 8506,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_MKD_3 = 8507,
			ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_1 = 7850,
			ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_2 = 7851,
			ITEM_UPGRADE_PATHFINDER_BOLTLAUNCHER_3 = 7852,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_1 = 7855,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_2 = 7860,
			ITEM_UPGRADE_PATHFINDER_LIGHTSPINFUSOR_3 = 7857,
			ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_1 = 8277,
			ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_2 = 8278,
			ITEM_UPGRADE_PATHFINDER_LIGHTTWINFUSOR_3 = 8279,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_1 = 7927,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_2 = 7929,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_3 = 7930,
			ITEM_UPGRADE_SENTINEL_BXT1SNIPERRIFLE_4 = 7931,
			ITEM_UPGRADE_SENTINEL_PHASERIFLE_1 = 7932,
			ITEM_UPGRADE_SENTINEL_PHASERIFLE_2 = 7933,
			ITEM_UPGRADE_SENTINEL_PHASERIFLE_3 = 7934,
			ITEM_UPGRADE_SENTINEL_PHASERIFLE_4 = 7935,
			ITEM_UPGRADE_SENTINEL_SAP20_1 = 8305,
			ITEM_UPGRADE_SENTINEL_SAP20_2 = 8306,
			ITEM_UPGRADE_SENTINEL_SAP20_3 = 8307,
			ITEM_UPGRADE_SENTINEL_SAP20_4 = 8308,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_1 = 7960,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_2 = 7961,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_3 = 7962,
			ITEM_UPGRADE_INFILTRATOR_RHINOSMG_4 = 7963,
			ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_1 = 7964,
			ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_2 = 7965,
			ITEM_UPGRADE_INFILTRATOR_STEALTHLIGHTSPINFUSOR_3 = 7966,
			ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_1 = 8298,
			ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_2 = 8299,
			ITEM_UPGRADE_INFILTRATOR_REMOTEARXBUSTER_3 = 8300,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_1 = 7985,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_2 = 7986,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_3 = 7987,
			ITEM_UPGRADE_SOLDIER_ASSAULTRIFLE_4 = 7988,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_1 = 7992,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_2 = 7993,
			ITEM_UPGRADE_SOLDIER_SPINFUSOR_3 = 7994,
			ITEM_UPGRADE_SOLDIER_TWINFUSOR_1 = 8316,
			ITEM_UPGRADE_SOLDIER_TWINFUSOR_2 = 8317,
			ITEM_UPGRADE_SOLDIER_TWINFUSOR_3 = 8318,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_1 = 8012,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_2 = 8013,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_3 = 8014,
			ITEM_UPGRADE_TECHNICIAN_TCN4SMG_4 = 8015,
			ITEM_UPGRADE_TECHNICIAN_THUMPER_1 = 8016,
			ITEM_UPGRADE_TECHNICIAN_THUMPER_2 = 8017,
			ITEM_UPGRADE_TECHNICIAN_THUMPER_3 = 8018,
			ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_1 = 8045,
			ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_2 = 8046,
			ITEM_UPGRADE_RAIDER_GRENADELAUNCHER_3 = 8047,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_1 = 8042,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_2 = 8043,
			ITEM_UPGRADE_RAIDER_ARXBUSTER_3 = 8044,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_1 = 8070,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_2 = 8071,
			ITEM_UPGRADE_JUGGERNAUT_FUSIONMORTAR_3 = 8072,
			ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_1 = 8073,
			ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_2 = 8074,
			ITEM_UPGRADE_JUGGERNAUT_MIRVLAUNCHER_3 = 8075,
			ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_1 = 8280,
			ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_2 = 8281,
			ITEM_UPGRADE_JUGGERNAUT_LR1MORTAR_3 = 8282,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_1 = 8100,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_2 = 8101,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_3 = 8102,
			ITEM_UPGRADE_DOOMBRINGER_CHAINGUN_4 = 8103,
			ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_1 = 8104,
			ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_2 = 8105,
			ITEM_UPGRADE_DOOMBRINGER_HEAVYBOLTLAUNCHER_3 = 8106,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_1 = 8124,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_2 = 8125,
			ITEM_UPGRADE_BRUTE_HEAVYSPINFUSOR_3 = 8126,
			ITEM_UPGRADE_BRUTE_PLASMACANNON_1 = 8292,
			ITEM_UPGRADE_BRUTE_PLASMACANNON_2 = 8293,
			ITEM_UPGRADE_BRUTE_PLASMACANNON_3 = 8294,
			ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_1 = 8386,
			ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_2 = 8387,
			ITEM_UPGRADE_BRUTE_SPIKELAUNCHER_3 = 8388,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_1 = 7861,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_2 = 7862,
			ITEM_UPGRADE_PATHFINDER_SHOTGUN_3 = 7863,
			ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_1 = 7866,
			ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_2 = 7867,
			ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_3 = 7868,
			ITEM_UPGRADE_PATHFINDER_LIGHTASSAULTRIFLE_4 = 7869,
			ITEM_UPGRADE_PATHFINDER_BUCKLER_1 = 8265,
			ITEM_UPGRADE_PATHFINDER_BUCKLER_2 = 8266,
			ITEM_UPGRADE_PATHFINDER_BUCKLER_3 = 8267,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_1 = 7936,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_2 = 7937,
			ITEM_UPGRADE_SENTINEL_NOVABLASTER_3 = 7938,
			ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_1 = 7939,
			ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_2 = 7940,
			ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_3 = 7941,
			ITEM_UPGRADE_SENTINEL_FALCONAUTOPISTOL_4 = 7942,
			ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_1 = 8258,
			ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_2 = 8259,
			ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_3 = 8260,
			ITEM_UPGRADE_SENTINEL_ACCURIZEDSHOTGUN_4 = 8261,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_1 = 7967,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_2 = 7968,
			ITEM_UPGRADE_INFILTRATOR_SN7PISTOL_3 = 7969,
			ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_1 = 8312,
			ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_2 = 8313,
			ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_3 = 8314,
			ITEM_UPGRADE_INFILTRATOR_THROWINGKNIVES_4 = 8315,
			ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_1 = 7995,
			ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_2 = 7996,
			ITEM_UPGRADE_SOLDIER_EAGLEPISTOL_3 = 7997,
			ITEM_UPGRADE_SOLDIER_THUMPERD_1 = 7989,
			ITEM_UPGRADE_SOLDIER_THUMPERD_2 = 7990,
			ITEM_UPGRADE_SOLDIER_THUMPERD_3 = 7991,
			ITEM_UPGRADE_SOLDIER_PLASMAGUN_1 = 8295,
			ITEM_UPGRADE_SOLDIER_PLASMAGUN_2 = 8296,
			ITEM_UPGRADE_SOLDIER_PLASMAGUN_3 = 8297,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_1 = 8019,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_2 = 8020,
			ITEM_UPGRADE_TECHNICIAN_REPAIRTOOLSD_3 = 8021,
			ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_1 = 8022,
			ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_2 = 8023,
			ITEM_UPGRADE_TECHNICIAN_SAWEDOFFSHOTGUN_3 = 8024,
			ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_1 = 8025,
			ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_2 = 8026,
			ITEM_UPGRADE_TECHNICIAN_SPARROWPISTOL_3 = 8027,
			ITEM_UPGRADE_RAIDER_NJ4SMG_1 = 8048,
			ITEM_UPGRADE_RAIDER_NJ4SMG_2 = 8049,
			ITEM_UPGRADE_RAIDER_NJ4SMG_3 = 8050,
			ITEM_UPGRADE_RAIDER_NJ4SMG_4 = 8051,
			ITEM_UPGRADE_RAIDER_NJ5SMG_1 = 8289,
			ITEM_UPGRADE_RAIDER_NJ5SMG_2 = 8290,
			ITEM_UPGRADE_RAIDER_NJ5SMG_3 = 8291,
			ITEM_UPGRADE_RAIDER_NJ5SMG_4 = 8304,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_1 = 8076,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_2 = 8077,
			ITEM_UPGRADE_JUGGERNAUT_SPINFUSORD_3 = 8078,
			ITEM_UPGRADE_JUGGERNAUT_LMG_1 = 8079,
			ITEM_UPGRADE_JUGGERNAUT_LMG_2 = 8080,
			ITEM_UPGRADE_JUGGERNAUT_LMG_3 = 8081,
			ITEM_UPGRADE_JUGGERNAUT_LMG_4 = 8082,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_1 = 8107,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_2 = 8108,
			ITEM_UPGRADE_DOOMBRINGER_SABERLAUNCHER_3 = 8109,
			ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_1 = 8301,
			ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_2 = 8302,
			ITEM_UPGRADE_DOOMBRINGER_ROCKETLAUNCHER_3 = 8303,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_1 = 8127,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_2 = 8128,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_3 = 8129,
			ITEM_UPGRADE_BRUTE_AUTOSHOTGUN_4 = 8130,
			ITEM_UPGRADE_BRUTE_NOVACOLT_1 = 8131,
			ITEM_UPGRADE_BRUTE_NOVACOLT_2 = 8132,
			ITEM_UPGRADE_BRUTE_NOVACOLT_3 = 8133,
			ITEM_UPGRADE_BRUTE_NOVACOLT_4 = 8134,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_1 = 7881,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_2 = 7882,
			ITEM_UPGRADE_PATHFINDER_IMPACTNITRON_3 = 7883,
			ITEM_UPGRADE_PATHFINDER_GRENADE_ST_1 = 7888,
			ITEM_UPGRADE_PATHFINDER_GRENADE_ST_2 = 7889,
			ITEM_UPGRADE_PATHFINDER_GRENADE_ST_3 = 7890,
			ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_1 = 8274,
			ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_2 = 8275,
			ITEM_UPGRADE_PATHFINDER_IMPACTBOMBLETS_3 = 8276,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_1 = 7943,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_2 = 7944,
			ITEM_UPGRADE_SENTINEL_CLAYMORE_3 = 7945,
			ITEM_UPGRADE_SENTINEL_GRENADEXL_1 = 7946,
			ITEM_UPGRADE_SENTINEL_GRENADEXL_2 = 7947,
			ITEM_UPGRADE_SENTINEL_GRENADEXL_3 = 7948,
			ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_1 = 8262,
			ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_2 = 8263,
			ITEM_UPGRADE_SENTINEL_ARMOREDCLAYMORE_3 = 8264,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_1 = 7970,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_2 = 7971,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_3 = 7972,
			ITEM_UPGRADE_INFILTRATOR_STICKYGRENADE_4 = 7973,
			ITEM_UPGRADE_INFILTRATOR_PRISMMINES_1 = 7974,
			ITEM_UPGRADE_INFILTRATOR_PRISMMINES_2 = 7975,
			ITEM_UPGRADE_INFILTRATOR_PRISMMINES_3 = 7976,
			ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_1 = 8286,
			ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_2 = 8287,
			ITEM_UPGRADE_INFILTRATOR_NINJASMOKE_3 = 8288,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_1 = 7998,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_2 = 7999,
			ITEM_UPGRADE_SOLDIER_FRAGGRENADEXL_3 = 8000,
			ITEM_UPGRADE_SOLDIER_APGRENADE_1 = 8001,
			ITEM_UPGRADE_SOLDIER_APGRENADE_2 = 8002,
			ITEM_UPGRADE_SOLDIER_APGRENADE_3 = 8003,
			ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_1 = 8227,
			ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_2 = 8228,
			ITEM_UPGRADE_SOLDIER_PROXIMITYGRENADE_3 = 8229,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_1 = 8028,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_2 = 8029,
			ITEM_UPGRADE_TECHNICIAN_TCNGGRENADE_3 = 8030,
			ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_1 = 8031,
			ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_2 = 8032,
			ITEM_UPGRADE_TECHNICIAN_MOTIONALARM_3 = 8033,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_1 = 8052,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_2 = 8053,
			ITEM_UPGRADE_RAIDER_EMPGRENADE_3 = 8054,
			ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_1 = 8055,
			ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_2 = 8056,
			ITEM_UPGRADE_RAIDER_WHITEOUTGRENADE_3 = 8057,
			ITEM_UPGRADE_RAIDER_MIRVGRENADE_1 = 8283,
			ITEM_UPGRADE_RAIDER_MIRVGRENADE_2 = 8284,
			ITEM_UPGRADE_RAIDER_MIRVGRENADE_3 = 8285,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_1 = 8083,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_2 = 8084,
			ITEM_UPGRADE_JUGGERNAUT_HEAVYAPGRENADE_3 = 8085,
			ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_1 = 8086,
			ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_2 = 8087,
			ITEM_UPGRADE_JUGGERNAUT_DISKTOSS_3 = 8088,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_1 = 8110,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_2 = 8111,
			ITEM_UPGRADE_DOOMBRINGER_GRENADE_3 = 8112,
			ITEM_UPGRADE_DOOMBRINGER_MINES_1 = 8113,
			ITEM_UPGRADE_DOOMBRINGER_MINES_2 = 8114,
			ITEM_UPGRADE_DOOMBRINGER_MINES_3 = 8115,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_1 = 8135,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_2 = 8136,
			ITEM_UPGRADE_BRUTE_FRACTALGRENADE_3 = 8137,
			ITEM_UPGRADE_BRUTE_STICKYGRENADE_1 = 8138,
			ITEM_UPGRADE_BRUTE_STICKYGRENADE_2 = 8139,
			ITEM_UPGRADE_BRUTE_STICKYGRENADE_3 = 8140,
			ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_1 = 7871,
			ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_2 = 7872,
			ITEM_UPGRADE_PATHFINDER_ENERGYRECHARGEPACK_3 = 7873,
			ITEM_UPGRADE_PATHFINDER_JUMPPACK_1 = 7876,
			ITEM_UPGRADE_PATHFINDER_JUMPPACK_2 = 7877,
			ITEM_UPGRADE_PATHFINDER_JUMPPACK_3 = 7878,
			ITEM_UPGRADE_SENTINEL_DROPJAMMER_1 = 7949,
			ITEM_UPGRADE_SENTINEL_DROPJAMMER_2 = 7950,
			ITEM_UPGRADE_SENTINEL_DROPJAMMER_3 = 7951,
			ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_1 = 7952,
			ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_2 = 7953,
			ITEM_UPGRADE_SENTINEL_ENERGYRECHARGEPACK_3 = 7954,
			ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_1 = 7977,
			ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_2 = 7978,
			ITEM_UPGRADE_INFILTRATOR_STEALTHPACK_3 = 7979,
			ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_1 = 8271,
			ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_2 = 8272,
			ITEM_UPGRADE_INFILTRATOR_HIGHSPEEDSTEALTH_3 = 8273,
			ITEM_UPGRADE_SOLDIER_ENERGYPACK_1 = 8004,
			ITEM_UPGRADE_SOLDIER_ENERGYPACK_2 = 8005,
			ITEM_UPGRADE_SOLDIER_ENERGYPACK_3 = 8006,
			ITEM_UPGRADE_SOLDIER_UTILITYPACK_1 = 8224,
			ITEM_UPGRADE_SOLDIER_UTILITYPACK_2 = 8225,
			ITEM_UPGRADE_SOLDIER_UTILITYPACK_3 = 8226,
			ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_1 = 8034,
			ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_2 = 8035,
			ITEM_UPGRADE_TECHNICIAN_LIGHTTURRET_3 = 8036,
			ITEM_UPGRADE_TECHNICIAN_EXRTURRET_1 = 8268,
			ITEM_UPGRADE_TECHNICIAN_EXRTURRET_2 = 8269,
			ITEM_UPGRADE_TECHNICIAN_EXRTURRET_3 = 8270,
			ITEM_UPGRADE_RAIDER_SHIELDPACK_1 = 8058,
			ITEM_UPGRADE_RAIDER_SHIELDPACK_2 = 8059,
			ITEM_UPGRADE_RAIDER_SHIELDPACK_3 = 8060,
			ITEM_UPGRADE_RAIDER_JAMMERPACK_1 = 8061,
			ITEM_UPGRADE_RAIDER_JAMMERPACK_2 = 8062,
			ITEM_UPGRADE_RAIDER_JAMMERPACK_3 = 8063,
			ITEM_UPGRADE_RAIDER_JAMMERPACK_4 = 8064,
			ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_1 = 8089,
			ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_2 = 8090,
			ITEM_UPGRADE_JUGGERNAUT_HEALTHREGENPACK_3 = 8091,
			ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_1 = 8092,
			ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_2 = 8093,
			ITEM_UPGRADE_JUGGERNAUT_ENERGYPACK_3 = 8094,
			ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_1 = 8309,
			ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_2 = 8310,
			ITEM_UPGRADE_JUGGERNAUT_SURVIVALPACK_3 = 8311,
			ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_1 = 8116,
			ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_2 = 8117,
			ITEM_UPGRADE_DOOMBRINGER_FORCEFIELD_3 = 8118,
			ITEM_UPGRADE_BRUTE_ENERGYPACK_1 = 8141,
			ITEM_UPGRADE_BRUTE_ENERGYPACK_2 = 8142,
			ITEM_UPGRADE_BRUTE_ENERGYPACK_3 = 8143,
			ITEM_UPGRADE_BRUTE_SHIELDPACK_1 = 8144,
			ITEM_UPGRADE_BRUTE_SHIELDPACK_2 = 8145,
			ITEM_UPGRADE_BRUTE_SHIELDPACK_3 = 8146,
			ITEM_UPGRADE_PATHFINDER_ARMOR_1 = 7893,
			ITEM_UPGRADE_PATHFINDER_ARMOR_2 = 7894,
			ITEM_UPGRADE_PATHFINDER_ARMOR_3 = 7895,
			ITEM_UPGRADE_PATHFINDER_ARMOR_4 = 7896,
			ITEM_UPGRADE_PATHFINDER_ARMOR_5 = 7897,
			ITEM_UPGRADE_SENTINEL_ARMOR_1 = 7955,
			ITEM_UPGRADE_SENTINEL_ARMOR_2 = 7956,
			ITEM_UPGRADE_SENTINEL_ARMOR_3 = 7957,
			ITEM_UPGRADE_SENTINEL_ARMOR_4 = 7958,
			ITEM_UPGRADE_SENTINEL_ARMOR_5 = 7959,
			ITEM_UPGRADE_INFILTRATOR_ARMOR_1 = 7980,
			ITEM_UPGRADE_INFILTRATOR_ARMOR_2 = 7981,
			ITEM_UPGRADE_INFILTRATOR_ARMOR_3 = 7982,
			ITEM_UPGRADE_INFILTRATOR_ARMOR_4 = 7983,
			ITEM_UPGRADE_INFILTRATOR_ARMOR_5 = 7984,
			ITEM_UPGRADE_SOLDIER_ARMOR_1 = 8007,
			ITEM_UPGRADE_SOLDIER_ARMOR_2 = 8008,
			ITEM_UPGRADE_SOLDIER_ARMOR_3 = 8009,
			ITEM_UPGRADE_SOLDIER_ARMOR_4 = 8010,
			ITEM_UPGRADE_SOLDIER_ARMOR_5 = 8011,
			ITEM_UPGRADE_TECHNICIAN_ARMOR_1 = 8037,
			ITEM_UPGRADE_TECHNICIAN_ARMOR_2 = 8038,
			ITEM_UPGRADE_TECHNICIAN_ARMOR_3 = 8039,
			ITEM_UPGRADE_TECHNICIAN_ARMOR_4 = 8040,
			ITEM_UPGRADE_TECHNICIAN_ARMOR_5 = 8041,
			ITEM_UPGRADE_RAIDER_ARMOR_1 = 8065,
			ITEM_UPGRADE_RAIDER_ARMOR_2 = 8066,
			ITEM_UPGRADE_RAIDER_ARMOR_3 = 8067,
			ITEM_UPGRADE_RAIDER_ARMOR_4 = 8068,
			ITEM_UPGRADE_RAIDER_ARMOR_5 = 8069,
			ITEM_UPGRADE_JUGGERNAUT_ARMOR_1 = 8095,
			ITEM_UPGRADE_JUGGERNAUT_ARMOR_2 = 8096,
			ITEM_UPGRADE_JUGGERNAUT_ARMOR_3 = 8097,
			ITEM_UPGRADE_JUGGERNAUT_ARMOR_4 = 8098,
			ITEM_UPGRADE_JUGGERNAUT_ARMOR_5 = 8099,
			ITEM_UPGRADE_DOOMBRINGER_ARMOR_1 = 8119,
			ITEM_UPGRADE_DOOMBRINGER_ARMOR_2 = 8120,
			ITEM_UPGRADE_DOOMBRINGER_ARMOR_3 = 8121,
			ITEM_UPGRADE_DOOMBRINGER_ARMOR_4 = 8122,
			ITEM_UPGRADE_DOOMBRINGER_ARMOR_5 = 8123,
			ITEM_UPGRADE_BRUTE_ARMOR_1 = 8147,
			ITEM_UPGRADE_BRUTE_ARMOR_2 = 8148,
			ITEM_UPGRADE_BRUTE_ARMOR_3 = 8149,
			ITEM_UPGRADE_BRUTE_ARMOR_4 = 8150,
			ITEM_UPGRADE_BRUTE_ARMOR_5 = 8151,
			ITEM_PERK_UPGRADE_BOUNTYHUNTER_1 = 8188,
			ITEM_PERK_UPGRADE_BOUNTYHUNTER_2 = 8189,
			ITEM_PERK_UPGRADE_BOUNTYHUNTER_3 = 8190,
			ITEM_PERK_UPGRADE_CLOSECOMBAT_1 = 8194,
			ITEM_PERK_UPGRADE_CLOSECOMBAT_2 = 8195,
			ITEM_PERK_UPGRADE_CLOSECOMBAT_3 = 8196,
			ITEM_PERK_UPGRADE_EGOCENTRIC_1 = 8173,
			ITEM_PERK_UPGRADE_EGOCENTRIC_2 = 8174,
			ITEM_PERK_UPGRADE_EGOCENTRIC_3 = 8175,
			ITEM_PERK_UPGRADE_LOOTER_1 = 8185,
			ITEM_PERK_UPGRADE_LOOTER_2 = 8186,
			ITEM_PERK_UPGRADE_LOOTER_3 = 8187,
			ITEM_PERK_UPGRADE_MECHANIC_1 = 8215,
			ITEM_PERK_UPGRADE_MECHANIC_2 = 8216,
			ITEM_PERK_UPGRADE_MECHANIC_3 = 8217,
			ITEM_PERK_UPGRADE_PILOT_1 = 8179,
			ITEM_PERK_UPGRADE_PILOT_2 = 8180,
			ITEM_PERK_UPGRADE_PILOT_3 = 8181,
			ITEM_PERK_UPGRADE_POTENTIALENERGY_1 = 8200,
			ITEM_PERK_UPGRADE_POTENTIALENERGY_2 = 8201,
			ITEM_PERK_UPGRADE_POTENTIALENERGY_3 = 8202,
			ITEM_PERK_UPGRADE_QUICKDRAW_1 = 8209,
			ITEM_PERK_UPGRADE_QUICKDRAW_2 = 8210,
			ITEM_PERK_UPGRADE_QUICKDRAW_3 = 8211,
			ITEM_PERK_UPGRADE_REACH_1 = 8152,
			ITEM_PERK_UPGRADE_REACH_2 = 8171,
			ITEM_PERK_UPGRADE_REACH_3 = 8172,
			ITEM_PERK_UPGRADE_SAFEFALL_1 = 8176,
			ITEM_PERK_UPGRADE_SAFEFALL_2 = 8177,
			ITEM_PERK_UPGRADE_SAFEFALL_3 = 8178,
			ITEM_PERK_UPGRADE_SAFETYTHIRD_1 = 8212,
			ITEM_PERK_UPGRADE_SAFETYTHIRD_2 = 8213,
			ITEM_PERK_UPGRADE_SAFETYTHIRD_3 = 8214,
			ITEM_PERK_UPGRADE_STEALTHY_1 = 8206,
			ITEM_PERK_UPGRADE_STEALTHY_2 = 8207,
			ITEM_PERK_UPGRADE_STEALTHY_3 = 8208,
			ITEM_PERK_UPGRADE_SUPERHEAVY_1 = 8197,
			ITEM_PERK_UPGRADE_SUPERHEAVY_2 = 8198,
			ITEM_PERK_UPGRADE_SUPERHEAVY_3 = 8199,
			ITEM_PERK_UPGRADE_SURVIVALIST_1 = 8191,
			ITEM_PERK_UPGRADE_SURVIVALIST_2 = 8192,
			ITEM_PERK_UPGRADE_SURVIVALIST_3 = 8193,
			ITEM_PERK_UPGRADE_ULTRACAPACITOR_1 = 8203,
			ITEM_PERK_UPGRADE_ULTRACAPACITOR_2 = 8204,
			ITEM_PERK_UPGRADE_ULTRACAPACITOR_3 = 8205,
			ITEM_PERK_UPGRADE_WHEELDEAL_1 = 8182,
			ITEM_PERK_UPGRADE_WHEELDEAL_2 = 8183,
			ITEM_PERK_UPGRADE_WHEELDEAL_3 = 8184,
			ITEM_PERK_UPGRADE_RAGE_1 = 8236,
			ITEM_PERK_UPGRADE_RAGE_2 = 8237,
			ITEM_PERK_UPGRADE_RAGE_3 = 8238,
			ITEM_PERK_UPGRADE_SONICPUNCH_1 = 8233,
			ITEM_PERK_UPGRADE_SONICPUNCH_2 = 8234,
			ITEM_PERK_UPGRADE_SONICPUNCH_3 = 8235,
			ITEM_UPGRADE_TEMP = 99999,
			SHOP_VENDOR_GOLD = 507,
			SHOP_VENDOR_BUNDLES = 518,
			SHOP_VENDOR_BOOSTERS = 508,
			SHOP_VENDOR_NAMECHANGE = 512,
			SHOP_VENDOR_CLANTAG = 545,
			SKIN_INFILTRATOR_BE = 6,
			SKIN_INFILTRATOR_DS = 7,
			SKIN_SENTINEL_BE = 8,
			SKIN_SENTINEL_DS = 9,
			SKIN_RAIDER_BE = 10,
			SKIN_RAIDER_DS = 11,
			SKIN_TECHNICIAN_BE = 12,
			SKIN_TECHNICIAN_DS = 13,
			SKIN_DOOMBRINGER_BE = 14,
			SKIN_DOOMBRINGER_DS = 15,
			SKIN_JUGGERNAUT_BE = 16,
			SKIN_JUGGERNAUT_DS = 17,
			SKIN_BRUTE_BE = 18,
			SKIN_BRUTE_DS = 19,
			SKIN_SOLDIER_BE = 20,
			SKIN_SOLDIER_DS = 21,
			SKIN_PATHFINDER_BE = 22,
			SKIN_PATHFINDER_DS = 23,
			SKIN_PATHFINDER_MC = 24,
			SKIN_INFILTRATOR_AS = 25,
			SKIN_INFILTRATOR_MC = 26,
			SKIN_RAIDER_GV = 25,
			SKIN_RAIDER_MC = 26,
			SKIN_SENTINEL_MC = 27,
			SKIN_BRUTE_MC = 28,
			SKIN_TECHNICIAN_MC = 29,
			QUEUE_CONFIG_SERVERNAME = 1243,
			QUEUE_CONFIG_ADMINPASSWORD = 1245,
			QUEUE_CONFIG_GENPASSWORD = 1246,
			QUEUE_CONFIG_SLOTS = 1247,
			QUEUE_CONFIG_MATCHQUEUEID = 1253,
			QUEUE_CONFIG_SERVERDESCRIPTION = 1255,
			QUEUE_CONFIG_MAPROTATIONTYPE = 1256,
			QUEUE_CONFIG_MAPSLOT1 = 1257,
			QUEUE_CONFIG_MAPSLOT2 = 1258,
			QUEUE_CONFIG_MAPSLOT3 = 1259,
			QUEUE_CONFIG_MAPSLOT4 = 1260,
			QUEUE_CONFIG_MAPSLOT5 = 1261,
			QUEUE_CONFIG_MAPSLOT6 = 1262,
			QUEUE_CONFIG_MAPSLOT7 = 1263,
			QUEUE_CONFIG_MAPSLOT8 = 1264,
			QUEUE_CONFIG_SITEID = 1272,
			QUEUE_CONFIG_MINLEVEL = 1296,
			QUEUE_CONFIG_MAXLEVEL = 1297,
			GAME_CONFIG_TIMELIMIT = 1059,
			GAME_CONFIG_MAXPLAYERS = 1060,
			GAME_CONFIG_AUTOBALANCE = 1062,
			GAME_CONFIG_OVERTIMELIMIT = 1063,
			GAME_CONFIG_RESPAWNTIME = 1064,
			GAME_CONFIG_FRIENDLYFIRE = 1065,
			GAME_CONFIG_GENAUTOREGEN = 1066,
			GAME_CONFIG_UPGRADES = 1067,
			GAME_CONFIG_SPAWNNAKED = 1068,
			GAME_CONFIG_BASEASSETS = 1070,
			GAME_CONFIG_POWERDEPLOYS = 1072,
			GAME_CONFIG_VEHICLELIMITS = 1075,
			GAME_CONFIG_VGRAVCYCLELIMIT = 1268,
			GAME_CONFIG_VBEOWULFLIMIT = 1269,
			GAME_CONFIG_VSHRIKELIMIT = 1270,
			GAME_CONFIG_VBEOWULFPRICE = 1076,
			GAME_CONFIG_VGRAVPRICE = 1077,
			GAME_CONFIG_VSHRIKEPRICE = 1080,
			GAME_CONFIG_TEAMJOINTYPE = 1081,
			GAME_CONFIG_FFMULTIPLIER = 1123,
			GAME_CONFIG_CALLINSDENIED = 1233,
			GAME_CONFIG_CALLINPRICETAC = 1234,
			GAME_CONFIG_CALLINPRICESUP = 1235,
			GAME_CONFIG_CALLINPRICEORB = 1236,
			GAME_CONFIG_CALLINCLDWNTAC = 1237,
			GAME_CONFIG_CALLINCLDWNSUP = 1238,
			GAME_CONFIG_CALLINCLDWNORB = 1239,
			GAME_CONFIG_CALLINBLDUPTAC = 1249,
			GAME_CONFIG_CALLINBLDUPSUP = 1250,
			GAME_CONFIG_CALLINBLDUPORB = 1251,
			GAME_CONFIG_BASEDESTLIMIT = 1241,
			GAME_CONFIG_WARMUPTIME = 1248,
			GAME_CONFIG_TEAMDISPARITY = 1252,
			GAME_CONFIG_CONFIGCASEID = 1254,
			GAME_CONFIG_ARENAROUNDS = 1265,
			GAME_CONFIG_SCORELIMIT_CTF = 1061,
			GAME_CONFIG_SCORELIMIT_RAB = 1278,
			GAME_CONFIG_SCORELIMIT_TDM = 1276,
			GAME_CONFIG_SCORELIMIT_ARN = 1277,
			GAME_CONFIG_SCORELIMIT_CAH = 1279,
			GAME_CONFIG_GAMETYPE = 1244,
			GAME_CONFIG_GENDESTROYABLE = 1280,
			GAME_CONFIG_INVDESTROYABLE = 1281,
			GAME_CONFIG_FFDEPLOYABLES = 1282,
			GAME_CONFIG_FFBASEASSETS = 1283,
			GAME_CONFIG_FFDMGLIMIT = 1284,
			GAME_CONFIG_FFKILLLIMIT = 1285,
			GAME_CONFIG_SUPPLYDROPAMMOONLY = 1286,
			GAME_CONFIG_CLASSCOUNT_PTH = 1287,
			GAME_CONFIG_CLASSCOUNT_SEN = 1289,
			GAME_CONFIG_CLASSCOUNT_INF = 1288,
			GAME_CONFIG_CLASSCOUNT_SLD = 1290,
			GAME_CONFIG_CLASSCOUNT_TCN = 1291,
			GAME_CONFIG_CLASSCOUNT_RDR = 1292,
			GAME_CONFIG_CLASSCOUNT_JUG = 1293,
			GAME_CONFIG_CLASSCOUNT_DMB = 1294,
			GAME_CONFIG_CLASSCOUNT_BRT = 1295,
			GAME_CONFIG_POWEREDCALLINS = 1298,
			GAME_CONFIG_TEAMCREDITS = 1299,
			GAME_CONFIG_VEHICLEHEALTHMULT = 1327,
			GAME_CONFIG_SKIENABLED = 1373,
			GAME_CONFIG_ENERGYMULTIPLIER = 1374,
			GAME_CONFIG_AOESIZEMULTIPLIER = 1375,
			GAME_CONFIG_AOEDAMAGEMULTIPLIER = 1376,
			GAME_CONFIG_CTFBLITZALLFLAGSMOVE = 1377,
			GAME_CONFIG_MAXSPEEDWITHFLAGLIGHT = 1391,
			GAME_CONFIG_DECELERATIONRATEWITHFLAG = 1392,
			GAME_CONFIG_MAXSPEEDWITHFLAGMEDIUM = 1395,
			GAME_CONFIG_MAXSPEEDWITHFLAGHEAVY = 1396,
			SERVER_RT_METHOD_RANDOM = 10070,
			SERVER_RT_METHOD_LINEAR = 10071,
			SERVER_RT_METHOD_LINEAR2 = 10072,
			SERVER_RT_METHOD_LINEAR4 = 10073,
			TR_MAX_GAMETYPES = 5,
			SERVER_GAMECLASSID_CTF = 197,
			SERVER_GAMECLASSID_RAB = 8012,
			SERVER_GAMECLASSID_TDM = 8036,
			SERVER_GAMECLASSID_ARN = 8086,
			SERVER_GAMECLASSID_CAH = 8094,
			SERVER_GAMECLASSID_BTZ = 8118,
			SERVER_DEFAULT_MAP_CTF = 1462,
			SERVER_DEFAULT_MAP_RAB = 1465,
			SERVER_DEFAULT_MAP_TDM = 1488,
			SERVER_DEFAULT_MAP_ARN = 1495,
			SERVER_DEFAULT_MAP_CAH = 1519,
			SERVER_DEFAULT_MAP_BTZ = 1539,
			PTH_LOADOUT_ONE = 8359,
			PTH_LOADOUT_TWO = 8360,
			PTH_LOADOUT_THREE = 8361,
			PTH_LOADOUT_FOUR = 8674,
			PTH_LOADOUT_FIVE = 8675,
			INF_LOADOUT_ONE = 8362,
			INF_LOADOUT_TWO = 8363,
			INF_LOADOUT_THREE = 8364,
			INF_LOADOUT_FOUR = 8676,
			INF_LOADOUT_FIVE = 8677,
			SEN_LOADOUT_ONE = 8365,
			SEN_LOADOUT_TWO = 8366,
			SEN_LOADOUT_THREE = 8367,
			SEN_LOADOUT_FOUR = 8678,
			SEN_LOADOUT_FIVE = 8679,
			SLD_LOADOUT_ONE = 8368,
			SLD_LOADOUT_TWO = 8369,
			SLD_LOADOUT_THREE = 8370,
			SLD_LOADOUT_FOUR = 8680,
			SLD_LOADOUT_FIVE = 8681,
			TCN_LOADOUT_ONE = 8371,
			TCN_LOADOUT_TWO = 8372,
			TCN_LOADOUT_THREE = 8373,
			TCN_LOADOUT_FOUR = 8682,
			TCN_LOADOUT_FIVE = 8683,
			RDR_LOADOUT_ONE = 8374,
			RDR_LOADOUT_TWO = 8375,
			RDR_LOADOUT_THREE = 8376,
			RDR_LOADOUT_FOUR = 8684,
			RDR_LOADOUT_FIVE = 8685,
			JUG_LOADOUT_ONE = 8377,
			JUG_LOADOUT_TWO = 8378,
			JUG_LOADOUT_THREE = 8379,
			JUG_LOADOUT_FOUR = 8686,
			JUG_LOADOUT_FIVE = 8687,
			DMB_LOADOUT_ONE = 8380,
			DMB_LOADOUT_TWO = 8381,
			DMB_LOADOUT_THREE = 8382,
			DMB_LOADOUT_FOUR = 8688,
			DMB_LOADOUT_FIVE = 8689,
			BRT_LOADOUT_ONE = 8383,
			BRT_LOADOUT_TWO = 8384,
			BRT_LOADOUT_THREE = 8385,
			BRT_LOADOUT_FOUR = 8690,
			BRT_LOADOUT_FIVE = 8691,
			ACTIVITY_DEVICE_NONE = 0,
			ACTIVITY_SENTINEL_PRIMARY_BXT1 = 124,
			ACTIVITY_SENTINEL_BELT_MINE_CLAYMORE_MKD = 125,
			ACTIVITY_SENTINEL_PRIMARY_SNIPERRIFLE_MKD = 126,
			ACTIVITY_BRUTE_PRIMARY_HEAVYSPINFUSOR = 127,
			ACTIVITY_BRUTE_PRIMARY_HEAVYSPINFUSOR_MKD = 128,
			ACTIVITY_BRUTE_PRIMARY_SPIKELAUNCHER = 129,
			ACTIVITY_DOOMBRINGER_PRIMARY_CHAINGUN = 131,
			ACTIVITY_DOOMBRINGER_PRIMARY_CHAINGUN_MKD = 132,
			ACTIVITY_DOOMBRINGER_PRIMARY_HEAVYBOLTLAUNCHER = 133,
			ACTIVITY_INFILTRATOR_PRIMARY_REMOTEARXBUSTER = 134,
			ACTIVITY_INFILTRATOR_PRIMARY_RHINOSMG = 135,
			ACTIVITY_INFILTRATOR_PRIMARY_RHINOSMG_MKD = 136,
			ACTIVITY_INFILTRATOR_PRIMARY_STEALTHLIGHTSPINFUSOR = 137,
			ACTIVITY_JUGGERNAUT_PRIMARY_FUSIONMORTAR = 138,
			ACTIVITY_JUGGERNAUT_PRIMARY_FUSIONMORTAR_MKD = 139,
			ACTIVITY_JUGGERNAUT_PRIMARY_MIRVLAUNCHER = 140,
			ACTIVITY_PATHFINDER_PRIMARY_BOLTLAUNCHER = 141,
			ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR = 142,
			ACTIVITY_PATHFINDER_PRIMARY_LIGHTSPINFUSOR_MKD = 143,
			ACTIVITY_RAIDER_PRIMARY_ARXBUSTER = 144,
			ACTIVITY_RAIDER_PRIMARY_ARXBUSTER_MKD = 145,
			ACTIVITY_RAIDER_PRIMARY_GRENADELAUNCHER = 146,
			ACTIVITY_RAIDER_PRIMARY_PLASMAGUN = 147,
			ACTIVITY_SENTINEL_PRIMARY_PHASERIFLE = 148,
			ACTIVITY_SOLDIER_PRIMARY_ASSAULTRIFLE = 149,
			ACTIVITY_SOLDIER_PRIMARY_ASSAULTRIFLE_MKD = 150,
			ACTIVITY_SOLDIER_PRIMARY_SPINFUSOR = 151,
			ACTIVITY_TECHNICIAN_PRIMARY_TCN4 = 152,
			ACTIVITY_TECHNICIAN_PRIMARY_TCN4_MKD = 153,
			ACTIVITY_TECHNICIAN_PRIMARY_THUMPER = 154,
			ACTIVITY_BRUTE_SECONDARY_AUTOSHOTGUN = 155,
			ACTIVITY_BRUTE_SECONDARY_AUTOSHOTGUN_MKD = 156,
			ACTIVITY_BRUTE_SECONDARY_NOVACOLT = 157,
			ACTIVITY_BRUTE_SECONDARY_PLASMACANNON = 158,
			ACTIVITY_DOOMBRINGER_SECONDARY_SABERLAUNCHER = 159,
			ACTIVITY_DOOMBRINGER_SECONDARY_SABERLAUNCHER_MKD = 160,
			ACTIVITY_INFILTRATOR_SECONDARY_SN7 = 161,
			ACTIVITY_INFILTRATOR_SECONDARY_SN7_MKD = 162,
			ACTIVITY_INFILTRATOR_SECONDARY_THROWINGKNIVES = 163,
			ACTIVITY_JUGGERNAUT_SECONDARY_SPINFUSORD = 164,
			ACTIVITY_JUGGERNAUT_SECONDARY_SPINFUSORD_MKD = 165,
			ACTIVITY_JUGGERNAUT_SECONDARY_X1LMG = 166,
			ACTIVITY_PATHFINDER_SECONDARY_LIGHTASSAULTRIFLE = 167,
			ACTIVITY_PATHFINDER_SECONDARY_SHOTGUN = 168,
			ACTIVITY_PATHFINDER_SECONDARY_SHOTGUN_MKD = 169,
			ACTIVITY_RAIDER_SECONDARY_NJ4SMG = 170,
			ACTIVITY_RAIDER_SECONDARY_NJ4SMG_MKD = 171,
			ACTIVITY_RAIDER_SECONDARY_NJ5SMG = 172,
			ACTIVITY_SENTINEL_SECONDARY_FALCON = 173,
			ACTIVITY_SENTINEL_SECONDARY_NOVABLASTER = 174,
			ACTIVITY_SENTINEL_SECONDARY_NOVABLASTER_MKD = 175,
			ACTIVITY_SOLDIER_SECONDARY_EAGLE = 176,
			ACTIVITY_SOLDIER_SECONDARY_THUMPERD = 177,
			ACTIVITY_SOLDIER_SECONDARY_THUMPERD_MKD = 178,
			ACTIVITY_TECHNICIAN_SECONDARY_REPAIRTOOLSD = 179,
			ACTIVITY_TECHNICIAN_SECONDARY_REPAIRTOOLSD_MKD = 180,
			ACTIVITY_TECHNICIAN_SECONDARY_SAWEDOFF = 181,
			ACTIVITY_TECHNICIAN_SECONDARY_SPARROW = 182,
			ACTIVITY_ARMOR_MOD_BRUTE_1 = 183,
			ACTIVITY_ARMOR_MOD_DOOMBRINGER_1 = 184,
			ACTIVITY_ARMOR_MOD_INFILTRATOR_1 = 185,
			ACTIVITY_ARMOR_MOD_JUGGERNAUT_1 = 186,
			ACTIVITY_ARMOR_MOD_PATHFINDER_1 = 187,
			ACTIVITY_ARMOR_MOD_RAIDER_1 = 188,
			ACTIVITY_ARMOR_MOD_SENTINEL_1 = 189,
			ACTIVITY_ARMOR_MOD_TECHNICIAN_1 = 190,
			ACTIVITY_ARMOR_MOD_SOLDIER_1 = 191,
			ACTIVITY_BRUTE_BELT_FRACTALGRENADE = 192,
			ACTIVITY_BRUTE_BELT_FRACTALGRENADE_MKD = 193,
			ACTIVITY_BRUTE_BELT_LIGHTSTICKYGRENADE = 194,
			ACTIVITY_DOOMBRINGER_BELT_MINE = 195,
			ACTIVITY_DOOMBRINGER_BELT_STANDARDGRENADE = 196,
			ACTIVITY_DOOMBRINGER_BELT_STANDARDGRENADE_MKD = 197,
			ACTIVITY_INFILTRATOR_BELT_NINJASMOKE = 198,
			ACTIVITY_INFILTRATOR_BELT_PRISMMINES = 199,
			ACTIVITY_INFILTRATOR_BELT_STICKYGRENADE = 200,
			ACTIVITY_INFILTRATOR_BELT_STICKYGRENADE_MKD = 201,
			ACTIVITY_JUGGERNAUT_BELT_DISKTOSS = 202,
			ACTIVITY_JUGGERNAUT_BELT_HEAVYAPGRENADE = 203,
			ACTIVITY_JUGGERNAUT_BELT_HEAVYAPGRENADE_MKD = 204,
			ACTIVITY_PATHFINDER_BELT_IMPACTNITRON = 205,
			ACTIVITY_PATHFINDER_BELT_IMPACTNITRON_MKD = 206,
			ACTIVITY_PATHFINDER_BELT_STGRENADE = 207,
			ACTIVITY_RAIDER_BELT_EMPGRENADE = 208,
			ACTIVITY_RAIDER_BELT_EMPGRENADE_MKD = 209,
			ACTIVITY_RAIDER_BELT_MIRVGRENADE = 210,
			ACTIVITY_RAIDER_BELT_WHITEOUT = 211,
			ACTIVITY_SENTINEL_BELT_ARMOREDCLAYMORE = 212,
			ACTIVITY_SENTINEL_BELT_CLAYMORE = 213,
			ACTIVITY_SENTINEL_BELT_CLAYMORE_MKD = 214,
			ACTIVITY_SENTINEL_BELT_GRENADET5 = 215,
			ACTIVITY_SOLDIER_BELT_APGRENADE = 216,
			ACTIVITY_SOLDIER_BELT_FRAGGRENADEXL = 217,
			ACTIVITY_SOLDIER_BELT_FRAGGRENADEXL_MKD = 218,
			ACTIVITY_SOLDIER_BELT_PROXIMITYGRENADE = 219,
			ACTIVITY_TECHNICIAN_BELT_MOTIONALARM = 220,
			ACTIVITY_TECHNICIAN_BELT_TCNG = 221,
			ACTIVITY_TECHNICIAN_BELT_TCNG_MKD = 222,
			ACTIVITY_BRUTE_PACK_HEAVYSHIELD = 223,
			ACTIVITY_BRUTE_PACK_MINORENERGY = 224,
			ACTIVITY_BRUTE_PACK_SURVIVALPACK = 225,
			ACTIVITY_DOOMBRINGER_PACK_FORCEFIELD = 226,
			ACTIVITY_INFILTRATOR_PACK_STEALTH = 227,
			ACTIVITY_JUGGERNAUT_PACK_HEALTHREGEN = 228,
			ACTIVITY_PATHFINDER_PACK_ENERGYRECHARGE = 229,
			ACTIVITY_PATHFINDER_PACK_JUMPPACK = 230,
			ACTIVITY_RAIDER_PACK_JAMMER = 231,
			ACTIVITY_RAIDER_PACK_SHIELD = 232,
			ACTIVITY_SENTINEL_PACK_DROPJAMMER = 233,
			ACTIVITY_SENTINEL_PACK_ENERGYRECHARGE = 234,
			ACTIVITY_SOLDIER_PACK_ENERGYPOOL = 235,
			ACTIVITY_SOLDIER_PACK_UTILITY = 236,
			ACTIVITY_TECHNICIAN_PACK_EXRTURRET = 237,
			ACTIVITY_TECHNICIAN_PACK_LIGHTTURRET = 238,
			ACTIVITY_PERK_BOUNTY_HUNTER = 239,
			ACTIVITY_PERK_CLOSE_COMBAT = 240,
			ACTIVITY_PERK_LOOTER = 241,
			ACTIVITY_PERK_RAGE = 242,
			ACTIVITY_PERK_REACH = 243,
			ACTIVITY_PERK_SAFE_FALL = 244,
			ACTIVITY_PERK_SAFETY_THIRD = 245,
			ACTIVITY_PERK_STEALTHY = 246,
			ACTIVITY_PERK_SUPER_CAPACITOR = 247,
			ACTIVITY_PERK_WHEEL_DEAL = 248,
			ACTIVITY_PERK_DETERMINATION = 249,
			ACTIVITY_PERK_EGOCENTRIC = 250,
			ACTIVITY_PERK_MECHANIC = 253,
			ACTIVITY_PERK_PILOT = 254,
			ACTIVITY_PERK_POTENTIAL_ENERGY = 255,
			ACTIVITY_PERK_QUICKDRAW = 256,
			ACTIVITY_PERK_SONIC_PUNCH = 257,
			ACTIVITY_PERK_SUPER_HEAVY = 258,
			ACTIVITY_PERK_SURVIVALIST = 259,
			ACTIVITY_PERK_ULTRA_CAPACITOR = 260,
			ACTIVITY_PATHFINDER_PRIMARY_LIGHTTWINFUSOR = 261,
			ACTIVITY_SOLDIER_PRIMARY_TWINFUSOR = 262,
			ACTIVITY_JUGGERNAUT_SECONDARY_HEAVYTWINFUSOR = 263,
			BUNDLE_LOOT_ID_CAD_ASSASSIN = 8918,
			BUNDLE_LOOT_ID_CAD_MERCENARY = 8919,
			BUNDLE_LOOT_ID_CAD_PREMIUM = 8912,
			BUNDLE_LOOT_ID_CAD_WEAPONS = 8920,
			BUNDLE_LOOT_ID_RAP_GRIEVER = 8982,
			BUNDLE_LOOT_ID_RAP_MERCENARY = 8983,
			BUNDLE_LOOT_ID_RAP_PREMIUM = 8981,
			BUNDLE_LOOT_ID_RAP_WEAPONS = 8984,
			BUNDLE_LOOT_ID_NEWPLAYER = 9214,
			BUNDLE_LOOT_ID_SHAZBUNDLE = 9213,
			BUNDLE_LOOT_ID_STAYINALIVE = 9035,
			BUNDLE_LOOT_ID_TWINFUSOR = 9449,
			BUNDLE_LOOT_ID_SKINPACK = 9457,
			BUNDLE_LOOT_ID_SPECIALIST = 9496,
			BUNDLE_LOOT_ID_SENTINEL = 9510,
			ITEM_VOICE_LIGHT = 8666,
			ITEM_VOICE_MEDIUM = 8667,
			ITEM_VOICE_HEAVY = 8668,
			ITEM_VOICE_DARK = 8669,
			ITEM_VOICE_FEM1 = 8670,
			ITEM_VOICE_FEM2 = 8671,
			ITEM_VOICE_AUS = 8695,
			ITEM_VOICE_T2FEM01 = 8712,
			ITEM_VOICE_T2FEM02 = 8714,
			ITEM_VOICE_T2FEM03 = 8715,
			ITEM_VOICE_T2FEM04 = 8716,
			ITEM_VOICE_T2FEM05 = 8717,
			ITEM_VOICE_T2MALE01 = 8719,
			ITEM_VOICE_T2MALE02 = 8720,
			ITEM_VOICE_T2MALE03 = 8721,
			ITEM_VOICE_T2MALE04 = 8722,
			ITEM_VOICE_T2MALE05 = 8723,
			ITEM_VOICE_T2BDERM01 = 8724,
			ITEM_VOICE_T2BDERM02 = 8725,
			ITEM_VOICE_T2BDERM03 = 8726,
		}
	}
	struct UpgradeSelectionList
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrGameObjective.UpgradeSelectionList")); }
		@property final auto ref
		{
			ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 16); }
			float NewValue() { return *cast(float*)(cast(size_t)&this + 12); }
			int UpgradeCreditCost() { return *cast(int*)(cast(size_t)&this + 8); }
			int UpgradeLevel() { return *cast(int*)(cast(size_t)&this + 4); }
			ScriptClass UpgradeClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		}
	}
	struct ObjectiveDamageAssist
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrGameObjective.ObjectiveDamageAssist")); }
		@property final auto ref
		{
			int DamageAmount() { return *cast(int*)(cast(size_t)&this + 4); }
			TrPlayerController Damager() { return *cast(TrPlayerController*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrGameObjective.UpgradeSelectionList) m_UpgradeList() { return *cast(ScriptArray!(TrGameObjective.UpgradeSelectionList)*)(cast(size_t)cast(void*)this + 1260); }
			ScriptArray!(TrGameObjective.ObjectiveDamageAssist) DamageAssistList() { return *cast(ScriptArray!(TrGameObjective.ObjectiveDamageAssist)*)(cast(size_t)cast(void*)this + 1324); }
			ScriptArray!(TrPlayerController) m_Upgraders() { return *cast(ScriptArray!(TrPlayerController)*)(cast(size_t)cast(void*)this + 1348); }
			ScriptClass m_AssistAccolade() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1344); }
			float fUpgradeAssistTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1340); }
			float m_fMarker2DDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
			float DESTROY_ASSIST_PERCENTAGE() { return *cast(float*)(cast(size_t)cast(void*)this + 1320); }
			float REPAIR_ASSIST_PERCENTAGE() { return *cast(float*)(cast(size_t)cast(void*)this + 1316); }
			float m_fInstigatorNamePlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 1312); }
			float m_fObjectiveNamePlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 1308); }
			float m_fObjectiveHealthBarHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1304); }
			float m_fObjectiveHealthBarWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 1300); }
			float m_fObjectiveHealthBarPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 1296); }
			float m_fObjectiveHealthBarPlacementX() { return *cast(float*)(cast(size_t)cast(void*)this + 1292); }
			MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1288); }
			MaterialInstanceConstant m_HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1284); }
			float m_fRepairBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 1280); }
			ParticleSystem m_UpgradeTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1276); }
			int r_nUpgradeLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 1272); }
			int m_nPromptMessageSwitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1256); }
			float m_fPromptMessageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1252); }
			float m_fRemainingSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1248); }
			Rotator m_rPotentialSeekingTargetHUDRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1236); }
			float m_fRemainingPotentialSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1232); }
			TrObject.EMissileLock m_MissileLockStatus() { return *cast(TrObject.EMissileLock*)(cast(size_t)cast(void*)this + 1229); }
			ubyte r_bReset() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1228); }
			ParticleSystem DestroyedTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1220); }
			float m_fLifeAfterDeathSecs() { return *cast(float*)(cast(size_t)cast(void*)this + 1212); }
			Controller m_LastDamager() { return *cast(Controller*)(cast(size_t)cast(void*)this + 1208); }
			SoundCue m_ExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1192); }
			PhysicsAsset m_OfflinePhysicsAsset() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 1180); }
			PhysicsAsset m_OnlinePhysicsAsset() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 1176); }
			ScriptClass m_ExplosionLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1172); }
			ScriptString m_sScreenName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1160); }
			float m_fOuterExplosionShakeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1156); }
			float m_fInnerExplosionShakeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1152); }
			CameraAnim m_ExplosionShake() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 1148); }
			ParticleSystem m_ExplosionTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1144); }
			float m_fShieldHitRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1140); }
			float m_fShieldHitTargetTimeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1136); }
			float m_fShieldHitTargetScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1132); }
			MaterialInstanceConstant m_ShieldMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1128); }
			float ShowHeaderUntil() { return *cast(float*)(cast(size_t)cast(void*)this + 1124); }
			int MarkerOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 1120); }
			Texture2D m_ShieldNormalMap() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1116); }
			Material m_ShieldMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1112); }
			float m_fShieldHealthPercentage() { return *cast(float*)(cast(size_t)cast(void*)this + 1104); }
			int r_nRepairHealthThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 1100); }
			int m_nCriticalHealthThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 1096); }
			Vector r_vReplicatedHitInfo() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1084); }
			int m_nHealthRegenRate() { return *cast(int*)(cast(size_t)cast(void*)this + 1080); }
			int m_nLastHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 1076); }
			int r_MaxHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 1072); }
			int r_Health() { return *cast(int*)(cast(size_t)cast(void*)this + 1068); }
			MaterialInstanceConstant m_ObjectiveMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1064); }
			Vector CallInPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1044); }
			Rotator CallInRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1032); }
			TrStatsInterface Stats() { return *cast(TrStatsInterface*)(cast(size_t)cast(void*)this + 1028); }
		}
		bool m_bAlwaysRelevantToSameTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x8000) != 0; }
		bool m_bAlwaysRelevantToSameTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x8000; } return val; }
		bool m_bHurtByFriendlyFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x4000) != 0; }
		bool m_bHurtByFriendlyFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x4000; } return val; }
		bool m_bDestroyable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x2000) != 0; }
		bool m_bDestroyable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x2000; } return val; }
		bool m_bShowObjectivesForcesMarker() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x1000) != 0; }
		bool m_bShowObjectivesForcesMarker(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x1000; } return val; }
		bool m_bIsRepairable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x800) != 0; }
		bool m_bIsRepairable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x800; } return val; }
		bool m_bIsUpgradeable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x400) != 0; }
		bool m_bIsUpgradeable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x400; } return val; }
		bool m_bHasPromptText() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x200) != 0; }
		bool m_bHasPromptText(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x200; } return val; }
		bool r_bInDestroyedState() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x100) != 0; }
		bool r_bInDestroyedState(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x100; } return val; }
		bool m_bIsRepairableAfterDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x80) != 0; }
		bool m_bIsRepairableAfterDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x80; } return val; }
		bool m_bPostRenderForEnemy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x40) != 0; }
		bool m_bPostRenderForEnemy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x40; } return val; }
		bool m_bVisibilityRequiredForEnemy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x20) != 0; }
		bool m_bVisibilityRequiredForEnemy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x20; } return val; }
		bool m_bForceShowHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x10) != 0; }
		bool m_bForceShowHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x10; } return val; }
		bool m_bReceivesPowerFromGenerator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x8) != 0; }
		bool m_bReceivesPowerFromGenerator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x8; } return val; }
		bool r_bIsPowered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x4) != 0; }
		bool r_bIsPowered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x4; } return val; }
		bool m_bInstantOnlineSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x2) != 0; }
		bool m_bInstantOnlineSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x2; } return val; }
		bool m_bAutoPlayOnlineSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1184) & 0x1) != 0; }
		bool m_bAutoPlayOnlineSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1184) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1184) &= ~0x1; } return val; }
	}
final:
	bool IsEnemy(Actor Target)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	static bool IsInLOS_Basic(Pawn TouchedPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = TouchedPawn;
		StaticClass.ProcessEvent(Functions.IsInLOS_Basic, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyServerSettings, cast(void*)0, cast(void*)0);
	}
	ScriptString GetScreenName(PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScreenName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	float GetHealthAmount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHealthAmount, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetUpgradeCost(TrPlayerController TrPC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUpgradeCost, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool ShouldShowPromptText(Pawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowPromptText, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	bool Shootable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Shootable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RegenerateHealth()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegenerateHealth, cast(void*)0, cast(void*)0);
	}
	void DoRepairs(int HealAmount, Controller EventInstigator, Actor DamageCauser, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[44];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Actor*)&params[8] = DamageCauser;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[16] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoRepairs, params.ptr, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void ClientRecievedHitInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRecievedHitInfo, cast(void*)0, cast(void*)0);
	}
	void ClientPlayUpgradeEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayUpgradeEffect, cast(void*)0, cast(void*)0);
	}
	void PlayDestroyedEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDestroyedEffects, cast(void*)0, cast(void*)0);
	}
	void OnHealthChanged(bool wasDamage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = wasDamage;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnHealthChanged, params.ptr, cast(void*)0);
	}
	void PlayDamageHealthEffects(int DamageAmount, int HitBoneIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(int*)&params[4] = HitBoneIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDamageHealthEffects, params.ptr, cast(void*)0);
	}
	void PlayDamageShieldEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDamageShieldEffects, cast(void*)0, cast(void*)0);
	}
	void PlayExplosion()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayExplosion, cast(void*)0, cast(void*)0);
	}
	void SetPowered(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPowered, params.ptr, cast(void*)0);
	}
	void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPowerStatusChanged, cast(void*)0, cast(void*)0);
	}
	void HideMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideMesh, cast(void*)0, cast(void*)0);
	}
	bool ShouldPostRenderForCaH()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldPostRenderForCaH, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	bool GetPossessiveInstigatorName(ScriptString* PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPossessiveInstigatorName, params.ptr, cast(void*)0);
		*PlayerName = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool BlocksLineChecksFromSourceActor(Actor SourceActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = SourceActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.BlocksLineChecksFromSourceActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void SpawnHelpTextCollisionProxy(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnHelpTextCollisionProxy, params.ptr, cast(void*)0);
	}
	bool ShouldShowHelpText(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowHelpText, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ReceivesPowerFromGenerator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivesPowerFromGenerator, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool PerformUpgrade(TrPlayerController Purchaser)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = Purchaser;
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformUpgrade, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AddUpgrader(TrPlayerController Upgrader)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = Upgrader;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddUpgrader, params.ptr, cast(void*)0);
	}
	void AddDamageAssistance(TrPlayerController TrPC, int DamageAmount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		*cast(int*)&params[4] = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDamageAssistance, params.ptr, cast(void*)0);
	}
	void CheckRepairAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckRepairAssists, cast(void*)0, cast(void*)0);
	}
	void CheckDestroyAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDestroyAssists, cast(void*)0, cast(void*)0);
	}
	void ClearDamageAssistance(bool bOnlyDamagers)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bOnlyDamagers;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDamageAssistance, params.ptr, cast(void*)0);
	}
	void GiveDestroyAccolade(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveDestroyAccolade, params.ptr, cast(void*)0);
	}
	void GetSpectatorHealthInfo(int* Health, int* MaxHealth)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = *Health;
		*cast(int*)&params[4] = *MaxHealth;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorHealthInfo, params.ptr, cast(void*)0);
		*Health = *cast(int*)params.ptr;
		*MaxHealth = *cast(int*)&params[4];
	}
	ScriptString GetSpectatorDescription()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorDescription, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool IsAliveAndWell()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsAliveAndWell, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void InstantlyRegenerateHealth()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantlyRegenerateHealth, cast(void*)0, cast(void*)0);
	}
	void HideBasePlatform()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideBasePlatform, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	bool RequiresLOSForRepairDeployable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequiresLOSForRepairDeployable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void AwardKillAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardKillAssists, cast(void*)0, cast(void*)0);
	}
	void AwardUpgradeAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardUpgradeAssists, cast(void*)0, cast(void*)0);
	}
	void OnUpgradePerformed(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpgradePerformed, params.ptr, cast(void*)0);
	}
}
