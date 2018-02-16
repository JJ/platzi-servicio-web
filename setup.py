from setuptools import setup

setup(
    name='hitor',
    packages=['hitor'],
    include_package_data=True,
    install_requires=[
        'hitor',
    ],
    tests_require = [
        'pytest',
    ],
)
