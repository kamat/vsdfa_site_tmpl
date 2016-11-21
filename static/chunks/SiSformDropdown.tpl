<form action="[[~[[+landing:default=`[[*id]]`]]]]" method="[[+method:default=`get`]]">
    <input type="hidden" name="id" value="[[+landing:default=[[*id]]]]" />
    <label class="input-sm control-label" for="[[+searchIndex]]">Поиск по сайту</label>
    <div class="row">
        <div class="col-xs-10">
            <input class="form-control input-sm" type="text" name="[[+searchIndex]]" id="[[+searchIndex]]" value="[[+searchValue]]" />
        </div>
        <div class="col-xs-2">
            <button class="btn-sm btn btn-primary" type="submit">
                <i class="glyphicon glyphicon-search"></i>
            </button>
        </div>
    </div>
</form>