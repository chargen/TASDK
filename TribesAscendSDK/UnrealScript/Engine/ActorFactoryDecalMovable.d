module UnrealScript.Engine.ActorFactoryDecalMovable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryDecal;

extern(C++) interface ActorFactoryDecalMovable : ActorFactoryDecal
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryDecalMovable")); }
	private static __gshared ActorFactoryDecalMovable mDefaultProperties;
	@property final static ActorFactoryDecalMovable DefaultProperties() { mixin(MGDPC("ActorFactoryDecalMovable", "ActorFactoryDecalMovable Engine.Default__ActorFactoryDecalMovable")); }
}
