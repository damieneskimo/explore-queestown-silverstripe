<?php

class Showcase extends DataObject {

    private static $db = [
        'Title' => 'Varchar',
        'Content' => 'Text',
        'Link' => 'Varchar'
    ];

    private static $has_one = [
        'Photo' => 'Image'
    ];

    private static $summary_fields = [
        'Title' => 'Title',
        'Content' => 'Content'
    ];

    private static $searchable_fields = [
        
    ];

    public function getCMSFields() {
        $fields = FieldList::create(TabSet::create('Root'));
        $fields->addFieldsToTab('Root.Main', [
            TextField::create('Title'),
            TextareaField::create('Content'),
            TextField::create('Link'),
        ]);

        $fields->addFieldsToTab('Root.Attachments', $upload = UploadField::create('Photo'));
        $upload->getValidator()->setAllowedExtensions(['jpg', 'png', 'jpeg', 'gif']);
        $upload->setFolderName('showcase-photos');

        return $fields;
    }
}

