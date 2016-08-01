<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

	public function snake_case($var) {
		$var_array = explode(' ', $var);
		$new_var = implode('_', $var_array);

		return $new_var;
	}

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements

		Requirements::css('https://fonts.googleapis.com/css?family=Nixie+One');
		Requirements::css('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css');
		// Requirements::css('{$this->ThemeDir()}/css/style.css');
		Requirements::css("{$this->ThemeDir()}/css/style.css");
		Requirements::css('https://fonts.googleapis.com/css?family=Nixie+One');
		Requirements::javascript('https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js');
		Requirements::javascript('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js');
		Requirements::javascript("{$this->ThemeDir()}/js/script.js");

	}

}
