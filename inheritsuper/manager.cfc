<cfcomponent extends="employee">
    <cffunction name="getPaid" returntype="numeric">
        <cfset var salary=1.5 * Super.getPaid()>
        <cfreturn salary>
    </cffunction>
</cfcomponent>