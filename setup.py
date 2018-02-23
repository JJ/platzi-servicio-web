from setuptools import setup, find_packages
import distutils.cmd
import subprocess

class GunicornCommand(distutils.cmd.Command):
  """A custom command to run Pylint on all Python source files."""

  description = 'ejecuta gunicorn'
  user_options = []

  def initialize_options(self):
      pass 

  def finalize_options(self):
      pass
  
  def run(self):
    """Run command."""
    command = ['gunicorn -b 0.0.0.0:8000 hitor:app']
    self.announce(
        'Running command: %s' % str(command),
        level=distutils.log.INFO)
    subprocess.check_call(command, shell=True)

setup(
    name='hitor',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'flask',
        'hitor',
    ],
    tests_require = [
        'pytest',
    ],
    test_suite = 'tests',
    cmdclass={
        'run': GunicornCommand,
    },
    
)
