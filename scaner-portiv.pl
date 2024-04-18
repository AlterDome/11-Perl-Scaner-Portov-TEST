#!/usr/bin/perl
use IO::Socket; # после того, как мы прошли все формальности, подключаем #сокеты.
if(@ARGV != 2) #если не указаны параметры, сообщаем как надо делать и выходим
{
print("Скрипту должно быть передано 2 параметра: файл, в котором хранятся ip-адреса сканируемых компьютеров, протокол (1 для tcp, 0 для UDP), начальный и конечный порт в виде адрес::протокол::начальный_порт::конечный_порт и файл, в который будут записываться результаты, например: scanner.pl ip.txt results.txt n нажмите для выхода");

}
else 
{
open(fl, ";)
close(fl); 
open(fl, ">>$ARGV[1]"); 
foreach $x (@ip) 
{
($ip_addr, $protocol, $from, $to) = split(/::/, $x); 
printf("$ip_addr ... n"); 
if($protocol == 1) 
{
$z = 'tcp';
}
else
{
if($protocol == 0)
{
$z == 'udp';
}
}
print fl " n open: n"; 
for($i = $from; $i new(Proto => $z, PeerPort => $i, PeerAddr => $ip_addr); 
if($socket) 
{
printf(fl "$i n"); 
printf("is open n"); 
}
else
{
printf("is not open n"); 
}
}
printf(fl " n"); 
printf("Done n"); 
}
close(fl); 
}
