<main>
    <% include Breadcrumbs %>
    
    <div class="container-fluid">
        <div class="row">           
            <div class="col col-sm-offset-1 col-sm-10">
                <p class="page-header text-info h2">$Title</p>
                <p>$Content</p>
                <p class="page-header text-info h2">Meet Our Team</p>
                <% loop $Children %>
                    <div class="media">
                        <div class="media-left media-middle">
                            <img class="media-object img-rounded" src="$photo.URL" alt="photo of $Title">
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading text-primary h4"> $Role - $Name</h4>
                            <p>$Intro</p>
                            <p><span class="glyphicon glyphicon-inbox" aria-hidden="true"></span> Email: <a href="mailto:$Email">$Email</a></p>
                        </div>
                    </div> <!-- media -->
                <% end_loop %>
            </div> <!-- col -->
        </div><!-- row -->
    </div> <!-- container-fluid -->
</main>