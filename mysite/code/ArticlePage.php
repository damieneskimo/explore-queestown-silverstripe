<?php

class ArticlePage extends Page {
    private static $can_be_root = false;

    private static $allowed_children = [
        'ArticlePageDetails'
    ];
}

class ArticlePage_Controller extends Page_Controller {

}