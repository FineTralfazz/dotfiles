function pkg
	switch (uname)
case FreeBSD
pkg $argv
case Darwin
brew $argv
case Linux
switch (lsb_release -is)
case Ubuntu Debian
apt $argv
case CentOS
yum $argv
end
end
end
