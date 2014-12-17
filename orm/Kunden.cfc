<cfcomponent persistent="true" table="Kunden" datasource="playground" entityname="Kunden">
	<cfproperty name="kundennr" fieldtype="id" generator="increment">
	<cfproperty name="anrede" ormType="string">
	<cfproperty name="firma" ormType="string">
	<cfproperty name="titel" ormType="string">
	<cfproperty name="name" ormType="string">
	<cfproperty name="vorname" ormType="string">
	<cfproperty name="email" ormType="">
	<cfproperty name="passwort" ormType="string">
	<cfproperty name="kundeseit" ormType="date">
	<!--- <cfproperty name="kundenadresse" fieldtype="one-to-many" cfc="KundenAdresse" fkcolumn="kundennr" > --->
	<cfproperty name="kundenadresse" fieldtype="one-to-many" type="array" cfc="KundenAdresse" inverse="true"  cascade="all-delete-orphan" fkcolumn="kundennr"
				inversejoincolumn="kanr" lazy="false" singularname="kundenadresse">
</cfcomponent>