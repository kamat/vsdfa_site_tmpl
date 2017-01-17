<div class="panel panel-default">
    <div class="panel-heading">
        <div class="panel-title" itemprop="fio">
            <a href="[[~[[+id]]]]">[[+pagetitle]]</a>
        </div>
    </div>
    <div class="panel-body">
        <div class="person-card">
            <div class="row">
                <div class="col-sm-3 col-md-2">
                    <img src="[[pthumb?
                            &input=`[[getField? &id=`[[+id]]` &field=`photo`]]`
                            &options=`h=200&w=150&zc=t`]]"
                        class="img-thumbnail"
                        title="[[+pagetitle]]"
                        alt="[[+pagetitle]]">
                </div>
                <div class="col-sm-9 col-md-10">
                    <div class="row">
                        <div class="person-pos col-md-4">
                            <dl>
                                [[getField? &id=`[[+id]]` &field=`position` &tpl=`@INLINE 
                                    <dt>Должность:</dt>
                                    <dd itemprop="Post">[[+gf.output]]</dd>`]]
                                [[getField? &id=`[[+id]]` &field=`degree` &tpl=`@INLINE 
                                    <dt>Ученая степень:</dt>
                                    <dd itemprop="Degree">[[+gf.output]]</dd>`]]
                                [[getField? &id=`[[+id]]` &field=`rank` &tpl=`@INLINE 
                                    <dt>Ученое звание:</dt>
                                    <dd itemprop="AcademStat">[[+gf.output]]</dd>`]]
                            </dl>
                        </div>
                        <div class="person-contacts col-md-7">
                            <dl>
                                [[getField? &id=`[[+id]]` &field=`education` &tpl=`@INLINE 
                                    <dt>Образование (направление подготовки / специальность):</dt>
                                    <dd itemprop="EmployeeQualification">[[+gf.output]]</dd>`]]
                                [[getField? &id=`[[+id]]` &field=`experienceTotal` &tpl=`@INLINE 
                                    <dt>Общий стаж работы:</dt>
                                    <dd itemprop="GenExperience">[[+gf.output]]</dd>`]]
                                [[getField? &id=`[[+id]]` &field=`experienceSpec` &tpl=`@INLINE 
                                    <dt>Стаж работы по специальности:</dt>
                                    <dd itemprop="SpecExperience">[[+gf.output]]</dd>`]]
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>