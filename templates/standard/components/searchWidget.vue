searchwidget
["searchtitle"]
<h2>
    <a id="searchtoggle" class="win-up">{{searchtitle}}</a>
</h2>
<form id="search" method="get" action="managesearch.php"  onsubmit="return validateStandard(this,'input_error');">
    <fieldset>
        <div class="row">
            <input type="text" class="text" id="query" name="query"/>
        </div>
        <div id="choices"></div>
        <input type="hidden" name="action" value="search"/>

        <div id="indicator1" class="display-none">
            <img src="templates/{$settings.template}/theme/{$settings.theme}/images/symbols/indicator_arrows.gif" alt=""/>
        </div>
            <button type="submit"></button>
    </fieldset>
</form>

