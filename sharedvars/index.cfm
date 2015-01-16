<cfset  str.mode = "myMode">

<cfset c = createObject("component","myUtils").init(str)>
<cfoutput>
    <!--- Should output "development" --->
    #c.getMode()#

</cfoutput>
