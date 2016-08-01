<% if CarouselElements.Exists %>
	<section class="image-carousel">
		<div id="carousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<% loop $CarouselElements %>
					<li data-target="#carousel" data-slide-to="$Pos(0)" class="indicator-pos"></li>
				<% end_loop %>
			</ol>
			<div class="carousel-inner" role="listbox">
				<% loop $CarouselElements %>
					<div class="item">
						<% if $LinkedPage %>
							<a href="$LinkedPage.Link"<% if $LinkTargetBlank %> target="_blank"<% end_if %>>
						<% end_if %>
						$SizedImage
						<% if $Caption %>
							<div class="carousel-caption">
								$Caption.RAW
							</div>
						<% end_if %>
						<% if $Link %></a><% end_if %>
					</div>
				<% end_loop %>
			</div>
			<a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only"><%t CarouselPage.PREVIOUS 'Previous' %></span>
			  </a>
			  <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only"><%t CarouselPage.NEXT 'Next' %></span>
			  </a>
		</div>
	</section>
<% end_if %>

<script type="text/javascript">
	$(document).ready(function() {
		$('#carousel').find('.item').first().addClass('active');
		$('#carousel').find('.indicator-pos').first().addClass('active');
	});
</script>
