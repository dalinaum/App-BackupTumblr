use inc::Module::Install;

name     'App-BackupTumblr';

all_from 'lib/App/BackupTumblr.pm';

author   q{Leonardo Kim <dalinaum@gmail.com>};

license  'perl';

repository 'git://github.com/dalinaum/App-BackupTumblr.git';

requires 'Module::Install';

requires 'JSON';

requires 'WWW::Tumblr';

requires 'File::Fetch';

build_requires 'Test::More';

system('pod2text lib/App/BackupTumblr.pm > README');

auto_install;

install_script 'bin/BackupTumblr';

WriteAll;

