#!perl

use 5.010;
use strict;
use warnings;
use Test::More 0.96;
use Test::Exception;

use Perinci::Object;

my $risub = risub {
    v => 1.1,
    summary => "English",
    "summary.alt.lang.id_ID" => "Bahasa",
};

is($risub->langprop("summary"), "English", "1 default");
is($risub->langprop("summary", {lang=>"id_ID"}), "Bahasa", "1 lang=id_ID");
is($risub->langprop("summary", {lang=>"fr_FR"}), "{en_US English}",
   "1 lang=fr_FR");

$risub = risub {
    v => 1.1,
    default_lang => "id_ID",
    description => "Ba\nhasa\n",
    "description.alt.lang.en_US" => "Eng\nlish\n",
};

is($risub->langprop("description"), "Eng\nlish\n", "2 default");
is($risub->langprop("description", {lang=>"id_ID"}), "Ba\nhasa\n",
   "2 lang=id_ID");
is($risub->langprop("description", {lang=>"fr_FR"}), "{en_US Eng\nlish}\n",
   "2 lang=fr_FR");

is($risub->langprop("description", {lang=>"fr_FR", mark_fallback_text=>0}),
   "Eng\nlish\n",
   "nomark");

done_testing();
