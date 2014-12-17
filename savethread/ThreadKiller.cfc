<cfcomponent output="false">
	<cffunction name="init" access="public" output="false" returntype="ThreadKiller">
		<cfreturn this />
	</cffunction>
	<cffunction name="countUp" access="public" output="false" returntype="void">
		<cfscript>
		for (i=1;i LTE 10;i=i+1) { countDown(); }
		</cfscript>
	</cffunction>
	<cffunction name="countDown" access="public" output="false" returntype="void">
		<cfscript>
		for (i=10;i GTE 1;i=i-1) { /* nothing */ }
		</cfscript>
	</cffunction>
</cfcomponent>