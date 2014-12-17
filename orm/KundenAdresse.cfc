<cfcomponent persistent="true" table="kundenadresse" datasource="playground" entityname="kundenadresse">
	<cfproperty name="kanr" fieldtype="id" generator="increment">
	<cfproperty name="strasse" ormType="string">
	<cfproperty name="plz" ormType="string">
	<cfproperty name="ort" ormType="string">
	<cfproperty name="kundennr" fieldtype="many-to-one"
				inversejoincolumn="kundennr" cfc="Kunden" singularname="kunden">
</cfcomponent>