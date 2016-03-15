The acceptance test runs several python scripts that simply import some uninstalled libraries.
The Data Powered Crash Solver is supposed to install those missing libraries. After the DPCS has installed the library, the test runs the python script again to find out if the library was installed correctly.

Note that the tests assume that the DPCS works automatically.

Test_api is a temporary file that perhaps will be used to create complete unit tests of the API.
