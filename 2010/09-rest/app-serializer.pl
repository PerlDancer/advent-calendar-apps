use Dancer;

set serializer => 'mutable';

get '/user/:id' => sub {
    return {username => 'franck', id => params->{id}};
};

dance;
