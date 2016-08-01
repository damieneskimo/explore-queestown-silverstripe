<?php

class TeamMember extends Page {
    
    private static $can_be_root = false;

    private static $db = [
        'Name' => 'Varchar',
        'Role' => 'Varchar',
        'Intro' => 'Text',
        'Email' => 'Varchar'
    ];

    private static $has_one = [
        'Photo' => 'Image'
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Name', 'Name'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Role', 'Role'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Intro', 'Brief Introduction'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Email', 'Email Address'), 'Content');
        $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));

        $photo->getValidator()->setAllowedExtensions(['jpg', 'jpeg', 'png', 'gif']);
        $photo->setFolderName('team_photos');

        return $fields;
    }
}

class TeamMember_Controller extends Page_Controller {

}