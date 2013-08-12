module UnrealScript.Engine.DMC_Base;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface DMC_Base : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DMC_Base")); }
	private static __gshared DMC_Base mDefaultProperties;
	@property final static DMC_Base DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DMC_Base)("DMC_Base Engine.Default__DMC_Base")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPrintString;
			ScriptFunction mGetWorldTime;
			ScriptFunction mConv_IntToFloat;
			ScriptFunction mConv_FloatToString;
			ScriptFunction mConv_IntToString;
			ScriptFunction mConv_BoolToString;
			ScriptFunction mConv_VectorToString;
			ScriptFunction mConv_RotatorToString;
			ScriptFunction mMakeVector;
			ScriptFunction mBreakVector;
			ScriptFunction mMakeRot;
			ScriptFunction mBreakRot;
			ScriptFunction mAddComponent;
			ScriptFunction mDMCCreate;
			ScriptFunction mDMCTakeDamage;
			ScriptFunction mTakeDamage;
		}
		public @property static final
		{
			ScriptFunction PrintString() { return mPrintString ? mPrintString : (mPrintString = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.PrintString")); }
			ScriptFunction GetWorldTime() { return mGetWorldTime ? mGetWorldTime : (mGetWorldTime = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.GetWorldTime")); }
			ScriptFunction Conv_IntToFloat() { return mConv_IntToFloat ? mConv_IntToFloat : (mConv_IntToFloat = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.Conv_IntToFloat")); }
			ScriptFunction Conv_FloatToString() { return mConv_FloatToString ? mConv_FloatToString : (mConv_FloatToString = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.Conv_FloatToString")); }
			ScriptFunction Conv_IntToString() { return mConv_IntToString ? mConv_IntToString : (mConv_IntToString = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.Conv_IntToString")); }
			ScriptFunction Conv_BoolToString() { return mConv_BoolToString ? mConv_BoolToString : (mConv_BoolToString = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.Conv_BoolToString")); }
			ScriptFunction Conv_VectorToString() { return mConv_VectorToString ? mConv_VectorToString : (mConv_VectorToString = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.Conv_VectorToString")); }
			ScriptFunction Conv_RotatorToString() { return mConv_RotatorToString ? mConv_RotatorToString : (mConv_RotatorToString = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.Conv_RotatorToString")); }
			ScriptFunction MakeVector() { return mMakeVector ? mMakeVector : (mMakeVector = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.MakeVector")); }
			ScriptFunction BreakVector() { return mBreakVector ? mBreakVector : (mBreakVector = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.BreakVector")); }
			ScriptFunction MakeRot() { return mMakeRot ? mMakeRot : (mMakeRot = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.MakeRot")); }
			ScriptFunction BreakRot() { return mBreakRot ? mBreakRot : (mBreakRot = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.BreakRot")); }
			ScriptFunction AddComponent() { return mAddComponent ? mAddComponent : (mAddComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.AddComponent")); }
			ScriptFunction DMCCreate() { return mDMCCreate ? mDMCCreate : (mDMCCreate = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.DMCCreate")); }
			ScriptFunction DMCTakeDamage() { return mDMCTakeDamage ? mDMCTakeDamage : (mDMCTakeDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.DMCTakeDamage")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.DMC_Base.TakeDamage")); }
		}
	}
	@property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) CreatedComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 476); }
final:
	void PrintString(ScriptString InString)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InString;
		(cast(ScriptObject)this).ProcessEvent(Functions.PrintString, params.ptr, cast(void*)0);
	}
	float GetWorldTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWorldTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	static float Conv_IntToFloat(int InInt)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InInt;
		StaticClass.ProcessEvent(Functions.Conv_IntToFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static ScriptString Conv_FloatToString(float InFloat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InFloat;
		StaticClass.ProcessEvent(Functions.Conv_FloatToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static ScriptString Conv_IntToString(int InInt)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = InInt;
		StaticClass.ProcessEvent(Functions.Conv_IntToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static ScriptString Conv_BoolToString(bool InBool)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = InBool;
		StaticClass.ProcessEvent(Functions.Conv_BoolToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static ScriptString Conv_VectorToString(Vector InVec)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InVec;
		StaticClass.ProcessEvent(Functions.Conv_VectorToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	static ScriptString Conv_RotatorToString(Rotator InRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRot;
		StaticClass.ProcessEvent(Functions.Conv_RotatorToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	static Vector MakeVector(float X, float Y, float Z)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Z;
		StaticClass.ProcessEvent(Functions.MakeVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	static void BreakVector(Vector InVec, float* X, float* Y, float* Z)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = InVec;
		*cast(float*)&params[12] = *X;
		*cast(float*)&params[16] = *Y;
		*cast(float*)&params[20] = *Z;
		StaticClass.ProcessEvent(Functions.BreakVector, params.ptr, cast(void*)0);
		*X = *cast(float*)&params[12];
		*Y = *cast(float*)&params[16];
		*Z = *cast(float*)&params[20];
	}
	static Rotator MakeRot(float Pitch, float Yaw, float Roll)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = Pitch;
		*cast(float*)&params[4] = Yaw;
		*cast(float*)&params[8] = Roll;
		StaticClass.ProcessEvent(Functions.MakeRot, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	static void BreakRot(Rotator InRot, float* Pitch, float* Yaw, float* Roll)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = InRot;
		*cast(float*)&params[12] = *Pitch;
		*cast(float*)&params[16] = *Yaw;
		*cast(float*)&params[20] = *Roll;
		StaticClass.ProcessEvent(Functions.BreakRot, params.ptr, cast(void*)0);
		*Pitch = *cast(float*)&params[12];
		*Yaw = *cast(float*)&params[16];
		*Roll = *cast(float*)&params[20];
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AddComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* Template)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = Template;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	void DMCCreate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DMCCreate, cast(void*)0, cast(void*)0);
	}
	void DMCTakeDamage(int DamageAmount, Vector HitLocation, Vector Momentum)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(Functions.DMCTakeDamage, params.ptr, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
}
