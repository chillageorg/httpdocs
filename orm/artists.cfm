<cfoutput>Original Data<br></cfoutput>
<cfset artistObj = EntityLoad("artists", 1, true)>
<cfoutput>#artistObj.getArtistID()# | #artistObj.getFirstName()# |
#artistObj.getLastName()#<br></cfoutput>
<cfset artObj = artistObj.getart()>
<!---<cfdump var="#artistObj#">--->
<cfoutput>#artObj[1].getartname()# <br></cfoutput>
<cfset authorObj = EntityLoad("authors", 2, true)>
<cfoutput>#authorObj.getFirstName()#</cfoutput>
<cfoutput>#authorObj.getLastName()#</cfoutput>
<cfoutput><br>==============<br></cfoutput>


<!---
<cfscript>
artistNew = EntityNew("artists");
artistNew.setFirstName("Georg");
artistNew.setLastName("Muster");
artistNew.setArtistID(16);
EntitySave(artistNew);
</cfscript>
<cfset artistSaved = EntityLoad("artists")>
<cfdump var="#artistSaved#">--->
<!---
<cfscript>
// load an entity by id
del = EntityLoadByPK( "artists", 16 );

// delete the entity
EntityDelete( del );
</cfscript>
<cfset artistSaved = EntityLoad("artists")>
<cfdump var="#artistSaved#">--->