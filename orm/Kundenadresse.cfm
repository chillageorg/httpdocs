<!--- <cfset kundenObj = EntityLoad("Kunden",{},"kundennr Asc")> --->
<cfif isDefined("url.id")>
	<cfset id = url.id>
<cfelse>
	<cfset id = 16>
</cfif>


<cfset kunde = EntityLoad("Kunden",id,true)>

<cfscript>
kundenadresse = StructNew();
kundenadresse.strasse = "Strassexy 1";
kundenadresse.ort = "ort 1";
kundenadresse.plz = "plz 1";
insert = createObject("component", "dao.KundenAdresseDao").insert(kundenadresse,kunde);


</cfscript>
