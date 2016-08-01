<?php

class ArticleHolder extends Page {
    // Hiararchical constraints
    private static $allowed_children = [
        'ArticlePage'
    ];
}

class ArticleHolder_Controller extends Page_Controller {

}