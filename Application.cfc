<cfcomponent>
<cfset this.name = "playground">
    <cfset this.ormenabled = "true">
    <cfset this.ormsettings={datasource="playground", logsql="true"}>
<cfset this.Sessionmanagement="True">
<cfset this.loginstorage="session">
<!---
<cfset strPath = GetDirectoryFromPath(
    GetCurrentTemplatePath()
    ) />--->
<cfset strPath = "http://localhost:8500/httpdocs/" />
<cffunction name="OnRequestStart">
    <cfargument name = "request" required="true"/>
    <cfif IsDefined("Form.logout")>
        <cflogout>
    </cfif>

    <cflogin>
        <cfif NOT IsDefined("cflogin")>
            <cfinclude template="loginform.cfm">
            <cfabort>
        <cfelse>
            <cfif cflogin.name IS "" OR cflogin.password IS "">
                <cfoutput>
                    <h2>You must enter text in both the User Name and Password fields.
                    </h2>
                </cfoutput>
                <cfinclude template="loginform.cfm">
                <cfabort>
            <cfelse>
                <cfquery name="loginQuery" dataSource="playground">
                SELECT UserID, Roles
                FROM LoginInfo
                WHERE
                    UserID = <cfqueryparam value = "#cflogin.name#" CFSQLType = "CF_SQL_VARCHAR">
                    AND Password = <cfqueryparam value = "#cflogin.password#" CFSQLType = "CF_SQL_VARCHAR">
                </cfquery>

                <cfif loginQuery.Roles NEQ "">
                    <cfloginuser name="#cflogin.name#" Password = "#cflogin.password#"
                        roles="#loginQuery.Roles#">
                <cfelse>
                    <cfoutput>
                        <H2>Your login information is not valid.<br>
                        Please Try again</H2>
                    </cfoutput>
                    <cfinclude template="loginform.cfm">
                    <cfabort>
                </cfif>
            </cfif>
        </cfif>
    </cflogin>

    <cfif GetAuthUser() NEQ "">
        <cfoutput>
                <form action="#strPath#securitytest.cfm" method="Post">
                <input type="submit" Name="Logout" value="Logout">
            </form>
        </cfoutput>
    </cfif>

</cffunction>
</cfcomponent>