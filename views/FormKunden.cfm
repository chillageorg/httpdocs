<cfscript>
	if (isDefined("Form.btnSave")){

		kunde = StructNew();
		if (isDefined("Form.kundennr") && Len(Trim(Form.kundennr))){
			kunde.kundennr = Form.kundennr;
			}
		kunde.anrede = Form.anrede;
		kunde.firma = Form.firma;
		kunde.titel = Form.titel;
		kunde.name = Form.name;
		kunde.vorname = Form.vorname;
		kunde.email = Form.email;
		kunde.passwort = Form.passwort;
		if (isDefined("Form.kundeseit") && Len(Trim(Form.kundeseit))){
			kunde.kundeseit = Form.kundeseit;
		}
		else{
			kunde.kundeseit = Now();
		}


		insert = createObject("component", "dao.KundenDao").insert(#kunde#);
		//WriteDump("#insert.getkundennr()#");
	}
	else if (isDefined("Form.btnDelete")){
		kundenObj = EntityLoad("Kunden",Form.kundennr,true);
		delete = createObject("component", "dao.KundenDao").delete(#kundenObj#);

	}
</cfscript>
<cfif isDefined("url.kundennr")>
	<cfset kndNr = url.kundennr>
<cfelseif isDefined("insert")>
	<cfset kndNr = insert.getkundennr()>
<cfelse>
	<cfset kndNr = 0>
</cfif>

<cfset Kunde = EntityLoad("Kunden",kndNr,true)>
<cfif structKeyExists(variables,"Kunde")>
	<cfinclude template="incl/inclFormKunden.cfm">
<cfelse>
	<cfinclude template="incl/inclFormKundenNew.cfm">
</cfif>