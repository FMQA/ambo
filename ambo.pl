#!/usr/bin/perl 
use strict;
use warnings;
use Time::HiRes;

my $total_flashes = 15;
my $total_double_flashes = $total_flashes * 2;


for (my $i=0; $i <= $total_flashes; $i++) {
	`blink-tool --red -m 0 -l 1; blink-tool --rgb=red -m 0 -l 2;`;
	Time::HiRes::sleep(0.16);

	`blink-tool --off -m 0; blink-tool --blue -m 0 -l 1; blink-tool --rgb=blue -m 0 -l 2;`;
	Time::HiRes::sleep(0.16);
	}

	#Flicker both colours:
	for (my $i=0; $i <= $total_double_flashes; $i++) {
	`blink-tool --off -m 0; blink-tool --rgb=0,0,250 -m 0 -l 1; blink-tool --rgb=255,0,0 -m 0 -l 2`;
	Time::HiRes::sleep(0.2);
	`blink-tool --off -m 0; blink-tool --rgb=0,0,250 -m 0 -l 1; blink-tool --rgb=255,0,0 -m 0 -l 2`;
	Time::HiRes::sleep(0.2);
	`blink-tool --off -m 0; blink-tool --rgb=255,0,0 -m 0 -l 1; blink-tool --rgb=0,0,255 -m 0 -l 2`;
	Time::HiRes::sleep(0.2);
	`blink-tool --off -m 0; blink-tool --rgb=255,0,0 -m 0 -l 1; blink-tool --rgb=0,0,255 -m 0 -l 2`;
	Time::HiRes::sleep(0.2);

}
`blink-tool --red`;
