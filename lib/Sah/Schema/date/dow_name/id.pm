package Sah::Schema::date::dow_name::id;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [cistr => {
    summary => 'Day-of-week name (abbreviated or full, in Indonesian)',
    in => [
        qw/mg sn sl rb km jm sb/,
        qw/min sen sel rab kam jum sab/,
        qw/minggu senin selasa rabu kamis jumat sabtu/,
    ],
    examples => [
        {value=>'', valid=>0},
        {value=>'mg', valid=>1},
        {value=>'min', valid=>1},
        {value=>'minggu', valid=>1},
        {value=>'sun', valid=>0, summary=>'English'},
        {value=>1, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
