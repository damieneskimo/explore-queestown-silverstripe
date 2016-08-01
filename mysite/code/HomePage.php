<?php

class HomePage extends Page {

}

class HomePage_Controller extends Page_Controller {

    public function showcaseOnHomepage($limit = null){
        return Showcase::get()->limit(3);
    }
    
}