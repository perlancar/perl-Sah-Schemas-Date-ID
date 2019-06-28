package Data::Sah::Coerce::perl::int::str_convert_id_dow_name_to_num;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub meta {
    +{
        v => 4,
        prio => 50,
    };
}

sub coerce {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};
    my $pkg = __PACKAGE__;

    $res->{expr_match} = "!ref($dt)";
    $res->{expr_coerce} = join(
        "",
        "do { ",

        # since this is a small translation table we put it inline, but for
        # larger translation table we should move it to a separate perl module
        "\$$pkg\::dow_nums ||= {",
        "  sn=>1, sen=>1, senin=>1, ",
        "  sl=>2, sel=>2, selasa=>2, ",
        "  ra=>3, rb=>3, rab=>3, rabu=>3, ",
        "  ka=>4, km=>4, kam=>4, kamis=>4, ",
        "  ju=>5, jm=>5, jum=>5, jumat=>5, 'jum\\'at'=>5, ",
        "  sa=>6, sb=>6, sab=>6, sabtu=>6, ",
        "  mi=>7, mg=>7, min=>7, mgg=>7, minggu=>7, ",
        "}; ",
        "\$$pkg\::dow_nums->{lc $dt} || $dt; ",
        "}",
    );

    $res;
}

1;
# ABSTRACT: Convert Indonesian day-of-week name (e.g. Mg, Sen, Selasa) to number (1-7, 1=Monday/Senin)

=for Pod::Coverage ^(meta|coerce)$

=head1 DESCRIPTION

This rule can convert Indonesian day-of-week names like:

 Mg
 SEN
 selasa

to corresponding day-of-week numbers (i.e. 7, 1, 2 in the examples above).
Unrecognized strings will just be passed as-is.


=head1 SEE ALSO

L<str_convert_en_dow_name_to_num|Data::Sah::Coerce::perl::int::str_convert_en_dow_name_to_num>

L<str_convert_locale_dow_name_to_num|Data::Sah::Coerce::perl::int::str_convert_locale_dow_name_to_num>
