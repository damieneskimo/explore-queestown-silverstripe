<?php

class ShowcaseAdmin extends ModelAdmin {

    private static $menu_title = 'Showcase';

    private static $url_segment = 'showcase';

    private static $managed_models = [
        'Showcase'
    ];
}