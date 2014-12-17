<cfobject name="empObj" component="employee">
<cfobject name="mgrObj" component="manager">
<cfobject name="prezObj" component="president">
<cfoutput>
    <cfoutput>
        An employee earns #empObj.getPaid()#.<br>
        A manager earns #mgrObj.getPaid()#.<br>
        The president earns #prezObj.getPaid()#.
    </cfoutput>
</cfoutput>