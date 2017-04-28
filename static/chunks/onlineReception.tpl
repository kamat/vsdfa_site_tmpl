[[!FormIt?
    &hooks=`recaptchav2,email,FormItSaveForm`
    &recaptchaTheme=`dark`
    &recaptchaJs=`{size: "compact"}`
    &emailFrom=`noreply@molochnoe.ru`
    &emailFromName=`Сайт Вологодской ГМХА`
    &emailTo=`vgmha@list.ru`
    &emailSubject=`Отправка формы "online приёмная ректора"`
    &emailTpl=`emailOR`
    &emailHtml=`0`
    &successMessage=`
        <div class="alert alert-success alert-block">
            <p>
                Благодарим Вас за то, что воспользовались сервисом "on-line приемная ректора",
                в самое ближайшее время Ваш запрос будет рассмотрен.
                Ответ будет направлен в письменном виде на указанный e-mail адрес
                или с Вами свяжутся по указанному в запросе телефону.
            </p>
            <h3 class="text-center">Удачного дня!</h3>
        </div>`
    &validate=`firstname:required,email:required,whois:required,question:required:minLength=^6^`
]]

[[!+fi.successMessage]]
[[!+fi.validation_error_message]]

<form method="post" action="[[~[[*id]]]]" class="form-horizontal" id="onlineReception">
    <div class="form-group [[!+fi.error.firstname:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="firstname">Имя<span style="color: red;">*</span>:</label>
        <div class="col-sm-9">
            <input id="firstname" name="firstname" class="form-control" type="text" placeholder="Имя" value="[[!+fi.firstname]]" required>
            [[!+fi.error.firstname:notempty=`<span class="help-block">[[!+fi.error.firstname]]</span>`]]
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.lastname:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="lastname">Фамилия:</label>
        <div class="col-sm-9">
            <input id="lastname" name="lastname" class="form-control" type="text" value="[[!+fi.lastname]]" placeholder="Фамилия">
            [[!+fi.error.lastname:notempty=`<span class="help-block">[[!+fi.error.lastname]]</span>`]]
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.middlename:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="middlename">Отчество:</label>
        <div class="col-sm-9">
            <input id="middlename" name="middlename" class="form-control" type="text" placeholder="Отчество" value="[[!+fi.middlename]]">
            [[!+fi.error.middlename:notempty=`<span class="help-block">[[!+fi.error.middlename]]</span>`]]
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.email:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="email">Ваш е-mail<span style="color: red;">*</span>:</label>
        <div class="col-sm-9">
            <input id="email" name="email" class="form-control" type="text" placeholder="E-mail" value="[[!+fi.email]]">
            [[!+fi.error.email:notempty=`<span class="help-block">[[!+fi.error.email]]</span>`]]
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.phone:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="phone">Телефон:</label>
        <div class="col-sm-9">
            <input id="phone" name="phone" class="form-control" type="text" placeholder="Телефон" value="[[!+fi.phone]]">
            [[!+fi.error.phone:notempty=`<span class="help-block">[[!+fi.error.phone]]</span>`]]
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.address:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="address">Домашний адрес:</label>
        <div class="col-sm-9">
            <input id="address" name="address" class="form-control" type="text" placeholder="Домашний адрес" value="[[!+fi.address]]">
            [[!+fi.error.address:notempty=`<span class="help-block">[[!+fi.error.address]]</span>`]]
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.whois:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="whois">Вы являетесь<span style="color: red;">*</span>:</label>
        <div class="col-sm-9">
            <select name="whois" id="whois" class="form-control"  required>
                <option value="">-- Выбрать вариант --</option>
                <option value="Студентом">Студентом</option>
                <option value="Абитуриентом">Абитуриентом</option>
                <option value="Аспирантом">Аспирантом</option>
                <option value="Выпускником">Выпускником</option>
                <option value="Сотрудником">Сотрудником</option>
                <option value="Родителем">Родителем</option>
                <option value="Другое">Другое</option>
            </select>
        </div>
        [[!+fi.error.whois:notempty=`<span class="help-block">[[!+fi.error.whois]]</span>`]]
    </div>
    
    <div class="form-group [[!+fi.error.question:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="question">Сообщение<span style="color: red;">*</span>:</label>
        <div class="col-sm-9">
            <textarea id="question" name="question" class="form-control" rows="3" placeholder="Введите текст сообщения…">[[!+fi.question]]</textarea>
            [[!+fi.error.question:notempty=`<span class="help-block">[[!+fi.error.question]]</span>`]]
        </div>
    </div>
    
    <div class="form-group">
        <div class="col-sm-9 col-sm-offset-3">
            [[!recaptchav2_render]]
            [[!+fi.error.recaptchav2_error]]
        </div>
    </div>
    
    <div class="form-actions">
        <div class="col-sm-9 col-sm-offset-3">
            <button type="submit" class="btn btn-primary btn-lg btn-block" name="submit" id="submit">Отправить</button>
        </div>
    </div>

</form>