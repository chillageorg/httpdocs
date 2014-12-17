<cfcomponent persistent="true" table="artists" datasource="cfartgallery">
<cfproperty name="ArtistID" fieldtype="id">
<cfproperty name="FirstName">
<cfproperty name="LastName">
<cfproperty name="art" fieldtype="one-to-many" cfc="art" fkcolumn="ArtistID">
</cfcomponent>