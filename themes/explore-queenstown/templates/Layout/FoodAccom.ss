<main>
    <% include Breadcrumbs %>
        
    <div class="container-fluid">
        <div class="row">
            <section class="col col-sm-9">
                <% loop $Children %>
                <div id="$ID">
                    <h2 class="page-header text-danger h2">$Title</h2>
                    <div class="food_img">
                        <img src="$Photo.URL" class="img-responsive center-block img-rounded" alt="image of $Title">
                    </div> 
                    
                    <div class="panel-group" id="accordion_$ID" role="tablist" aria-multiselectable="true">
                    <!-- collapseZero -->
                        
                    <div class="panel panel-default">
                        <a role="button" data-toggle="collapse" data-parent="#accordion_$ID" href="#collapseOne_$ID" aria-expanded="true" aria-controls="collapseOne_$ID">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    Brief Introduction 
                                </h4>
                            </div> <!-- panel-heading -->
                        </a>
                        <div id="collapseOne_$ID" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <p>$Intro</p>
                            </div>
                        </div><!-- #collapseOne -->
                    </div><!-- .panel panel-default -->
                        
                    <div class="panel panel-default">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_$ID" href="#collapseTwo_$ID" aria-expanded="false" aria-controls="collapseTwo_$ID">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title">Opening Hours</h4>
                        </div>
                    </a>
                    <div id="collapseTwo_$ID" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                        <p>$Opening_Hours</p>
                        </div>
                    </div><!-- #collapseTwo -->
                    </div><!-- .panel panel-default -->
                        
                    <div class="panel panel-default">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_$ID" href="#collapseThree_$ID" aria-expanded="false" aria-controls="collapseThree_$ID">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title">Contact Info</h4>
                        </div>
                    </a>
                    <div id="collapseThree_$ID" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">
                            <!-- Table -->
                            <table class="table">
                                <tbody>
                                    <tr class="success">
                                        <th scope="row">Contact: </th>
                                        <td>$Contact_Person</td>
                                    </tr>
                                    <tr class="info">
                                        <th scope="row">Mobile: </th>
                                        <td>$Contact_Phone</td>
                                    </tr>
                                    <tr class="warning">
                                        <th scope="row">Address: </th>
                                        <td>$Contact_Address</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div><!-- .panel-body  -->
                    </div><!-- #collapseThree -->
                    </div><!-- panel panel-default -->
                </div> <!-- panel-group #accordin -->
                </div><!-- #Prime_Waterfront -->
                <% end_loop %>
            </section>
            
            <% include Scrollspy %>
        </div><!-- row -->
    </div><!-- container-fluid -->
    

</main>