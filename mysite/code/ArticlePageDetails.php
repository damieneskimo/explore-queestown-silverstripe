<?php

class ArticlePageDetails extends Page {
    private static $can_be_root = false;

    private static $db = [
        'Teaser' => 'Text',
        'Price_Description' => 'Text',
        'Price_Adult' => 'Currency',
        'Price_Child' => 'Currency'
    ];

    private static $has_one = [
        'Photo' => 'Image'
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextareaField::create('Teaser', 'Info'), 'Content');
        $fields->addFieldToTab('Root.Main', TextareaField::create('Price_Description', 'Price Description'), 'Content');
        $fields->addFieldToTab('Root.Main', CurrencyField::create('Price_Adult', 'Price Per Adult'), 'Content');
        $fields->addFieldToTab('Root.Main', CurrencyField::create('Price_Child', 'Price Per Child'), 'Content');
        $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));

        $photo -> getValidator()->setAllowedExtensions(['jpg', 'jpeg', 'gig', 'png']);
        $photo -> setFolderName('activity_photos');
        $Photo.fill(700, 387);

        return $fields;  
    }
}

class ArticlePageDetails_Controller extends Page_Controller {

}