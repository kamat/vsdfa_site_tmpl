[[FormIt?
    &hooks=`recaptchav2,email,FormItSaveForm`
    &recaptchaTheme=`dark`
    &recaptchaJs=`{size: "compact"}`
    &emailTo=`prcom@molochnoe.ru`
    &emailSubject=`Отправка формы "Вопрос приёмной комиссии"`
    &emailTpl=`emailORprcom`
    &emailHtml=`0`
    &successMessage=`
        <div class="alert alert-success alert-block">
            <p>
                Благодарим Вас за то, что воспользовались сервисом "on-line приемная",
                в самое ближайшее время Ваш запрос будет рассмотрен.
                Ответ будет направлен в письменном виде на указанный e-mail адрес
                или с Вами свяжутся по указанному в запросе телефону.
            </p>
            <h3 class="text-center">Удачного дня!</h3>
        </div>`
]]

[[!+fi.successMessage]]

<form method="post" action="[[~[[*id]]]]" class="form-horizontal" id="onlineReception">
    <div class="form-group [[!+fi.error.firstname:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="firstname">Имя<span style="color: red;">*</span>:</label>
        <div class="col-sm-9">
            <input id="firstname" name="firstname" class="form-control" type="text" placeholder="Имя" value="[[!+fi.firstname]]" required>
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.lastname:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="lastname">Фамилия:</label>
        <div class="col-sm-9">
            <input id="lastname" name="lastname" class="form-control" type="text" value="[[!+fi.lastname]]" placeholder="Фамилия">
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.middlename:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="middlename">Отчество:</label>
        <div class="col-sm-9">
            <input id="middlename" name="middlename" class="form-control" type="text" placeholder="Отчество" value="[[!+fi.middle]]">
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.email:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="email">Ваш е-mail<span style="color: red;">*</span>:</label>
        <div class="col-sm-9">
            <input id="email" name="email" class="form-control" type="text" placeholder="E-mail" value="[[!+fi.email]]">
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.phone:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="phone">Телефон:</label>
        <div class="col-sm-9">
            <input id="phone" name="phone" class="form-control" type="text" placeholder="Телефон" value="[[!+fi.phone]]">
        </div>
    </div>
    
    <div class="form-group [[!+fi.error.address:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="address">Домашний адрес:</label>
        <div class="col-sm-9">
            <input id="address" name="address" class="form-control" type="text" placeholder="Домашний адрес" value="[[!+fi.address]]">
        </div>
    </div>

    <div class="form-group [[!+fi.error.message:notempty=`has-error`]]">
        <label class="control-label col-sm-3" for="message">Сообщение<span style="color: red;">*</span>:</label>
        <div class="col-sm-9">
            <textarea id="message" name="message" class="form-control" rows="3" placeholder="Введите текст сообщения…"  required>[[!+fi.message]]</textarea>
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