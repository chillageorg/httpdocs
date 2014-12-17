<cfoutput>
<form class="form-horizontal" action="" method="post">
<input name="kundennr" type="hidden" value="#url.kundennr#" id="kundennr">


<div class="control-group">
    <label class="control-label" for="strasse">Strasse</label>
    :
    <div class="controls">
      <input type="text" id="strasse" placeholder="Strasse" name="strasse" value="">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="plz">PLZ</label>
    :
    <div class="controls">
      <input type="text" id="plz" placeholder="PLZ" name="plz" value="">
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="plz">Ort</label>
    :
    <div class="controls">
      <input type="text" id="ort" placeholder="Ort" name="ort" value="">
    </div>
</div>

<div class="control-group">
    <div class="controls">
      <button type="submit" class="btn" name="btnAdresse" id="btnAdresse">anlegen</button>
    </div>
</div>

</form>
</cfoutput>