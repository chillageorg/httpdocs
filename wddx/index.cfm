<!--- Enable client state management --->
<cfapplication name="relatives" clientmanagement="Yes">

<!--- Build a complex data structure --->
<cfscript>
    relatives = structNew();
    relatives.father = "Bob";
    relatives.mother = "Mary";
    relatives.sisters = arrayNew(1);
    arrayAppend(relatives.sisters, "Joan");
    relatives.brothers = arrayNew(1);
    arrayAppend(relatives.brothers, "Tom");
    arrayAppend(relatives.brothers, "Jesse");
</cfscript>

A dump of the original relatives structure:<br>
<br>
<cfdump var="#relatives#"><br>
<br>

<!--- Convert data structure to string form and save it in the client scope --->
<cfwddx action="cfml2wddx" input="#relatives#" output="Client.wddxRelatives">

The contents of the Client.wddxRelatives variable:<br>
<cfoutput>#HtmlEditFormat(Client.wddxRelatives)#</cfoutput><br>

<!--- Now read the data from client scope into a structure --->
<cfwddx action="wddx2cfml" input="#Client.wddxRelatives#" output="sameRelatives">
<br>
A dump of the sameRelatives structure generated from client.wddxRelatives<br>
<cfdump var="#sameRelatives#">