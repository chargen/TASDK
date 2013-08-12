module UnrealScript.UnrealEd.ObjectExporterT3D;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface ObjectExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ObjectExporterT3D")); }
	private static __gshared ObjectExporterT3D mDefaultProperties;
	@property final static ObjectExporterT3D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ObjectExporterT3D)("ObjectExporterT3D UnrealEd.Default__ObjectExporterT3D")); }
}
