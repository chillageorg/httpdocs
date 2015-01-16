<cfset lList = "one,two,three,four">


<cfset lList = listappend(lList,"five")>
<cfloop list="#lList#" index="lst">
<cfoutput>#lst#</cfoutput><br />
</cfloop>


