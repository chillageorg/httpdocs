<cfcomponent name="KundenDao">

	<cffunction name="insert" returntype="any">
		<cfargument name="kunde" required="false">

		<cfset KuindenNew = EntityNew("Kunden")>
		<cfif IsDefined("Arguments.kunde.kundennr")>
			<cfset KuindenNew.setkundennr(arguments.kunde.kundennr)>
		</cfif>
		<cfset KuindenNew.setanrede(arguments.kunde.anrede)>
		<cfset KuindenNew.setfirma(arguments.kunde.firma)>
		<cfset KuindenNew.settitel(arguments.kunde.titel)>
		<cfset KuindenNew.setname(arguments.kunde.name)>
		<cfset KuindenNew.setvorname(arguments.kunde.vorname)>
		<cfset KuindenNew.setemail(arguments.kunde.email)>
		<cfset KuindenNew.setpasswort(arguments.kunde.passwort)>
		<cfset KuindenNew.setkundeseit(arguments.kunde.kundeseit)>

		<cfset EntitySave(KuindenNew)>
		<cfreturn KuindenNew>
	</cffunction>
	<cffunction name="delete">
		<cfargument name="kunde" type="any" required="true">
		<cfset EntityDelete(arguments.kunde)>
	</cffunction>

	<cffunction name="read" returntype="any">
		<cfargument name="kunde" type="any" required="true">
		<cfreturn arguments.kunde>
	</cffunction>

</cfcomponent>