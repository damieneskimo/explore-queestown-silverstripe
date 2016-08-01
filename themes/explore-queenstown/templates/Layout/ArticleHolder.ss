<main>
    <% include Breadcrumbs %>
        
    <div class="container-fluid">
        <div class="row">
            <section class="col col-sm-9">
                <% loop $Children %>
                <div id="$ID">
                    <a href="$Link"><h2 class="page-header text-danger h2">$Title</h2></a>
                    
                    <div class="panel-group" id="accordion-$ID" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <a role="button" data-toggle="collapse" data-parent="#accordion-$ID" href="#collapse-$ID" aria-expanded="true" aria-controls="collapse-$ID">
                                <div class="panel-heading" role="tab" id="heading-$ID">
                                    <h4 class="panel-title">
                                        Brief Introduction 
                                    </h4>
                                </div> <!-- panel-heading -->
                            </a>
                            <div id="collapse-$ID" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <p>$Content</p>
                                </div>
                            </div><!-- #collapseOne -->
                        </div><!-- .panel panel-default -->
                    </div> <!-- panel-group #accordin -->
                </div> <!-- div #ID -->
                <% end_loop %>
            </section>
            
            <% include Scrollspy %>
        </div><!-- row -->
    </div><!-- container-fluid -->
    
</main>