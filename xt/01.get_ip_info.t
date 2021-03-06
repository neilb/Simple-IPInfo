#!/usr/bin/perl
use lib 'lib';
use Simple::IPInfo;
use Data::Dumper;
use utf8;

$Simple::IPInfo::DEBUG=1;


my $r = get_ip_info('202.38.64.10');
print Dumper($r);

my $rr = get_ip_info([ '202.38.64.10', '202.96.196.33' ]);
print Dumper($rr);

my $rr = get_ip_loc([ '202.38.64.10', '202.96.196.33' ]);
print Dumper($rr);

my $rr = get_ip_as([ '202.38.64.10', '202.96.196.33' ]);
print Dumper($rr);

my $rr = get_ip_loc([ '202.38.64.10', '202.96.196.33' ], use_ip_c =>1 );
my $r =  get_ipc_info('202.38.64.10', $rr);
print Dumper($rr, $r);
