<?php

class CarouselImage extends DataObject {

	// Database Fields for Image Information
	private static $db = array(
		'Caption' => "Varchar",
		'Sort' => 'Int',
		'LinkTargetBlank' => 'Boolean',
	);

	// Has One Relationships
	private static $has_one = array(
		'Parent' => 'Page',
		'Image' => 'Image',
		'LinkedPage' => 'SiteTree',
	);

	// Summary Fields when displaying Carousel Content
	private static $summary_fields = array(
		'Thumbnail' => 'Image',
		'Caption' => 'Caption'
	);

	// Default Sort Setting
	private static $default_sort = "Sort ASC";

	public function fieldLabels($includerelations = true) {
		$labels = array(
			'Caption' => _t('CarouselImage.CAPTION', 'Caption'),
			'Sort' => _t('CarouselImage.SORT', 'Sort'),
			'LinkedPage' => 'Link',
			'LinkTargetBlank' => _t('CarouselImage.LINKTARGETBLANK', 'Open the link in a new tab?'),
			'Image' => _t('CarouselImage.IMAGE', 'Image'),
		);
		if (!$includerelations) {
			unset($labels['Image']);
		}
		return $labels;
	}

	// Get image size according to settings tab information
	public function getSizedImage() {
		$width = $this->Parent()->CarouselWidth;
		$height = $this->Parent()->CarouselHeight;

		if($width && $height) {
			return $this->Image()->croppedImage($width, $height);
		} else {
			return false;
		}
	}

	// Removes Parent ID info from table that manages carousel
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('ParentID');

		$fields->insertAfter('Sort', new TreeDropdownField('LinkedPageID', 'Linked Page', 'SiteTree'));

		$field_order = array('Caption', 'Sort', 'LinkedPageID', 'LinkTargetBlank', 'Image');
		$fields->changeFieldOrder($field_order);

		return $fields;
	}

	public function getThumbnail() {
		if($this->Image()) {
			return $this->Image()->CMSThumbnail();
		} else {
			return _t('CarouselImage.NOIMAGE','(No Image)');
		}
	}
}
