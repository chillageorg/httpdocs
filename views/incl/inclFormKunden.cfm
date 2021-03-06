
<cfoutput>
<h1>KundeID##: #Kunde.getkundennr()#</h1>
<form class="form-horizontal" action="" method="post">
<input name="kundennr" type="hidden" value="#Kunde.getkundennr()#" id="kundennr">


<div class="control-group">
    <label class="control-label" for="anrede">Anrede</label>
    :
    <div class="controls">
      <input type="text" id="anrede" placeholder="Anrede" name="anrede" value="#Kunde.getanrede()#">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="titel">Titel</label>
    :
    <div class="controls">
      <input type="text" id="titel" placeholder="Titel" name="titel" value="#Kunde.gettitel()#">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="firma">Firma</label>
    :
    <div class="controls">
      <input type="text" id="firma" placeholder="Firma" name="firma" value="#Kunde.getfirma()#">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="name">Name</label>
    :
    <div class="controls">
      <input type="text" id="name" placeholder="Name" name="name" value="#Kunde.getname()#">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="vorname">Vorname</label>
    :
    <div class="controls">
      <input type="text" id="vorname" placeholder="Vorname" name="vorname" value="#Kunde.getvorname()#">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="email">Email</label>
    :
    <div class="controls">
      <input type="text" id="email" placeholder="Email" name="email" value="#Kunde.getemail()#">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="passwort">Passwort (SHA)</label>
    :
    <div class="controls">
      <input type="text" id="passwort" placeholder="Passwort" name="passwort" value="#Kunde.getpasswort()#">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="kundeseit">Kunde seit</label>
    :
    <div class="controls">
      <input type="text" id="kundeseit" placeholder="DD.MM.YYYY" name="kundeseit" value="#Kunde.getkundeseit()#">
    </div>
</div>
<div class="control-group">
    <div class="controls">
      <button type="submit" class="btn" name="btnSave" id="btnSave">Submit</button>&nbsp;<button type="submit" class="btn" name="btnDelete" id="btnDelete">Delete</button>
    </div>
</div>

</form>
<cfwindow name="popAdresse" title="Neue Kundenadresse" draggable="false"
        resizable="false" initshow="false" height="450" width="650" x=375 y=0 source="pop/popAdresse.cfm?kundennr=#Kunde.getkundennr()#">

</cfwindow>
<cfdiv bind="url:incl/inclAdressListe.cfm?kundennr=#Kunde.getkundennr()#" ID="theDiv"/>


<form>

<!--- Use the API to create, show, and hide Window 2 --->

    <input type="button" value="neue Adresse"
            onClick="ColdFusion.Window.show('popAdresse')">
    <!-- <input type="button" value="Hide popAdresse"
        onClick="ColdFusion.Window.hide('popAdresse')"> -->
</form>
</cfoutput>
