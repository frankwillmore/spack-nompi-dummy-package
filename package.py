from spack import *


class SpackDummyPackage(MakefilePackage):
    """A non-mpi hello world that is packaged for spack."""

    homepage = "http://www.anl.gov"
    git      = "https://github.com/frankwillmore/spack-nompi-dummy-package.git"

    version('master', branch='master')

    def edit(self, spec, prefix):
        env['PREFIX'] = prefix

    def install(self, spec, prefix):
        # print("Got prefix = " + prefix)
        # configure("--prefix={0}", format(prefix))
        make()
        make('install')
        make('check')
