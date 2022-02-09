use Test2::V0;
use Test::Alien;
use Test::Alien::Diag;
use Alien::SWIG;

alien_diag 'Alien::SWIG';
alien_ok 'Alien::SWIG';

run_ok([ qw(swig -version) ])
   ->success
   ->out_like(qr/SWIG Version ([0-9\.]+)/);

done_testing;
