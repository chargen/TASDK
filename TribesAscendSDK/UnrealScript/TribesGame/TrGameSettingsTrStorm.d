module UnrealScript.TribesGame.TrGameSettingsTrStorm;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsCommon;

extern(C++) interface TrGameSettingsTrStorm : TrGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrStorm")); }
	private static __gshared TrGameSettingsTrStorm mDefaultProperties;
	@property final static TrGameSettingsTrStorm DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSettingsTrStorm)("TrGameSettingsTrStorm TribesGame.Default__TrGameSettingsTrStorm")); }
}
