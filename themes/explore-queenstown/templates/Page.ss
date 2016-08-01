<!DOCTYPE html>
<html lang="en">
<head>
<!-- use base_tag in Silverstripe to set the baseUrl for all the css and js -->
  <% base_tag %>
  <!-- generate Silverstripe meta tags automatically  -->
  $MetaTags(false)
  <title>$Title</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--<meta name="description" content="Explore Queenstown - the topmost website providing the information of activities and sports, accommodation, food and drink and other things for any Queenstown tourists. ">
  <meta name="robots" content="follow, index"> 
  -->
</head>
<body id="home" data-spy="scroll" data-target="#scrollspy">
    <% include Header %>

    $Layout
    
    <% include Footer %>
</body>
</html>