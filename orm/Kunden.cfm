<!--- <cfset kundenObj = EntityLoad("Kunden",{},"kundennr Asc")> --->
<cfif isDefined("url.id")>
	<cfset id = url.id>
<cfelse>
	<cfset id = 15>
</cfif>

<!--- <cfquery datasource="playground" name="getKunden"> --->
<!--- 	SELECT * from kunden WHERE kundennr = <cfqueryparam cfsqltype="numeric" value="#id#"> --->

<!--- </cfquery> --->
<!--- <cfdump var="#getKunden#"> --->
<!--- <cfabort> --->

<!--- <cfset kundenObj = EntityLoad("Kunden",id,false)> --->
<cfset kundenObj = EntityLoad("Kunden",{},"kundennr Asc")>
<cfoutput>



<cfloop array="#kundenObj#" index="kunde">
  #kunde.getkundennr()#..#kunde.getvorname()#..#kunde.getname()#<br>
	<cfset kaObj = kunde.getkundenadresse()>
	<cfloop array="#kaObj#" index="ka">
	  ----#ka.getstrasse()#..#ka.getplz()#&nbsp;#ka.getort()#<br>
	</cfloop>
</cfloop>
</cfoutput>

<!---

<cfscript>
kunde = StructNew();
//kunde.kundennr = 5;
kunde.anrede = "Herr";
kunde.firma = "xyz";
kunde.name = "Rinaldi";
kunde.titel = "Signore";
kunde.vorname = "Rolando";
kunde.email = "rin@aldi.ch";
kunde.passwort = hash('test', 'MD5', 'UTF-8');
kunde.kundeseit = Now();
insert = createObject("component", "dao.KundenDao").insert(kunde);
ka = EntityNew("KundenAdresse");
ka.setstrasse("die Strasse3");
ka.setort("der Ort3");
ka.setplz("PLZ3");
ka.setkundennr(insert);
EntitySave(ka);
ka2 = EntityNew("KundenAdresse");
ka2.setstrasse("die Strasse4");
ka2.setort("der Ort4");
ka2.setplz("PLZ4");
ka2.setkundennr(insert);
EntitySave(ka2);
ormflush();
</cfscript>



<cfscript>
KuindenNew = EntityNew("Kunden");
KuindenNew.setkundennr(1);
KuindenNew.setanrede("Herr");
KuindenNew.setfirma("chillgeo");
KuindenNew.setname("Muster");
KuindenNew.setvorname("Muster");
KuindenNew.setemail("emial@test.com");
KuindenNew.setpasswort("test");
KuindenNew.setkundeseit("12.12.2001");
EntitySave(KuindenNew);
</cfscript>
<cfscript>
	delete = createObject("component", "dao.KundenDao").delete(#kundenObj#);
</cfscript>

<cfset updateObj = EntityLoad("Kunden",2,true)>
<cfset updateObj.setpasswort(#hash('füdli', 'MD5', 'UTF-8')#)>
<cfset EntitySave(updateObj)>
--->