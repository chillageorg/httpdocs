<cfset this.mappings["/"] = getDirectoryFromPath(getCurrentTemplatePath()) />
<cfset this.mappings["/orm"] = "../orm" />
<cfset this.name = "playground">
<cfset this.ormenabled = "true">
<cfset this.ormsettings={datasource="playground", logsql="true"}>
