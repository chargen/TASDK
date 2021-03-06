module UnrealScript.TribesGame.GFxTrPage_ServerPlayer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ServerPlayer : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_ServerPlayer")); }
	private static __gshared GFxTrPage_ServerPlayer mDefaultProperties;
	@property final static GFxTrPage_ServerPlayer DefaultProperties() { mixin(MGDPC("GFxTrPage_ServerPlayer", "GFxTrPage_ServerPlayer TribesGame.Default__GFxTrPage_ServerPlayer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mShowBoundsError;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mSetSubTitle;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_ServerPlayer.Initialize")); }
			ScriptFunction SpecialAction() { mixin(MGF("mSpecialAction", "Function TribesGame.GFxTrPage_ServerPlayer.SpecialAction")); }
			ScriptFunction PopupData() { mixin(MGF("mPopupData", "Function TribesGame.GFxTrPage_ServerPlayer.PopupData")); }
			ScriptFunction PopupComplete() { mixin(MGF("mPopupComplete", "Function TribesGame.GFxTrPage_ServerPlayer.PopupComplete")); }
			ScriptFunction ShowBoundsError() { mixin(MGF("mShowBoundsError", "Function TribesGame.GFxTrPage_ServerPlayer.ShowBoundsError")); }
			ScriptFunction FillData() { mixin(MGF("mFillData", "Function TribesGame.GFxTrPage_ServerPlayer.FillData")); }
			ScriptFunction FillOption() { mixin(MGF("mFillOption", "Function TribesGame.GFxTrPage_ServerPlayer.FillOption")); }
			ScriptFunction SetSubTitle() { mixin(MGF("mSetSubTitle", "Function TribesGame.GFxTrPage_ServerPlayer.SetSubTitle")); }
			ScriptFunction CheckDescription() { mixin(MGF("mCheckDescription", "Function TribesGame.GFxTrPage_ServerPlayer.CheckDescription")); }
			ScriptFunction FillDescription() { mixin(MGF("mFillDescription", "Function TribesGame.GFxTrPage_ServerPlayer.FillDescription")); }
			ScriptFunction ShowModel() { mixin(MGF("mShowModel", "Function TribesGame.GFxTrPage_ServerPlayer.ShowModel")); }
		}
	}
	@property final
	{
		auto ref
		{
			int MaxBOunds() { mixin(MGPC("int", 364)); }
			int MinBounds() { mixin(MGPC("int", 360)); }
			int PopupNum() { mixin(MGPC("int", 356)); }
		}
		bool bBoundsPopup() { mixin(MGBPC(368, 0x1)); }
		bool bBoundsPopup(bool val) { mixin(MSBPC(368, 0x1)); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupData, params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupComplete, params.ptr, cast(void*)0);
	}
	void ShowBoundsError(int PropId, int PropType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowBoundsError, params.ptr, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void SetSubTitle(float val, GFxObject Obj)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = val;
		*cast(GFxObject*)&params[4] = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSubTitle, params.ptr, cast(void*)0);
	}
	void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDescription, params.ptr, cast(void*)0);
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillDescription, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
