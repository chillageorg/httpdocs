<cfset Object = iif(StructKeyExists(url,"killit"),De("ThreadKiller"),De("ThreadSaver")) />
<cfset test = CreateObject("component",Object).init() />
<cfset test.countUp() />

done!