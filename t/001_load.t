use Test::More;
use Test::Exception;
use strict;
use warnings;
use DBI;
use lib '../lib';

my $dbh;
ok $dbh = DBI->connect('dbi:Neo4p:db=http://localhost:7474',
		      {RaiseError => 1}), 'create Neo4p dbh with full url';
ok $dbh = DBI->connect('dbi:Neo4p:db=localhost:7474',
		      {RaiseError => 1}), 'create Neo4p dbh with db';
ok $dbh = DBI->connect('dbi:Neo4p:host=localhost;port=7474',
		      {RaiseError => 1}), 'create Neo4p dbh with host, port';

done_testing();