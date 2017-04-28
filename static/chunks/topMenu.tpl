[[!ovz-menu? &tpl=`ovz-menu`]]
<nav class="navbar navbar-vsdfa top-menu">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-top-menu" aria-expanded="false">
            <small>СВЕДЕНИЯ ОБ ОБРАЗОВАТЕЛЬНОЙ ОРГАНИЗАЦИИ</small>
            <span class="sr-only">Toggle navigation</span>
        </button>
    </div>
    <div class="collapse navbar-collapse" id="nav-top-menu">
        <ul class="nav navbar-nav navbar-left">
            [[Wayfinder@MainMenu? &startId=`16` ]]
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li itemprop="Copy" class="ovz-mode-contrast"><a href="[[~[[*id]]]]?theme=bw" title="Версия для слабовидящих"><i class="glyphicon glyphicon-eye-open"></i></a></li>
            <!-- li itemprop="Copy" class="ovz-mode-normal hide"><a href="#" title="Нормальная версия"><i class="glyphicon glyphicon-eye-open"></i></a></li -->
            <li><p class="navbar-text">12+</p></li>
            <li role="presentation" class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <i class="glyphicon glyphicon-search"></i>
                </a>
                <ul class="dropdown-menu search">
                    <li>
                        [[!SimpleSearchForm?
                            &includeTVs=`1`
                            &tpl=`SiSformDropdown`
                            &landing=`812`
                        ]]
                    </li>
                </ul>
            </li>
            <!-- Пока перевода нет . . .
            <li><a href="#">Ru</a></li>
            <li><a href="#">En</a></li> -->
        </ul>
    </div>
</nav>