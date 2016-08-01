<section class="col col-sm-3 hidden-xs" id="scrollspy">
    <ul class="nav nav-list nav-center list-group" data-spy="affix" data-offset="100">  
        <% loop $Children %>
            <li class="list-group-item active"><a href="$Parent.AbsoluteLink#$ID" >$Title</a></li>
        <% end_loop %>
    </ul>
</section>