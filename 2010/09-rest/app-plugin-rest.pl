use Dancer;
use Dancer::Plugin::REST;

prepare_serializer_for_format;

resource user => 
    'get'    => \&on_get_user,
    'create' => \&on_create_user,
    'delete' => \&on_delete_user,
    'update' => \&on_update_user;

sub on_get_user {
    debug("fetching information from user");
    status_ok( { id => params->{id}, name => 'franck' } );
}

sub on_create_user {
    debug("we're creating a new user");
    status_created( { user => params->{id} } );
}

sub on_delete_user {
    debug("we're deleting existing user");
    status_no_content();
}

sub on_update_user {
    debug("updating existing user");
    status_accepted({user => params->{id}});
}

dance;
