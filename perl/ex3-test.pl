
@rock = qw /hello 12 world/;

print $#rock, "\n";
$rock[99] = 12;
print $#rock, "\n";
print 0 + @rock, "\n";