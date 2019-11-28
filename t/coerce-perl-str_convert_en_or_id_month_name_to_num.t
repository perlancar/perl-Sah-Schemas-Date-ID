#!perl

use 5.010001;
use strict;
use warnings;
use Test::More 0.98;
use Test::Needs;

use Data::Sah::Coerce qw(gen_coercer);

subtest "basics" => sub {
    my $c = gen_coercer(type=>"int", coerce_rules=>["From_str::convert_en_or_id_month_name_to_num"]);

    subtest "uncoerced" => sub {
        is_deeply($c->([]), [], "uncoerced");
        is_deeply($c->("foo"), "foo", "uncoerced");
    };
    subtest "coerced" => sub {
        is($c->("jan"), 1);
        is($c->("DEC"), 12);
        is($c->("DESEMBER"), 12);
    };
};

done_testing;
