module UnrealScript.Engine.SeqCond_IncrementFloat;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IncrementFloat : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_IncrementFloat")); }
	private static __gshared SeqCond_IncrementFloat mDefaultProperties;
	@property final static SeqCond_IncrementFloat DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqCond_IncrementFloat)("SeqCond_IncrementFloat Engine.Default__SeqCond_IncrementFloat")); }
	@property final auto ref
	{
		float ValueB() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
		float ValueA() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
		float IncrementAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	}
}
