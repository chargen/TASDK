module UnrealScript.UnrealEd.FindDuplicateKismetObjectsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindDuplicateKismetObjectsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindDuplicateKismetObjectsCommandlet")); }
	private static __gshared FindDuplicateKismetObjectsCommandlet mDefaultProperties;
	@property final static FindDuplicateKismetObjectsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindDuplicateKismetObjectsCommandlet)("FindDuplicateKismetObjectsCommandlet UnrealEd.Default__FindDuplicateKismetObjectsCommandlet")); }
}
