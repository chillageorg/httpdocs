<cfcomponent displayName="Simple HelloWorld component" output="false">
    <cffunction name="sayHello" access="remote" output="false" returnType="string">
        <cfargument name="nom" required="true" type="string" />
		<cfargument name="fnom" required="false" type="string" />
		<cfif isdefined('arguments.fnom')>
        	<cfreturn "Hello, " & trim(arguments.nom) & "." & trim(arguments.fnom) & "." />
		<cfelse>
			<cfreturn "Hello, " & trim(arguments.nom) & "." />
		</cfif>
    </cffunction>
</cfcomponent>