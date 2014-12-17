<cfscript>
component name="Employee"
{
 public Employee function Init(){
  var metadata = getComponentMetaData("Employee");

  if(!structKeyExists(metadata,"myStaticVar")){

   lock name="metadata.myStaticVar" timeout="10"{
    metadata.myStaticVar = "Hello Static Variable.";
   }
  }

  return this;
 }
}
</cfscript>