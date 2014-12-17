<h1>Neuer Kunde</h1>
<cfoutput>
<form class="form-horizontal" action="" method="post">

<div class="control-group">
    <label class="control-label" for="anrede">Anrede</label>
    :
    <div class="controls">
      <input type="text" id="anrede" placeholder="Anrede" name="anrede" value="">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="titel">Titel</label>
    :
    <div class="controls">
      <input type="text" id="titel" placeholder="Titel" name="titel" value="">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="firma">Firma</label>
    :
    <div class="controls">
      <input type="text" id="firma" placeholder="Firma" name="firma" value="">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="name">Name</label>
    :
    <div class="controls">
      <input type="text" id="name" placeholder="Name" name="name" value="">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="vorname">Vorname</label>
    :
    <div class="controls">
      <input type="text" id="vorname" placeholder="Vorname" name="vorname" value="">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="email">Email</label>
    :
    <div class="controls">
      <input type="text" id="email" placeholder="Email" name="email" value="">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="passwort">Passwort</label>
    :
    <div class="controls">
      <input type="text" id="passwort" placeholder="Passwort" name="passwort" value="">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="kundeseit">Kunde seit</label>
    :
    <div class="controls">
      <input type="text" id="kundeseit" placeholder="DD.MM.YYYY" name="kundeseit" value="">
    </div>
</div>
<div class="control-group">
    <div class="controls">
      <button type="submit" class="btn" name="btnSave" id="btnSave">Add</button>
    </div>
</div>

</form>
</cfoutput>