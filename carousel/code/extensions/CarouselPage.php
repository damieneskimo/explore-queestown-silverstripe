<?php

class CarouselPage extends DataExtension {

	// Database Fields For Carousel Settings
	private static $db = array(
		'ShowCarousel' => 'Boolean',
		'CarouselWidth' => 'Int',
		'CarouselHeight' => 'Int'
	);

	// Has Many Relationship to Carousel Images
	private static $has_many = array(
		'CarouselElements' => 'CarouselImage',
	);

	// Default Settings for Carousel
	private static $defaults = array(
		'CarouselWidth' => 1140,
		'CarouselHeight' => 500,
	);

	// Add area to manage Carousel if requested on given page
	public function updateCMSFields(Fieldlist $fields) {
		// If Users Requests Carousel On Page
		if($this->owner->ShowCarousel) {
			// Table to Display Current Carousel Images
			$carousel_table = GridField::create('CarouselElements', false, $this->owner->CarouselElements()->sort('Sort ASC'), GridFieldConfig_RecordEditor::create());

			// Creates a tab on CMS to manage Carousel on
			$fields->addFieldToTab('Root.'._t('CarouselPage.CAROUSELTABLABEL', 'Carousel'), $carousel_table);
		} else {
			$fields->removeByName('CarouselElements');
		}

		// By default carousel settings do not appear
		$fields->removeByName('ShowCarousel');
		$fields->removeByName('CarouselWidth');
		$fields->removeByName('CarouselHeight');

		parent::updateCMSFields($fields);
	}

	// Add Carousel Settings to Page Settings Tab
	public function updateSettingsFields(FieldList $fields) {

		$carousel = FieldGroup::create(
			CheckboxField::create('ShowCarousel', _t('CarouselPage.ADDCAROUSEL','Add carousel to this page?'))
		)->setTitle(_t('CarouselPage.TITLE','Carousel'));

		$fields->addFieldToTab('Root.Settings', $carousel);

		// If user selects to add carousel add additional settings
		if($this->owner->ShowCarousel) {
			$fields->addFieldToTab('Root.Settings', NumericField::create('CarouselWidth', _t('CarouselPage.WIDTH','Width')));
			$fields->addFieldToTab('Root.Settings', NumericField::create('CarouselHeight', _t('CarouselPage.HEIGHT','Height')));
		}
	}

	// Get carousel images to render on page
	public function CarouselImages() {
		return $this->owner->renderWith('CarouselImages', array('CarouselElements' => $this->owner->CarouselElements()));
	}
}
