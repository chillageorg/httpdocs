<cfinvoke component="cfcs.Hello" method="sayHello"
        nom="Carol"
		fnom="Rinaldi"
        returnVariable="greeting" />
<cfoutput><p>1) #greeting#</p></cfoutput>


<cfinvoke component="cfcs.Hello"
        method="sayHello"
        returnVariable="greeting">
    <cfinvokeargument name="nom" value="Carol">
	<cfinvokeargument name="fnom" value="Muster">
</cfinvoke>
<cfoutput><p>2) #greeting#</p></cfoutput>


<cfset vars = StructNew() />
<cfset vars.nom = "Carol" />
<cfset vars.fnom = "Muster-Rinaldi" />
<cfinvoke component="cfcs.Hello"
        method="sayHello"
        argumentCollection="#vars#"
        returnVariable="greeting" />
<cfoutput><p>3) #greeting#</p></cfoutput>


<cfobject name="cfc" component="cfcs.Hello" />
<cfoutput><p>4) #cfc.sayHello("Carol")#</p></cfoutput>


<cfscript>
    cfc = createObject("component", "cfcs.Hello");
    greeting = cfc.sayHello("Carol");
    writeOutput("<p>5) " & greeting & "</p>");
</cfscript>


<cfscript>
    greeting = createObject("component", "cfcs.Hello").sayHello("Carol");
    writeOutput("<p>6) " & greeting & "</p>");
</cfscript>