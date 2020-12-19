/*
 * test.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "test".
 *
 * Model version              : 2.16
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C source code generated on : Sat Dec 12 15:18:16 2020
 *
 * Target selection: systemverilog_dpi_grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "test_capi.h"
#include "test.h"
#include "test_private.h"

/* Model output function */
void test_output(RT_MODEL_test_T *const test_M)
{
  B_test_T *test_B = test_M->blockIO;
  ExtU_test_T *test_U = (ExtU_test_T *) test_M->inputs;
  ExtY_test_T *test_Y = (ExtY_test_T *) test_M->outputs;
  uint64_T tmp;

  /* MATLAB Function: '<Root>/Module_one' incorporates:
   *  Inport: '<Root>/in1'
   *  Inport: '<Root>/in2'
   *  Inport: '<Root>/in3'
   */
  tmp = (uint64_T)test_U->in1 * test_U->in2;
  if (tmp > 4294967295ULL) {
    tmp = 4294967295ULL;
  }

  tmp = (uint64_T)(uint32_T)tmp * test_U->in3;
  if (tmp > 4294967295ULL) {
    tmp = 4294967295ULL;
  }

  test_B->y_c = (uint32_T)tmp;

  /* End of MATLAB Function: '<Root>/Module_one' */

  /* MATLAB Function: '<Root>/Module_one1' */
  tmp = (uint64_T)test_B->y_c * test_B->y_c;
  if (tmp > 4294967295ULL) {
    tmp = 4294967295ULL;
  }

  tmp = (uint64_T)(uint32_T)tmp * test_B->y_c;
  if (tmp > 4294967295ULL) {
    tmp = 4294967295ULL;
  }

  /* Outport: '<Root>/out1' incorporates:
   *  MATLAB Function: '<Root>/Module_one1'
   */
  test_Y->out1 = (uint32_T)tmp;
}

/* Model update function */
void test_update(RT_MODEL_test_T *const test_M)
{
  UNUSED_PARAMETER(test_M);

  /* (no update code required) */
}

/* Model initialize function */
void test_initialize(RT_MODEL_test_T *const test_M)
{
  UNUSED_PARAMETER(test_M);
}

/* Model terminate function */
void test_terminate(RT_MODEL_test_T * test_M)
{
  /* model code */
  rt_FREE(test_M->blockIO);
  rt_FREE(test_M->inputs);
  rt_FREE(test_M->outputs);
  rt_FREE(test_M);
}

/* Model data allocation function */
RT_MODEL_test_T *test(void)
{
  RT_MODEL_test_T *test_M;
  test_M = (RT_MODEL_test_T *) malloc(sizeof(RT_MODEL_test_T));
  if (test_M == NULL) {
    return NULL;
  }

  (void) memset((char *)test_M, 0,
                sizeof(RT_MODEL_test_T));

  /* block I/O */
  {
    B_test_T *b = (B_test_T *) malloc(sizeof(B_test_T));
    rt_VALIDATE_MEMORY(test_M,b);
    test_M->blockIO = (b);
  }

  /* external inputs */
  {
    ExtU_test_T *test_U = (ExtU_test_T *) malloc(sizeof(ExtU_test_T));
    rt_VALIDATE_MEMORY(test_M,test_U);
    test_M->inputs = (((ExtU_test_T *) test_U));
  }

  /* external outputs */
  {
    ExtY_test_T *test_Y = (ExtY_test_T *) malloc(sizeof(ExtY_test_T));
    rt_VALIDATE_MEMORY(test_M,test_Y);
    test_M->outputs = (test_Y);
  }

  /* Initialize DataMapInfo substructure containing ModelMap for C API */
  test_InitializeDataMapInfo(test_M);

  {
    B_test_T *test_B = test_M->blockIO;
    ExtU_test_T *test_U = (ExtU_test_T *) test_M->inputs;
    ExtY_test_T *test_Y = (ExtY_test_T *) test_M->outputs;

    /* block I/O */
    (void) memset(((void *) test_B), 0,
                  sizeof(B_test_T));

    /* external inputs */
    (void)memset(test_U, 0, sizeof(ExtU_test_T));

    /* external outputs */
    test_Y->out1 = 0U;
  }

  return test_M;
}
