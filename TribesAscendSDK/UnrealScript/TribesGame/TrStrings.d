module UnrealScript.TribesGame.TrStrings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrStrings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrStrings")()); }
	private static __gshared TrStrings mDefaultProperties;
	@property final static TrStrings DefaultProperties() { mixin(MGDPC!(TrStrings, "TrStrings TribesGame.Default__TrStrings")()); }
	@property final auto ref
	{
		ScriptString KilledBy() { mixin(MGPC!("ScriptString", 4284)()); }
		ScriptString UsingWeapon() { mixin(MGPC!("ScriptString", 4296)()); }
		ScriptString UsingPerks() { mixin(MGPC!("ScriptString", 4308)()); }
		ScriptString Loading() { mixin(MGPC!("ScriptString", 60)()); }
		ScriptString Quit() { mixin(MGPC!("ScriptString", 72)()); }
		ScriptString Game() { mixin(MGPC!("ScriptString", 1176)()); }
		ScriptString QuitGameBody() { mixin(MGPC!("ScriptString", 84)()); }
		ScriptString BACK() { mixin(MGPC!("ScriptString", 96)()); }
		ScriptString Leave() { mixin(MGPC!("ScriptString", 108)()); }
		ScriptString Match() { mixin(MGPC!("ScriptString", 3180)()); }
		ScriptString LeaveMatchBody() { mixin(MGPC!("ScriptString", 120)()); }
		ScriptString Cancel() { mixin(MGPC!("ScriptString", 132)()); }
		ScriptString FailedToJoin() { mixin(MGPC!("ScriptString", 144)()); }
		ScriptString OK() { mixin(MGPC!("ScriptString", 156)()); }
		ScriptString EULAAgreement() { mixin(MGPC!("ScriptString", 4128)()); }
		ScriptString Accept() { mixin(MGPC!("ScriptString", 1752)()); }
		ScriptString Decline() { mixin(MGPC!("ScriptString", 3864)()); }
		ScriptString Status() { mixin(MGPC!("ScriptString", 192)()); }
		ScriptString Active() { mixin(MGPC!("ScriptString", 204)()); }
		ScriptString TrClass() { mixin(MGPC!("ScriptString", 216)()); }
		ScriptString NoBoost() { mixin(MGPC!("ScriptString", 228)()); }
		ScriptString OneDayleft() { mixin(MGPC!("ScriptString", 240)()); }
		ScriptString DaysLeft() { mixin(MGPC!("ScriptString", 252)()); }
		ScriptString TrHour() { mixin(MGPC!("ScriptString", 1188)()); }
		ScriptString Left() { mixin(MGPC!("ScriptString", 816)()); }
		ScriptString Unlocked() { mixin(MGPC!("ScriptString", 276)()); }
		ScriptString Acquired() { mixin(MGPC!("ScriptString", 288)()); }
		ScriptString Complete() { mixin(MGPC!("ScriptString", 300)()); }
		ScriptString VIP() { mixin(MGPC!("ScriptString", 804)()); }
		ScriptString TrServer() { mixin(MGPC!("ScriptString", 744)()); }
		ScriptString Time() { mixin(MGPC!("ScriptString", 792)()); }
		ScriptString Added() { mixin(MGPC!("ScriptString", 636)()); }
		ScriptString ClanTag() { mixin(MGPC!("ScriptString", 3996)()); }
		ScriptString Removed() { mixin(MGPC!("ScriptString", 4044)()); }
		ScriptString FWOTD() { mixin(MGPC!("ScriptString", 780)()); }
		ScriptString Redeemed() { mixin(MGPC!("ScriptString", 768)()); }
		ScriptString TrServers() { mixin(MGPC!("ScriptString", 756)()); }
		ScriptString Full() { mixin(MGPC!("ScriptString", 948)()); }
		ScriptString PleaseWait() { mixin(MGPC!("ScriptString", 936)()); }
		ScriptString Estimated() { mixin(MGPC!("ScriptString", 1020)()); }
		ScriptString Wait() { mixin(MGPC!("ScriptString", 1032)()); }
		ScriptString OverAnHour() { mixin(MGPC!("ScriptString", 1128)()); }
		ScriptString TrMinutes() { mixin(MGPC!("ScriptString", 1224)()); }
		ScriptString TrSeconds() { mixin(MGPC!("ScriptString", 1272)()); }
		ScriptString BecomeAVIP() { mixin(MGPC!("ScriptString", 1308)()); }
		ScriptString BecomeVIP() { mixin(MGPC!("ScriptString", 312)()); }
		ScriptString Visit() { mixin(MGPC!("ScriptString", 1080)()); }
		ScriptString Store() { mixin(MGPC!("ScriptString", 1092)()); }
		ScriptString LostConn() { mixin(MGPC!("ScriptString", 168)()); }
		ScriptString LostConnBody() { mixin(MGPC!("ScriptString", 180)()); }
		ScriptString YouWereKicked() { mixin(MGPC!("ScriptString", 732)()); }
		ScriptString YouWereKickedBody() { mixin(MGPC!("ScriptString", 324)()); }
		ScriptString Login() { mixin(MGPC!("ScriptString", 720)()); }
		ScriptString Failed() { mixin(MGPC!("ScriptString", 612)()); }
		ScriptString Purchasing() { mixin(MGPC!("ScriptString", 684)()); }
		ScriptString Item() { mixin(MGPC!("ScriptString", 696)()); }
		ScriptString Password() { mixin(MGPC!("ScriptString", 648)()); }
		ScriptString Required() { mixin(MGPC!("ScriptString", 660)()); }
		ScriptString ServerPasswordBody() { mixin(MGPC!("ScriptString", 672)()); }
		ScriptString Friend() { mixin(MGPC!("ScriptString", 624)()); }
		ScriptString YouAdded() { mixin(MGPC!("ScriptString", 924)()); }
		ScriptString AsAFriend() { mixin(MGPC!("ScriptString", 1008)()); }
		ScriptString Already() { mixin(MGPC!("ScriptString", 1104)()); }
		ScriptString Friends() { mixin(MGPC!("ScriptString", 1116)()); }
		ScriptString AlreadyFriendsBody() { mixin(MGPC!("ScriptString", 336)()); }
		ScriptString Transaction() { mixin(MGPC!("ScriptString", 600)()); }
		ScriptString NotEnough() { mixin(MGPC!("ScriptString", 888)()); }
		ScriptString Gold() { mixin(MGPC!("ScriptString", 900)()); }
		ScriptString NotEnoughGoldBody() { mixin(MGPC!("ScriptString", 996)()); }
		ScriptString XP() { mixin(MGPC!("ScriptString", 912)()); }
		ScriptString VIPMessage() { mixin(MGPC!("ScriptString", 360)()); }
		ScriptString BoostMessage() { mixin(MGPC!("ScriptString", 372)()); }
		ScriptString EarnMoreXP() { mixin(MGPC!("ScriptString", 384)()); }
		ScriptString CodeNotAccepted() { mixin(MGPC!("ScriptString", 588)()); }
		ScriptString Failure() { mixin(MGPC!("ScriptString", 576)()); }
		ScriptString NameAlreadyTaken() { mixin(MGPC!("ScriptString", 564)()); }
		ScriptString NameNotAllowed() { mixin(MGPC!("ScriptString", 876)()); }
		ScriptString EnterGamerName() { mixin(MGPC!("ScriptString", 984)()); }
		ScriptString Enter() { mixin(MGPC!("ScriptString", 1068)()); }
		ScriptString Welcome() { mixin(MGPC!("ScriptString", 3756)()); }
		ScriptString STEAMTransaction() { mixin(MGPC!("ScriptString", 3672)()); }
		ScriptString STEAMPendingTransaction() { mixin(MGPC!("ScriptString", 3684)()); }
		ScriptString STEAMCompletingTransaction() { mixin(MGPC!("ScriptString", 3708)()); }
		ScriptString STEAMDeclinedTransaction() { mixin(MGPC!("ScriptString", 3696)()); }
		ScriptString STEAMBadUserData() { mixin(MGPC!("ScriptString", 3720)()); }
		ScriptString Warning() { mixin(MGPC!("ScriptString", 4320)()); }
		ScriptString VideoWarning() { mixin(MGPC!("ScriptString", 4332)()); }
		ScriptString Convert() { mixin(MGPC!("ScriptString", 4356)()); }
		ScriptString ConvertPortalToGold() { mixin(MGPC!("ScriptString", 4368)()); }
		ScriptString Error() { mixin(MGPC!("ScriptString", 840)()); }
		ScriptString BackToGame() { mixin(MGPC!("ScriptString", 864)()); }
		ScriptString Teammate() { mixin(MGPC!("ScriptString", 852)()); }
		ScriptString Limit() { mixin(MGPC!("ScriptString", 960)()); }
		ScriptString Reached() { mixin(MGPC!("ScriptString", 972)()); }
		ScriptString TrClassBanned() { mixin(MGPC!("ScriptString", 432)()); }
		ScriptString Mastered() { mixin(MGPC!("ScriptString", 1056)()); }
		ScriptString Locked() { mixin(MGPC!("ScriptString", 1152)()); }
		ScriptString TrNew() { mixin(MGPC!("ScriptString", 828)()); }
		ScriptString Items() { mixin(MGPC!("ScriptString", 708)()); }
		ScriptString Unlock() { mixin(MGPC!("ScriptString", 1044)()); }
		ScriptString Available() { mixin(MGPC!("ScriptString", 1140)()); }
		ScriptString Upgrade() { mixin(MGPC!("ScriptString", 1296)()); }
		ScriptString Accolades() { mixin(MGPC!("ScriptString", 1320)()); }
		ScriptString Earned() { mixin(MGPC!("ScriptString", 1740)()); }
		ScriptString Page() { mixin(MGPC!("ScriptString", 1932)()); }
		ScriptString Category() { mixin(MGPC!("ScriptString", 2172)()); }
		ScriptString Enabled() { mixin(MGPC!("ScriptString", 1368)()); }
		ScriptString Disabled() { mixin(MGPC!("ScriptString", 1776)()); }
		ScriptString Off() { mixin(MGPC!("ScriptString", 1344)()); }
		ScriptString SetAudioLevel() { mixin(MGPC!("ScriptString", 1332)()); }
		ScriptString Badges() { mixin(MGPC!("ScriptString", 1392)()); }
		ScriptString Completed() { mixin(MGPC!("ScriptString", 1380)()); }
		ScriptString NotEarned() { mixin(MGPC!("ScriptString", 1788)()); }
		ScriptString Buy() { mixin(MGPC!("ScriptString", 1428)()); }
		ScriptString BundlePack() { mixin(MGPC!("ScriptString", 1416)()); }
		ScriptString Bundle() { mixin(MGPC!("ScriptString", 1800)()); }
		ScriptString Requires() { mixin(MGPC!("ScriptString", 1404)()); }
		ScriptString AllItemsOwned() { mixin(MGPC!("ScriptString", 2196)()); }
		ScriptString BundleRequiresBody() { mixin(MGPC!("ScriptString", 396)()); }
		ScriptString VisitClassPage() { mixin(MGPC!("ScriptString", 3612)()); }
		ScriptString Owned() { mixin(MGPC!("ScriptString", 1968)()); }
		ScriptString BundleOwnedBody() { mixin(MGPC!("ScriptString", 408)()); }
		ScriptString Purchase() { mixin(MGPC!("ScriptString", 1812)()); }
		ScriptString TrFor() { mixin(MGPC!("ScriptString", 2184)()); }
		ScriptString Or() { mixin(MGPC!("ScriptString", 1464)()); }
		ScriptString Remove() { mixin(MGPC!("ScriptString", 1440)()); }
		ScriptString Map() { mixin(MGPC!("ScriptString", 1824)()); }
		ScriptString SelectTo() { mixin(MGPC!("ScriptString", 2208)()); }
		ScriptString AddClanTag() { mixin(MGPC!("ScriptString", 4020)()); }
		ScriptString Use() { mixin(MGPC!("ScriptString", 1896)()); }
		ScriptString Confirm() { mixin(MGPC!("ScriptString", 2472)()); }
		ScriptString ChangeClanTagTo() { mixin(MGPC!("ScriptString", 3984)()); }
		ScriptString RenameLoadout() { mixin(MGPC!("ScriptString", 4104)()); }
		ScriptString SelectToRenameThisLoadout() { mixin(MGPC!("ScriptString", 4116)()); }
		ScriptString Loadout() { mixin(MGPC!("ScriptString", 1452)()); }
		ScriptString Primary() { mixin(MGPC!("ScriptString", 1836)()); }
		ScriptString Secondary() { mixin(MGPC!("ScriptString", 1848)()); }
		ScriptString Belt() { mixin(MGPC!("ScriptString", 1860)()); }
		ScriptString Pack() { mixin(MGPC!("ScriptString", 1872)()); }
		ScriptString Perk() { mixin(MGPC!("ScriptString", 1884)()); }
		ScriptString NoInfoFound() { mixin(MGPC!("ScriptString", 1476)()); }
		ScriptString AreYouSureYouWantTo() { mixin(MGPC!("ScriptString", 2220)()); }
		ScriptString SpawnLimitReached() { mixin(MGPC!("ScriptString", 420)()); }
		ScriptString Denied() { mixin(MGPC!("ScriptString", 1488)()); }
		ScriptString No() { mixin(MGPC!("ScriptString", 2928)()); }
		ScriptString Videos() { mixin(MGPC!("ScriptString", 3528)()); }
		ScriptString Viewers() { mixin(MGPC!("ScriptString", 3588)()); }
		ScriptString Video() { mixin(MGPC!("ScriptString", 3516)()); }
		ScriptString Change() { mixin(MGPC!("ScriptString", 1512)()); }
		ScriptString FOV() { mixin(MGPC!("ScriptString", 1908)()); }
		ScriptString Sensitivity() { mixin(MGPC!("ScriptString", 2232)()); }
		ScriptString JoiningServer() { mixin(MGPC!("ScriptString", 1548)()); }
		ScriptString AttemptingToJoin() { mixin(MGPC!("ScriptString", 1944)()); }
		ScriptString SetMapName() { mixin(MGPC!("ScriptString", 2256)()); }
		ScriptString Filter() { mixin(MGPC!("ScriptString", 2508)()); }
		ScriptString Set() { mixin(MGPC!("ScriptString", 1680)()); }
		ScriptString TrName() { mixin(MGPC!("ScriptString", 2400)()); }
		ScriptString CustomServerBrowser() { mixin(MGPC!("ScriptString", 1536)()); }
		ScriptString FavoriteInitial() { mixin(MGPC!("ScriptString", 2244)()); }
		ScriptString PasswordInitial() { mixin(MGPC!("ScriptString", 2496)()); }
		ScriptString Slots() { mixin(MGPC!("ScriptString", 2676)()); }
		ScriptString Ping() { mixin(MGPC!("ScriptString", 2892)()); }
		ScriptString Type() { mixin(MGPC!("ScriptString", 3048)()); }
		ScriptString Rules() { mixin(MGPC!("ScriptString", 3108)()); }
		ScriptString Lvl() { mixin(MGPC!("ScriptString", 1608)()); }
		ScriptString All() { mixin(MGPC!("ScriptString", 1524)()); }
		ScriptString MeAndFriends() { mixin(MGPC!("ScriptString", 1920)()); }
		ScriptString CustomReticule() { mixin(MGPC!("ScriptString", 3744)()); }
		ScriptString Base() { mixin(MGPC!("ScriptString", 1980)()); }
		ScriptString Upgrades() { mixin(MGPC!("ScriptString", 1584)()); }
		ScriptString UpgradeDesc() { mixin(MGPC!("ScriptString", 1596)()); }
		ScriptString Mastery() { mixin(MGPC!("ScriptString", 3660)()); }
		ScriptString Ratings() { mixin(MGPC!("ScriptString", 1572)()); }
		ScriptString Damage() { mixin(MGPC!("ScriptString", 1956)()); }
		ScriptString FireRate() { mixin(MGPC!("ScriptString", 2520)()); }
		ScriptString Radius() { mixin(MGPC!("ScriptString", 2268)()); }
		ScriptString Range() { mixin(MGPC!("ScriptString", 3624)()); }
		ScriptString ClipSize() { mixin(MGPC!("ScriptString", 2688)()); }
		ScriptString Ammo() { mixin(MGPC!("ScriptString", 3636)()); }
		ScriptString AreYouSureYouWantToUnlockAllUpgradesForXX() { mixin(MGPC!("ScriptString", 3648)()); }
		ScriptString EnterCode() { mixin(MGPC!("ScriptString", 1632)()); }
		ScriptString CodeAccepted() { mixin(MGPC!("ScriptString", 1620)()); }
		ScriptString Message() { mixin(MGPC!("ScriptString", 1560)()); }
		ScriptString Offline() { mixin(MGPC!("ScriptString", 1992)()); }
		ScriptString Team() { mixin(MGPC!("ScriptString", 1644)()); }
		ScriptString Select() { mixin(MGPC!("ScriptString", 2016)()); }
		ScriptString ChooseYourTeam() { mixin(MGPC!("ScriptString", 2280)()); }
		ScriptString ToSpawn() { mixin(MGPC!("ScriptString", 2700)()); }
		ScriptString Unlocks() { mixin(MGPC!("ScriptString", 2292)()); }
		ScriptString Modify() { mixin(MGPC!("ScriptString", 1500)()); }
		ScriptString TrClasses() { mixin(MGPC!("ScriptString", 2040)()); }
		ScriptString Online() { mixin(MGPC!("ScriptString", 2004)()); }
		ScriptString Follower() { mixin(MGPC!("ScriptString", 2544)()); }
		ScriptString Followers() { mixin(MGPC!("ScriptString", 2712)()); }
		ScriptString Shown() { mixin(MGPC!("ScriptString", 1656)()); }
		ScriptString Hidden() { mixin(MGPC!("ScriptString", 2028)()); }
		ScriptString Visible() { mixin(MGPC!("ScriptString", 1668)()); }
		ScriptString ChangeBindingBody() { mixin(MGPC!("ScriptString", 444)()); }
		ScriptString ResetAllToDefault() { mixin(MGPC!("ScriptString", 4092)()); }
		ScriptString Streams() { mixin(MGPC!("ScriptString", 3552)()); }
		ScriptString Not() { mixin(MGPC!("ScriptString", 2736)()); }
		ScriptString CreateParty() { mixin(MGPC!("ScriptString", 3780)()); }
		ScriptString LearnMore() { mixin(MGPC!("ScriptString", 4140)()); }
		ScriptString Your() { mixin(MGPC!("ScriptString", 3492)()); }
		ScriptString DealoftheDay() { mixin(MGPC!("ScriptString", 3504)()); }
		ScriptString TrHours() { mixin(MGPC!("ScriptString", 1200)()); }
		ScriptString TrMinute() { mixin(MGPC!("ScriptString", 1212)()); }
		ScriptString TrSecond() { mixin(MGPC!("ScriptString", 1260)()); }
		ScriptString Recommended() { mixin(MGPC!("ScriptString", 2448)()); }
		ScriptString ClanTags() { mixin(MGPC!("ScriptString", 4008)()); }
		ScriptString Party() { mixin(MGPC!("ScriptString", 3768)()); }
		ScriptString Queue() { mixin(MGPC!("ScriptString", 2904)()); }
		ScriptString SearchingForAMatch() { mixin(MGPC!("ScriptString", 3060)()); }
		ScriptString SelectToManage() { mixin(MGPC!("ScriptString", 2304)()); }
		ScriptString CreateNewServer() { mixin(MGPC!("ScriptString", 1704)()); }
		ScriptString CreateNewServerBody() { mixin(MGPC!("ScriptString", 456)()); }
		ScriptString SelectToAddMap() { mixin(MGPC!("ScriptString", 1716)()); }
		ScriptString ChangeNameTo() { mixin(MGPC!("ScriptString", 2640)()); }
		ScriptString InGame() { mixin(MGPC!("ScriptString", 3960)()); }
		ScriptString InQueue() { mixin(MGPC!("ScriptString", 2916)()); }
		ScriptString LeaderOnly() { mixin(MGPC!("ScriptString", 3876)()); }
		ScriptString Add() { mixin(MGPC!("ScriptString", 2124)()); }
		ScriptString SendMessage() { mixin(MGPC!("ScriptString", 3792)()); }
		ScriptString KickFromParty() { mixin(MGPC!("ScriptString", 3804)()); }
		ScriptString AddedNewFriend() { mixin(MGPC!("ScriptString", 3948)()); }
		ScriptString InviteByName() { mixin(MGPC!("ScriptString", 3912)()); }
		ScriptString InviteSent() { mixin(MGPC!("ScriptString", 3924)()); }
		ScriptString InvitationSentTo() { mixin(MGPC!("ScriptString", 3816)()); }
		ScriptString InviteFailed() { mixin(MGPC!("ScriptString", 3936)()); }
		ScriptString CouldNotFindPlayer() { mixin(MGPC!("ScriptString", 3828)()); }
		ScriptString PendingInvite() { mixin(MGPC!("ScriptString", 3888)()); }
		ScriptString Actions() { mixin(MGPC!("ScriptString", 3900)()); }
		ScriptString FlagsMoveEveryCap() { mixin(MGPC!("ScriptString", 4056)()); }
		ScriptString Featured() { mixin(MGPC!("ScriptString", 3564)()); }
		ScriptString AvailableAtLevel() { mixin(MGPC!("ScriptString", 1728)()); }
		// WARNING: Property 'Player' has the same name as a defined type!
		ScriptString Overview() { mixin(MGPC!("ScriptString", 2076)()); }
		// WARNING: Property 'Level' has the same name as a defined type!
		ScriptString Account() { mixin(MGPC!("ScriptString", 2556)()); }
		ScriptString Boosted() { mixin(MGPC!("ScriptString", 2940)()); }
		ScriptString TrClassUsage() { mixin(MGPC!("ScriptString", 3120)()); }
		ScriptString Most() { mixin(MGPC!("ScriptString", 3156)()); }
		ScriptString Played() { mixin(MGPC!("ScriptString", 2724)()); }
		ScriptString Stats() { mixin(MGPC!("ScriptString", 3168)()); }
		ScriptString Matches() { mixin(MGPC!("ScriptString", 3192)()); }
		ScriptString Score() { mixin(MGPC!("ScriptString", 2808)()); }
		ScriptString Total() { mixin(MGPC!("ScriptString", 2772)()); }
		ScriptString PerHour() { mixin(MGPC!("ScriptString", 3204)()); }
		ScriptString Won() { mixin(MGPC!("ScriptString", 3216)()); }
		ScriptString Lost() { mixin(MGPC!("ScriptString", 3240)()); }
		ScriptString Win() { mixin(MGPC!("ScriptString", 3228)()); }
		ScriptString Loss() { mixin(MGPC!("ScriptString", 3252)()); }
		ScriptString Combat() { mixin(MGPC!("ScriptString", 3264)()); }
		ScriptString Kills() { mixin(MGPC!("ScriptString", 3276)()); }
		ScriptString Assists() { mixin(MGPC!("ScriptString", 3288)()); }
		ScriptString Midairs() { mixin(MGPC!("ScriptString", 3300)()); }
		ScriptString FastestSki() { mixin(MGPC!("ScriptString", 3312)()); }
		ScriptString Objective() { mixin(MGPC!("ScriptString", 3324)()); }
		ScriptString Flag() { mixin(MGPC!("ScriptString", 3336)()); }
		ScriptString Defense() { mixin(MGPC!("ScriptString", 3348)()); }
		ScriptString Caps() { mixin(MGPC!("ScriptString", 3360)()); }
		ScriptString Gens() { mixin(MGPC!("ScriptString", 3372)()); }
		ScriptString Destroyed() { mixin(MGPC!("ScriptString", 3396)()); }
		ScriptString DestroyedAbb() { mixin(MGPC!("ScriptString", 3408)()); }
		ScriptString Objs() { mixin(MGPC!("ScriptString", 3384)()); }
		ScriptString MostRecentAwards() { mixin(MGPC!("ScriptString", 3420)()); }
		ScriptString TrNone() { mixin(MGPC!("ScriptString", 2064)()); }
		ScriptString TrSecondsAbb() { mixin(MGPC!("ScriptString", 1284)()); }
		ScriptString TrMinutesAbb() { mixin(MGPC!("ScriptString", 1236)()); }
		ScriptString TrHoursInitial() { mixin(MGPC!("ScriptString", 2052)()); }
		ScriptString TrMinutesInitial() { mixin(MGPC!("ScriptString", 1248)()); }
		ScriptString Join() { mixin(MGPC!("ScriptString", 2100)()); }
		ScriptString TeamDeathmatch() { mixin(MGPC!("ScriptString", 2328)()); }
		ScriptString CaptureTheFlag() { mixin(MGPC!("ScriptString", 2568)()); }
		ScriptString Rabbit() { mixin(MGPC!("ScriptString", 2748)()); }
		ScriptString Arena() { mixin(MGPC!("ScriptString", 2952)()); }
		ScriptString Enable() { mixin(MGPC!("ScriptString", 1356)()); }
		ScriptString EnableServerBody() { mixin(MGPC!("ScriptString", 468)()); }
		ScriptString ServerExpiredBody() { mixin(MGPC!("ScriptString", 480)()); }
		ScriptString Disable() { mixin(MGPC!("ScriptString", 1764)()); }
		ScriptString DisableServerBody() { mixin(MGPC!("ScriptString", 492)()); }
		ScriptString Kill() { mixin(MGPC!("ScriptString", 2112)()); }
		ScriptString KillServerBody() { mixin(MGPC!("ScriptString", 504)()); }
		ScriptString GoToNextMap() { mixin(MGPC!("ScriptString", 2340)()); }
		ScriptString GoToNextMapBody() { mixin(MGPC!("ScriptString", 516)()); }
		ScriptString Kick() { mixin(MGPC!("ScriptString", 2580)()); }
		ScriptString KickPlayerBody() { mixin(MGPC!("ScriptString", 528)()); }
		ScriptString Ban() { mixin(MGPC!("ScriptString", 2760)()); }
		ScriptString BanPlayerBody() { mixin(MGPC!("ScriptString", 540)()); }
		ScriptString AddRentalTimeToThisServer() { mixin(MGPC!("ScriptString", 2136)()); }
		ScriptString Edit() { mixin(MGPC!("ScriptString", 1692)()); }
		ScriptString Banned() { mixin(MGPC!("ScriptString", 2160)()); }
		ScriptString Only() { mixin(MGPC!("ScriptString", 2364)()); }
		ScriptString OutOfBounds() { mixin(MGPC!("ScriptString", 2148)()); }
		ScriptString ValueMustBeWithin() { mixin(MGPC!("ScriptString", 2352)()); }
		ScriptString And() { mixin(MGPC!("ScriptString", 2592)()); }
		ScriptString Allowed() { mixin(MGPC!("ScriptString", 2964)()); }
		ScriptString Free() { mixin(MGPC!("ScriptString", 2376)()); }
		ScriptString Credits() { mixin(MGPC!("ScriptString", 2460)()); }
		ScriptString Price() { mixin(MGPC!("ScriptString", 2784)()); }
		ScriptString Cooldown() { mixin(MGPC!("ScriptString", 2976)()); }
		ScriptString Buildup() { mixin(MGPC!("ScriptString", 3072)()); }
		ScriptString Value() { mixin(MGPC!("ScriptString", 2796)()); }
		ScriptString KPH() { mixin(MGPC!("ScriptString", 4344)()); }
		ScriptString ToWin() { mixin(MGPC!("ScriptString", 2988)()); }
		ScriptString TrLocal() { mixin(MGPC!("ScriptString", 2388)()); }
		ScriptString Display() { mixin(MGPC!("ScriptString", 2820)()); }
		ScriptString Description() { mixin(MGPC!("ScriptString", 3000)()); }
		// WARNING: Property 'Admin' has the same name as a defined type!
		ScriptString TrPublic() { mixin(MGPC!("ScriptString", 3132)()); }
		ScriptString TrDefault() { mixin(MGPC!("ScriptString", 2604)()); }
		ScriptString Max() { mixin(MGPC!("ScriptString", 3732)()); }
		ScriptString Players() { mixin(MGPC!("ScriptString", 2412)()); }
		ScriptString BaseDestReq() { mixin(MGPC!("ScriptString", 2844)()); }
		ScriptString Balanced() { mixin(MGPC!("ScriptString", 2616)()); }
		ScriptString Unbalanced() { mixin(MGPC!("ScriptString", 2832)()); }
		ScriptString AutoAssign() { mixin(MGPC!("ScriptString", 3012)()); }
		ScriptString Warmup() { mixin(MGPC!("ScriptString", 2856)()); }
		ScriptString Gametime() { mixin(MGPC!("ScriptString", 3024)()); }
		ScriptString Overtime() { mixin(MGPC!("ScriptString", 3096)()); }
		ScriptString Respawn() { mixin(MGPC!("ScriptString", 3144)()); }
		ScriptString Health() { mixin(MGPC!("ScriptString", 2868)()); }
		ScriptString Multiplier() { mixin(MGPC!("ScriptString", 3036)()); }
		ScriptString PerTeam() { mixin(MGPC!("ScriptString", 2424)()); }
		ScriptString Bundles() { mixin(MGPC!("ScriptString", 2436)()); }
		ScriptString Of() { mixin(MGPC!("ScriptString", 2628)()); }
		ScriptString Resolution() { mixin(MGPC!("ScriptString", 2652)()); }
		ScriptString ResolutionChangeBody() { mixin(MGPC!("ScriptString", 552)()); }
		ScriptString Revert() { mixin(MGPC!("ScriptString", 2880)()); }
		ScriptString Resolutions() { mixin(MGPC!("ScriptString", 2484)()); }
		ScriptString Other() { mixin(MGPC!("ScriptString", 2664)()); }
		ScriptString ComingSoon() { mixin(MGPC!("ScriptString", 3600)()); }
		ScriptString Stream() { mixin(MGPC!("ScriptString", 3540)()); }
		ScriptString Spectate() { mixin(MGPC!("ScriptString", 4272)()); }
		ScriptString FireToSpectate() { mixin(MGPC!("ScriptString", 4200)()); }
		ScriptString FireToRespawn() { mixin(MGPC!("ScriptString", 4212)()); }
		ScriptString OutOfRespawns() { mixin(MGPC!("ScriptString", 4224)()); }
		ScriptString OutOfTeamRespawns() { mixin(MGPC!("ScriptString", 4236)()); }
		ScriptString TimeUntilRespawn() { mixin(MGPC!("ScriptString", 4248)()); }
		ScriptString Testing() { mixin(MGPC!("ScriptString", 4068)()); }
		ScriptString SpawningAs() { mixin(MGPC!("ScriptString", 4080)()); }
		ScriptString Pending() { mixin(MGPC!("ScriptString", 3444)()); }
		ScriptString TeamScoreBoard() { mixin(MGPC!("ScriptString", 4260)()); }
		ScriptString NextMap() { mixin(MGPC!("ScriptString", 4152)()); }
		ScriptString GameType() { mixin(MGPC!("ScriptString", 4164)()); }
		ScriptString GameRules() { mixin(MGPC!("ScriptString", 4176)()); }
		ScriptString GameTip() { mixin(MGPC!("ScriptString", 4188)()); }
		ScriptString LoggingIn() { mixin(MGPC!("ScriptString", 3432)()); }
		ScriptString PartyInvite() { mixin(MGPC!("ScriptString", 3840)()); }
		ScriptString InvitesYouToJoinAParty() { mixin(MGPC!("ScriptString", 3852)()); }
		ScriptString Block() { mixin(MGPC!("ScriptString", 3972)()); }
		ScriptString ChangeClanTag() { mixin(MGPC!("ScriptString", 4032)()); }
		ScriptString SelectToGoBack() { mixin(MGPC!("ScriptString", 3576)()); }
		ScriptString NewBundleDescription() { mixin(MGPC!("ScriptString", 3480)()); }
		ScriptString NewBundleTitle() { mixin(MGPC!("ScriptString", 3468)()); }
		ScriptString CustomServer() { mixin(MGPC!("ScriptString", 3456)()); }
		ScriptString TrSpawn() { mixin(MGPC!("ScriptString", 2532)()); }
		ScriptString Exit() { mixin(MGPC!("ScriptString", 1164)()); }
		ScriptString NotEnoguhGoldBody() { mixin(MGPC!("ScriptString", 348)()); }
		ScriptString HoursLeft() { mixin(MGPC!("ScriptString", 264)()); }
	}
}
