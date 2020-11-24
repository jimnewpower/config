/*
 * Unit test (see ctest() function defined in ~/.bash_functions)
 */
#include <assert.h>
#include <float.h>
#include <math.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int this_test_is_verbose = 0;

/*
 * Function:  run_unit_test
 * ------------------------
 * Processes command line arguments
 *
 *  returns: the number of tests that failed (0 implies all tests passed)
 */
static int run_unit_test(void) {
    int n_failures = 0;

    // TODO
    // BEGIN remove this
        fprintf(stderr, "%s:%i: No tests defined.\n", __FILE__, __LINE__);
        n_failures++;
    // END remove this

    // TODO: put unit test code here

    return n_failures;
}
/* ----------------------------------------------------------------------- */

/*
 * Function:  process_command_line()
 * ---------------------------------
 * Processes command line arguments
 *
 *  argc   : number of command line arguments, including program itself (arg0)
 *  argv   : array of command line arguments
 *
 *  returns: the number of tests that failed (0 implies all tests passed)
 */
static int process_command_line(int argc, char *argv[]) {
    int args_remaining = argc;

    if (argc == 2
        && (strcmp(argv[1], "-v") == 0
         || strcmp(argv[1], "--verbose") == 0)) {
        this_test_is_verbose = 1;
        args_remaining--;
    }

    if (args_remaining != 1) {
        fprintf(
            stderr,
            "\nUSAGE: %s [OPTION]\n"
            "\nOPTIONS\n"
            "        -v, --verbose\n"
            "                Run with verbose output.\n\n",
            argv[0]
        );
        return 1;
    }

    return 0;
}
/* ----------------------------------------------------------------------- */

/*
 * Function:  main
 * --------------------
 * Checks command line arguments, then runs the unit tests.
 *
 *  optional -v or --verbose: print detailed info to standard output
 *
 *  returns: the number of tests that failed (0 implies all tests passed)
 */
int main(int argc, char *argv[]) {
    if (process_command_line(argc, argv))
        return 1;

    return run_unit_test();
}
/* ----------------------------------------------------------------------- */
