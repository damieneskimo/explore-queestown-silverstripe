<main>
    <% include Breadcrumbs %>
    
    <div class="carousel slide hidden-xs" id="featured">
        $CarouselImages
    </div> <!--carousel slide -->
    
    <div class="content container-fluid">
        <div class="row">
            <% loop $showcaseOnHomepage %>
            <section class="col-xs-offset-1 col-xs-10 col-sm-offset-0 col-sm-4">
                <div class="thumbnail">
                    <div class="tm_img center-block">
                        <a href="$Link"><img class="circulation img-responsive center-block img-rounded" src="$Photo.URL" alt="explore queenstown skydiving"></a>
                    </div>
                    <div class="caption">
                        <h4 class="text-primary h4">$Title</h4>
                        <p>$Content</p> 
                        <a href="$Link" role="button" class="btn center-block">Explore More</a>
                    </div>
                </div>
            </section>
            <% end_loop %>
   
        </div>
    </div>
</main>