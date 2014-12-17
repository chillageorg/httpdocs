<cfcomponent
    output="false"
    accessors="true"
    hint="I represent a Girl domain entity.">


    <cfproperty
        name="name"
        type="string"
        validate="regex"
        validateparams="{ pattern=.+ }"
        hint="I am the name of the girl."
        />

    <cfproperty
        name="age"
        type="numeric"
        validate="regex"
        validateparams="{ pattern=(1[89]|[2-9]\d+|1\d\d) }"
        hint="I am the age of the girl. I must be 18 years or older."
        />


    <cffunction
        name="init"
        access="public"
        returntype="any"
        output="false"
        hint="I return an initialized component.">

        <!--- Define arguments. --->
        <cfargument
            name="name"
            type="string"
            required="true"
            hint="I am the name of the girl."
            />

        <cfargument
            name="age"
            type="numeric"
            required="true"
            hint="I am the age of the girl."
            />

        <!--- Store default values. --->
        <cfset this.setName( arguments.name ) />
        <cfset this.setAge( arguments.age ) />

        <!--- Return this object reference. --->
        <cfreturn this />
    </cffunction>

</cfcomponent>