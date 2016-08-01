<?php

class FoodAccomDetails extends Page {

    private static $can_be_root = false;

    private static $db = [
        'Intro' => 'Text',
        'Opening_Hours' => 'Varchar',
        'Contact_Person' => 'Varchar',
        'Contact_Phone' => 'Varchar',
        'Contact_Address' => 'Varchar'
    ];

    private static $has_one = [
        'Photo' => 'Image'
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextareaField::create('Intro', 'Brief Introduction'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Opening_Hours', 'Opening Hours'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Contact_Person', 'Contact Person'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Contact_Phone', 'Contact Phone'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Contact_Address', 'Address'), 'Content');
        $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));

        $photo->getValidator()->setAllowedExtensions(['jpg', 'jpeg', 'png', 'gif']);
        $photo->setFolderName('Food_Accomodation_Photos');

        return $fields;
    }
}

class FoodAccomDetails_Controller extends Page_Controller {

}