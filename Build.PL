
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Object-oriented interface for Rinci metadata",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-Object",
  "dist_version" => "0.07",
  "license" => "perl",
  "module_name" => "Perinci::Object",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Rinci" => "1.1.0",
    "Test::Exception" => 0,
    "Test::More" => "0.96",
    "perl" => "5.010000"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
