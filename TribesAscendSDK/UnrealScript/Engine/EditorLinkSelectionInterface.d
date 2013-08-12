module UnrealScript.Engine.EditorLinkSelectionInterface;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface EditorLinkSelectionInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.EditorLinkSelectionInterface")); }
	private static __gshared EditorLinkSelectionInterface mDefaultProperties;
	@property final static EditorLinkSelectionInterface DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(EditorLinkSelectionInterface)("EditorLinkSelectionInterface Engine.Default__EditorLinkSelectionInterface")); }
}
