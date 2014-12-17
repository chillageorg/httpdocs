
<h3>Adressen:</h3>
<cfoutput>
    <cfif isdefined("url.kundennr")>
		<cfset Kunde = EntityLoad("Kunden",url.kundennr,true)>
	    <cfset kaObj = Kunde.getkundenadresse()>
		<cfif isDefined("kaObj")>
			<cfloop array="#kaObj#" index="ka">
			  &nbsp;&nbsp;&nbsp;&nbsp;#ka.getstrasse()#&nbsp;&nbsp;#ka.getplz()#&nbsp;&nbsp;#ka.getort()#<br>
			</cfloop>
		</cfif>
    </cfif>
</cfoutput>