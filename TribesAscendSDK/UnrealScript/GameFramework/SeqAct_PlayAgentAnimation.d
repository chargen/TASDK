module UnrealScript.GameFramework.SeqAct_PlayAgentAnimation;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdAgentSkeletal;

extern(C++) interface SeqAct_PlayAgentAnimation : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqAct_PlayAgentAnimation")); }
	private static __gshared SeqAct_PlayAgentAnimation mDefaultProperties;
	@property final static SeqAct_PlayAgentAnimation DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_PlayAgentAnimation)("SeqAct_PlayAgentAnimation GameFramework.Default__SeqAct_PlayAgentAnimation")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjClassVersion;
			ScriptFunction mSetCurrentAnimationActionFor;
		}
		public @property static final
		{
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function GameFramework.SeqAct_PlayAgentAnimation.GetObjClassVersion")); }
			ScriptFunction SetCurrentAnimationActionFor() { return mSetCurrentAnimationActionFor ? mSetCurrentAnimationActionFor : (mSetCurrentAnimationActionFor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.SeqAct_PlayAgentAnimation.SetCurrentAnimationActionFor")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) AnimationList() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 248); }
			Actor ActionTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 280); }
			float LoopTime() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			int LoopIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 272); }
			float BlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			float BlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		}
		bool bBlendBetweenAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x8) != 0; }
		bool bBlendBetweenAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x8; } return val; }
		bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x4) != 0; }
		bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x4; } return val; }
		bool bFaceActionTargetFirst() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x2) != 0; }
		bool bFaceActionTargetFirst(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x2; } return val; }
		bool bUseRootMotion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
		bool bUseRootMotion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	}
final:
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void SetCurrentAnimationActionFor(GameCrowdAgentSkeletal Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgentSkeletal*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentAnimationActionFor, params.ptr, cast(void*)0);
	}
}
