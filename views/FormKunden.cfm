
<cfscript>
	if (isDefined("Form.btnSave")){
		strPw = Replace(Form.passwort, " ", "", "ALL");
		if(Len(strPw)){
			strPw = hash(strPw,"SHA");
		}

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
		kunde.passwort = strPw;
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
	else if (isDefined("Form.btnAdresse")){
		kundenObj = EntityLoad("Kunden",Form.kundennr,true);
		//Adresse anlegen
		ka = EntityNew("KundenAdresse");
		ka.setstrasse(Form.strasse);
		ka.setort(Form.ort);
		ka.setplz(Form.plz);
		ka.setkundennr(kundenObj);
		EntitySave(ka);
		ormFlush();
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