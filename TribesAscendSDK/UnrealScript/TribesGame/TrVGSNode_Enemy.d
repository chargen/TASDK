module UnrealScript.TribesGame.TrVGSNode_Enemy;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Enemy : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Enemy")); }
	private static __gshared TrVGSNode_Enemy mDefaultProperties;
	@property final static TrVGSNode_Enemy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Enemy)("TrVGSNode_Enemy TribesGame.Default__TrVGSNode_Enemy")); }
}
