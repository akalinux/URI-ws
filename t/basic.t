use strict;
use warnings;
use Test::More tests => 6;
use URI;

do{
  my $uri = URI->new('ws://127.0.0.1/foo');
  isa_ok $uri, 'URI::ws';
  is $uri->port, '80', 'default port = 80';
  is $uri->scheme, 'ws', 'scheme = ws';
};

do {
  my $uri = URI->new('wss://127.0.0.1/foo');
  isa_ok $uri, 'URI::wss';
  is $uri->port, '443', 'default port = 443';
  is $uri->scheme, 'wss', 'scheme = wss';
};
