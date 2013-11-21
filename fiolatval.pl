#! /usr/bin/perl

print "Script Started \n";
my $result=`fio randread --output rrresults.txt`;
my $out=`rm -rf /root/test`;

my $result=`fio randwrite --output rwresults.txt`;
my $out=`rm -rf /root/test`;

my $result=`fio seqread --output srresults.txt`;
my $out=`rm -rf /root/test`;

my $result=`fio seqwrite --output swresults.txt`;
my $out=`rm -rf /root/test`;