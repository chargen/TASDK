module UnrealScript.TribesGame.TrDeployableHologram_BackupGenerator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_BackupGenerator : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployableHologram_BackupGenerator")); }
	private static __gshared TrDeployableHologram_BackupGenerator mDefaultProperties;
	@property final static TrDeployableHologram_BackupGenerator DefaultProperties() { mixin(MGDPC("TrDeployableHologram_BackupGenerator", "TrDeployableHologram_BackupGenerator TribesGame.Default__TrDeployableHologram_BackupGenerator")); }
}
