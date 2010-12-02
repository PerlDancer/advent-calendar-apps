use Dancer;
use mobile;

set 'template' => 'template_toolkit';

layout 'main';

before sub {
    my $tokens = shift;

    var orig_layout => setting('layout');

    if ( is_mobile_device() ) {
        setting layout => 'mobile';
    }
};

get '/' => sub {
    template 'index.tt', {
        text => 'this is our content',
        css_url => request->base.'css/style.css',
    };
};

after sub {
    setting layout => vars->{orig_layout};
};

dance;

1;

