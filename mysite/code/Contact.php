<?php

class Contact extends Page {

    private static $db = [
        'PhoneNumber' => 'Varchar',
        'Email' => 'Varchar',
        'Address' => 'Varchar'
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('PhoneNumber','Phone Number'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Email','Email Address'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Address','Address'), 'Content');

        return $fields;
    }
}

class Contact_Controller extends Page_Controller {

    private static $allowed_actions = [ 'Form' ];

    public function Form() {
        $fields = new FieldList(
            TextField::create('Name')
                ->addExtraClass('form-group')
                ->setAttribute('class', 'form-control'),
            EmailField::create('Email')
                ->addExtraClass('form-group')
                ->setAttribute('class', 'form-control'),
            TextField::create('Phone Number')
                ->addExtraClass('form-group')
                ->setAttribute('class', 'form-control'),
            TextareaField::create('Message')
                ->addExtraClass('form-group')
                ->setAttribute('class', 'form-control')
        );

        $actions = new FieldList(
            FormAction::create('submit', 'Submit')
                ->setAttribute('class', 'btn btn-lg btn-warning')
        );

        $validator = new RequiredFields('Name', 'Message');

        $form = new Form($this, __FUNCTION__, $fields, $actions, $validator);
        $form->setAttribute('class', 'form-horizontal'); 

        return $form;
    }

    public function submit($data, $form){
        $email = new Email();
        
        $email->setTo('damieneskimo@gmail.com');
        $email->setFrom($data['Email']);
        $email->setSubject('Contact message from {$data["Name"]}');

        $messageBody = "
            <p><strong>Name:</strong> {$data['Name']}</p> 
            <p><strong>Message:</strong> {$data['Message']}</p> 
        ";
        $email->setBody($messageBody);
        $email->send();

        return $this->redirectBack();
    }

}