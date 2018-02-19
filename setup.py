from setuptools import setup, find_packages

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

    
)
