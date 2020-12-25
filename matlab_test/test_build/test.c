/*
 * test.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "test".
 *
 * Model version              : 2.55
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C source code generated on : Tue Dec 22 20:38:06 2020
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
  ExtU_test_T *test_U = (ExtU_test_T *) test_M->inputs;
  ExtY_test_T *test_Y = (ExtY_test_T *) test_M->outputs;
  int32_T q0_0;
  uint32_T w[44];
  uint32_T q0;
  uint32_T qY;
  uint32_T w10;
  uint32_T w11;
  uint32_T w31;
  uint32_T w32;
  uint32_T w34;
  uint32_T w35;
  uint32_T w36;
  uint32_T w38;
  uint32_T w39;
  uint32_T w40;
  uint32_T w42;
  uint32_T w43;
  uint32_T w7;
  uint32_T w8;

  /* MATLAB Function: '<Root>/MATLAB Function1' incorporates:
   *  Inport: '<Root>/state'
   *  Inport: '<Root>/state1'
   *  Inport: '<Root>/state10'
   *  Inport: '<Root>/state11'
   *  Inport: '<Root>/state12'
   *  Inport: '<Root>/state13'
   *  Inport: '<Root>/state14'
   *  Inport: '<Root>/state15'
   *  Inport: '<Root>/state2'
   *  Inport: '<Root>/state3'
   *  Inport: '<Root>/state4'
   *  Inport: '<Root>/state5'
   *  Inport: '<Root>/state6'
   *  Inport: '<Root>/state7'
   *  Inport: '<Root>/state8'
   *  Inport: '<Root>/state9'
   */
  w[0] = ((((uint32_T)test_U->state << 8) + test_U->state1) << 8) +
    test_U->state2;
  w[0] = (w[0] << 8) + test_U->state3;
  q0_0 = (int32_T)((uint32_T)test_U->state4 << 8);
  qY = (uint32_T)q0_0 + test_U->state5;
  if (qY < (uint32_T)q0_0) {
    qY = MAX_uint32_T;
  }

  q0 = qY << 8;
  qY = q0 + test_U->state6;
  if (qY < q0) {
    qY = MAX_uint32_T;
  }

  q0 = qY << 8;
  qY = q0 + test_U->state7;
  if (qY < q0) {
    qY = MAX_uint32_T;
  }

  w[1] = qY;
  q0_0 = (int32_T)((uint32_T)test_U->state8 << 8);
  qY = (uint32_T)q0_0 + test_U->state9;
  if (qY < (uint32_T)q0_0) {
    qY = MAX_uint32_T;
  }

  q0 = qY << 8;
  qY = q0 + test_U->state10;
  if (qY < q0) {
    qY = MAX_uint32_T;
  }

  q0 = qY << 8;
  qY = q0 + test_U->state11;
  if (qY < q0) {
    qY = MAX_uint32_T;
  }

  w[2] = qY;
  q0_0 = (int32_T)((uint32_T)test_U->state12 << 8);
  qY = (uint32_T)q0_0 + test_U->state13;
  if (qY < (uint32_T)q0_0) {
    qY = MAX_uint32_T;
  }

  q0 = qY << 8;
  qY = q0 + test_U->state14;
  if (qY < q0) {
    qY = MAX_uint32_T;
  }

  q0 = qY << 8;
  qY = q0 + test_U->state15;
  if (qY < q0) {
    qY = MAX_uint32_T;
  }

  w[3] = qY;
  qY = w[0] ^ w[3];
  q0 = qY ^ w[1];
  w7 = q0 ^ w[2];
  w8 = w7 ^ w[3];
  w10 = qY ^ q0;
  w11 = w10 ^ w7;
  w31 = 0U ^ qY;
  w32 = w31 ^ 0U;
  w34 = qY ^ 0U;
  w35 = w34 ^ w31;
  w36 = w35 ^ w32;
  w38 = qY ^ w34;
  w39 = w38 ^ w35;
  w40 = w39 ^ w36;
  w42 = qY ^ w38;
  w43 = w42 ^ w39;

  /* Outport: '<Root>/temp_state' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state = w[0];

  /* Outport: '<Root>/temp_state1' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state1 = w[1];

  /* Outport: '<Root>/temp_state2' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state2 = w[2];

  /* Outport: '<Root>/temp_state3' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state3 = w[3];

  /* Outport: '<Root>/temp_state4' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state4 = qY;

  /* Outport: '<Root>/temp_state5' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state5 = q0;

  /* Outport: '<Root>/temp_state6' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state6 = w7;

  /* Outport: '<Root>/temp_state7' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state7 = w8;

  /* Outport: '<Root>/temp_state8' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state8 = qY;

  /* Outport: '<Root>/temp_state9' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state9 = w10;

  /* Outport: '<Root>/temp_state10' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state10 = w11;

  /* Outport: '<Root>/temp_state11' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state11 = w11 ^ w8;

  /* Outport: '<Root>/temp_state12' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state12 = qY;

  /* Outport: '<Root>/temp_state13' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state13 = 0U;

  /* Outport: '<Root>/temp_state14' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state14 = 0U;

  /* Outport: '<Root>/temp_state15' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state15 = 0U;

  /* Outport: '<Root>/temp_state16' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state16 = qY;

  /* Outport: '<Root>/temp_state17' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state17 = qY;

  /* Outport: '<Root>/temp_state18' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state18 = qY;

  /* Outport: '<Root>/temp_state19' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state19 = qY;

  /* Outport: '<Root>/temp_state20' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state20 = qY;

  /* Outport: '<Root>/temp_state21' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state21 = 0U;

  /* Outport: '<Root>/temp_state22' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state22 = qY;

  /* Outport: '<Root>/temp_state23' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state23 = 0U;

  /* Outport: '<Root>/temp_state24' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state24 = qY;

  /* Outport: '<Root>/temp_state25' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state25 = qY;

  /* Outport: '<Root>/temp_state26' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state26 = qY;

  /* Outport: '<Root>/temp_state27' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state27 = 0U;

  /* Outport: '<Root>/temp_state28' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state28 = qY;

  /* Outport: '<Root>/temp_state29' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state29 = 0U;

  /* Outport: '<Root>/temp_state30' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state30 = w31;

  /* Outport: '<Root>/temp_state31' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state31 = w32;

  /* Outport: '<Root>/temp_state32' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state32 = qY;

  /* Outport: '<Root>/temp_state33' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state33 = w34;

  /* Outport: '<Root>/temp_state34' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state34 = w35;

  /* Outport: '<Root>/temp_state35' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state35 = w36;

  /* Outport: '<Root>/temp_state36' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state36 = qY;

  /* Outport: '<Root>/temp_state37' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state37 = w38;

  /* Outport: '<Root>/temp_state38' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state38 = w39;

  /* Outport: '<Root>/temp_state39' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state39 = w40;

  /* Outport: '<Root>/temp_state40' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state40 = qY;

  /* Outport: '<Root>/temp_state41' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state41 = w42;

  /* Outport: '<Root>/temp_state42' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state42 = w43;

  /* Outport: '<Root>/temp_state43' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function1'
   */
  test_Y->temp_state43 = w43 ^ w40;
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
    ExtU_test_T *test_U = (ExtU_test_T *) test_M->inputs;
    ExtY_test_T *test_Y = (ExtY_test_T *) test_M->outputs;

    /* external inputs */
    (void)memset(test_U, 0, sizeof(ExtU_test_T));

    /* external outputs */
    (void) memset((void *)test_Y, 0,
                  sizeof(ExtY_test_T));
  }

  return test_M;
}
