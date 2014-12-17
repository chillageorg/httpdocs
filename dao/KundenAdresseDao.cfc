<cfcomponent name="KundenAdresseDao">

	<cffunction name="insert" returntype="any">
		<cfargument name="kundenadresse" required="false">
		<cfargument name="kunde" type="any">
		<cfset ka = EntityNew("kundenadresse")>
		<cfif IsDefined("Arguments.Kundenadresse.kundennr")>
			<cfset KaNew.setkundennr(arguments.kundenadresse.kanr)>
		</cfif>
		<cfset ka.setstrasse(arguments.kundenadresse.strasse)>
		<cfset ka.setort(arguments.kundenadresse.ort)>
		<cfset ka.setplz(arguments.kundenadresse.plz)>
		<cfset ka.setkundennr(arguments.kunde)>
		<cfset EntitySave(ka)>
		<cfset ormFlush()>
		<cfreturn ka>
	</cffunction>
	<cffunction name="delete">
		<cfargument name="kundenadresse" type="any" required="true">
		<cfset EntityDelete(arguments.kundenadresse)>
	</cffunction>

	<cffunction name="read" returntype="any">
		<cfargument name="kundenadresse" type="any" required="true">
		<cfreturn arguments.kundenadresse>
	</cffunction>

</cfcomponent>