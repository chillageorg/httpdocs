<cfobject name="empObj" component="employee">
<cfobject name="mgrObj" component="manager">
<cfobject name="prezObj" component="president">
<cfoutput>
    An employee's salary is #empObj.basesalary# per week.<br>
    A manager's salary is #mgrObj.basesalary + mgrObj.mgrBonus# per week.<br>
    A president's salary is #prezObj.basesalary + prezObj.mgrBonus +
        prezObj.PrezBonus# per week.
</cfoutput>