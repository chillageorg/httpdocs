<cfcomponent
    output="false"
    hint="I store generic private variables.">


    <cffunction
        name="get"
        access="public"
        returntype="any"
        output="false"
        hint="I get the given property from the private variables scope.">

        <!--- Define arguments. --->
        <cfargument
            name="name"
            type="string"
            required="true"
            hint="I am the name of the property being gotten."
            />

        <!--- Return the property. --->
        <cfreturn variables[ arguments.name ] />
    </cffunction>


    <cffunction
        name="set"
        access="public"
        returntype="any"
        output="false"
        hint="I store the given value in the private variables scope.">

        <!--- Define arguments. --->
        <cfargument
            name="name"
            type="string"
            required="true"
            hint="I am the name of the property being stored."
            />

        <cfargument
            name="value"
            type="any"
            required="true"
            hint="I am the value of the property being stored."
            />

        <!--- Store the property. --->
        <cfset variables[ arguments.name ] = arguments.value />

        <!--- Return this object reference for method chaining. --->
        <cfreturn this />
    </cffunction>


</cfcomponent>