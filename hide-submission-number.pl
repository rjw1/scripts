#!/usr/bin/env perl

my $number = $ARGV[0];

use Crypt::Skip32::Base32Crockford;
my $key    = pack( 'H20', "42424242424242424242" ); # Always 10 bytes!
my $cipher = Crypt::Skip32::Base32Crockford->new($key);
my $b32    = $cipher->encrypt_number_b32_crockford($number);

print "$b32";
print "\n"
