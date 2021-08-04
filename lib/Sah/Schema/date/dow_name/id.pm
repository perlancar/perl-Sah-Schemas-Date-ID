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
    description => <<'_',

See also related schemas for other locales, e.g.
<pm:Sah::Schema::date::dow_name::en> (English),
<pm:Sah::Schema::date::dow_name::en_or_id> (English/Indonesian), etc.

_
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'mg', valid=>1},
        {value=>'min', valid=>1},
        {value=>'minggu', valid=>1},
        {value=>'sun', valid=>0, summary=>'English'},
        {value=>1, valid=>0, summary=>'Not a name'},
    ],
}];

1;

# ABSTRACT:
