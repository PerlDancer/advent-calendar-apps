package mobile;
use Dancer ':syntax';
use Dancer::Plugin;

register 'is_mobile_device' => sub {
    return request->user_agent =~ /(iPhone|Android|BlackBerry|Mobile|Palm)/;
};

register_plugin;
