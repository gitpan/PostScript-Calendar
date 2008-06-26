#! /usr/bin/perl -T
#---------------------------------------------------------------------
# $Id: pod-coverage.t 1734 2007-04-06 02:07:25Z cjm $
#---------------------------------------------------------------------

use Test::More;

eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage"
    if $@;

my @private = map { qr/^$_/ } qw(
  Add_Delta_ calc_ compute_ ev[A-Z] firstdef get_metrics
  print_ psstring round wrap_events
);

all_pod_coverage_ok({
  also_private => \@private,
});