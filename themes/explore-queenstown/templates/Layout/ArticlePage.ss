<main>
    <% include Breadcrumbs %>
        <div class="container-fluid">
            <div class="row"> 
                <section class="col col-sm-9 col-xs-12">
                <% loop $Children %>
                    <div id="$ID">
                        <div class="well">
                            <img src="$Photo.URL" class="img-responsive center-block img-rounded" alt="$Title">
                        </div>
                        <div class="panel panel-default">
                          <div class="panel-heading">
                            <h3 class="panel-title">$Title</h3>
                          </div>
                          <div class="panel-body">
                              <ul class="nav nav-tabs" role="tablist">
                                  <li role="presentation" class="active"><a role="tab" data-toggle="tab" href="#info_$ID">Info</a></li>
                                  <li role="presentation"><a role="tab" data-toggle="tab" href="#price_$ID">Price</a></li>
                               </ul>
                               <div class="tab-content">
                               <section id="info_$ID" class="tab-pane active">
                                 <p>
                                    <% if $Teaser %>
                                        $Teaser
                                    <% else %>
                                        $Content.FirstSentence
                                    <% end_if %>
                                  </p>
                                </section>
                                <section id="price_$ID" class="tab-pane">
                                    <h4>$Title:</h4>
                                    <p>$Price_Description</p>
                                    <p>Adult - $Price_Adult.nice</p>
                                    <% if $Price_Child > 0 %>
                                    <p>Child - $Price_Child.nice</p>
                                    <% end_if %>
                                </section>
                                </div> <!-- tab-content -->
                          </div>
                          <div class="panel-footer">
                              
                            <!-- Modal book now --> 
                            <button type="button" class="btn btn-lg btn-danger center-block" data-toggle="modal" data-target="#booknow">Book Now</button>
                            <div class="modal fade" id="booknow" tabindex="-1" role="dialog" aria-labelledby="booknow">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="h1" aria-hidden="true">&times;</span></button>
                                    <h3 class="modal-title text-primary h3" id="booknowLabel">Book Now</h3>
                                  </div>
                                  
                                    <form method="post" action="mailto:damieneskimo@gmail.com" enctype="text/plain" autocomplete="on">
                                        <div class="modal-body">
                                          <div class="form-group">
                                            <label for="name" class="control-label">Your Name:</label>
                                            <input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required autofocus>
                                          </div>
                                          <div class="form-group">
                                            <label for="email" class="control-label">Your Email:</label>
                                            <input type="email" class="form-control" id="email" name="email" placeholder="email" required>
                                          </div> 
                                          <div class="form-group">
                                              <select id="select" name="select" class="form-control" required>
                                                  <option value="" class="disabled">Choose Your Favorite One</option>
                                                  <option value="Kawarau Bridge Bungy">Kawarau Bridge Bungy</option>
                                                  <option value="The Ledge Bungy">The Ledge Bungy</option>
                                                  <option value="The Nevis Bungy">The Nevis Bungy</option>
                                              </select>
                                          </div>
                                          <div class="form-group">
                                            <label for="date" class="control-label">Choose Your Lucky Day:</label>
                                            <input type="date" class="form-control" id="date" name="date" required>  
                                          </div>
                                          <div class="form-group">
                                            <label for="message-text" class="control-label">Message:</label>
                                            <textarea class="form-control" id="message-text" name="message" placeholder="Anything you wanna tell us"></textarea>
                                          </div>
                                        </div> <!-- modal-body -->
                                        <div class="modal-footer">
                                            <input type="submit" value="BOOK" class="btn btn-lg btn-danger center-block">
                                        </div>
                                    </form>
                    
                                </div><!-- modal-content -->
                              </div><!-- modal-dialog -->
                            </div><!-- .modal fade --> 
                          </div> <!-- panel-footer --> 
                        </div><!-- panel panel-default -->
                    </div><!-- kawarau_bungy -->
                    <% end_loop %>
                </section>
                
                <% include Scrollspy %>
            </div><!-- row -->
        </div><!-- container-fluid -->
        
    </main>