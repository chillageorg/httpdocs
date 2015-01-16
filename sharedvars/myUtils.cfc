<cfcomponent>
    <!--- Server Mode: production | development - used for differing paths and such --->
    <cfset variables.mode = "development">

    <cffunction name="init" access="public">
        <cfargument name="settings" type="struct" required="no">
        <cfset StructAppend(variables, arguments.settings)>
        <cfreturn this>
    </cffunction>

    <cffunction name="getMode" access="public">
        <cfreturn variables.mode>
    </cffunction>


</cfcomponent>