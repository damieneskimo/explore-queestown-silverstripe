<header>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <!-- $AbsoluteBaseURL magic variable in Silverstripe to get to the homepage -->
            <a class="navbar-brand" href="$AbsoluteBaseURL">
            <span>Explore</span>
            <span>Queenstown</span>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-1">
            <ul class="nav nav-pills nav-justified">
            <% loop $Menu(1) %>
            <li><a class="$LinkingMode" href="$Link">$MenuTitle<span class="sr-only"></span></a>
            </li>
            <% end_loop %>
            </ul>
        
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</header>