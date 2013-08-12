module UnrealScript.TribesGame.TrCheatManager;

import ScriptClasses;
import UnrealScript.Engine.Weapon;
import UnrealScript.UTGame.UTCheatManager;

extern(C++) interface TrCheatManager : UTCheatManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCheatManager")); }
	private static __gshared TrCheatManager mDefaultProperties;
	@property final static TrCheatManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCheatManager)("TrCheatManager TribesGame.Default__TrCheatManager")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGiveWeapon;
		public @property static final ScriptFunction GiveWeapon() { return mGiveWeapon ? mGiveWeapon : (mGiveWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCheatManager.GiveWeapon")); }
	}
	final Weapon GiveWeapon(ScriptString WeaponClassStr)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = WeaponClassStr;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveWeapon, params.ptr, cast(void*)0);
		return *cast(Weapon*)&params[12];
	}
}
