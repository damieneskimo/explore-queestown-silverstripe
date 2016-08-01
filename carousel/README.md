## Silverstripe Bootstrap Carousel Module

## Description
This module is used to implement a Bootstrap Carousel to a Silverstripe Project and be able to manage the images displayed in it from the CMS Admin interface

NOTE: This module is suitable for Designers/Developers. It is not recommended to be used for content editors as they will need access to the Page Template (ie. PageName.ss) to correctly implement the carousel to the page

## Author
This module was created by Creative Gorillas (Sajan Sharma). The module is based from the "i-lateral/silverstripe-carousel" module created by [i-lateral](http://www.i-lateral.com)

## Installation
Manual Installation:
- Download Zip File
- Extract Zip File
- Locate folder inside Zip File
- Rename folder to "Carousel" - without quotations
- Place this Carousel folder into your projects root directory
- Run http://yoursiteurl/dev/build?flush=1

Composer Installtion:

=====================================================================
	composer require sajansharmanz/silverstripe-bootstrap-carousel
=====================================================================

- Run http://yoursiteurl/dev/build?flush=1

## Usage
Once successfully installed we are ready to implement the Carousel to a page

Add Carousel to Page:

- Login to the Silverstripe Admin Interface
- Select a Page from the Site Tree you wish to implement the Carousel too
- On the "Settings" tab of this page, enable the Carousel by ticking the "Add carousel to this page?" checkbox.
- Click Save and Publish (IMPORTANT!)
- The Width & Height override will show below the checkbox. This allows you to set the dimensions of the images that will be displayed in the carousel. If you are unsure what dimesions to use we recommend 1140 x 500 to begin with.
- Click Save and Publish if you made and changes to the override (IMPORTANT!)

Adding Images to Carousel:
- Go back to the "Content" tab of the page
- Select the sub-tab that says "Carousel" which should now be displayed next to the "Main Content" sub-tab. This is where you can add/remove images from the carousel
- Click the "Add Image" button
- Select a file you wish to upload
- Add a caption (Optional)
- Add a Sort Number - This is when the image should be displayed in the Carousel (ie. 1 = 1st, 2 = 2nd, 3 = 3rd, etc). If two elements share the same sort number the element that recieved it first will display first

Adding Template Variable: Now that you have added a carousel to a page, and provided it with images, we must do one last step for it to display on the page. 

- We must add the "$CarouselImages" (without quotations) variable to the Page Template that you are trying to display the carousel on

## License
This module is available under the BSD 3-clause

## Additional Information
You are not required to add the Bootstrap Framework to your project to get this Carousel working. I have included the necessary files for it to work within the module itself, therefore, it will work on any project out of the box

This is my first attempt at creating a Silverstripe Module, the i-lateral module was used as guidance and this module is an adaptation of that using the bootstrap framework. I have tested the module and it was working fine, however, if you find any errors or bugs, please let me know.

Good Luck and Enjoy!