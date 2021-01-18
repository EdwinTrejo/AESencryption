/*
 * test.h
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

#ifndef RTW_HEADER_test_h_
#define RTW_HEADER_test_h_
#include <string.h>
#include <stddef.h>
#include "rtw_modelmap.h"
#ifndef test_COMMON_INCLUDES_
#define test_COMMON_INCLUDES_
#include <stdlib.h>
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#endif                                 /* test_COMMON_INCLUDES_ */

#include "test_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rt_defines.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetDataMapInfo
#define rtmGetDataMapInfo(rtm)         ((rtm)->DataMapInfo)
#endif

#ifndef rtmSetDataMapInfo
#define rtmSetDataMapInfo(rtm, val)    ((rtm)->DataMapInfo = (val))
#endif

#ifndef rtmGetU
#define rtmGetU(rtm)                   ((rtm)->inputs)
#endif

#ifndef rtmSetU
#define rtmSetU(rtm, val)              ((rtm)->inputs = (val))
#endif

#ifndef rtmGetY
#define rtmGetY(rtm)                   ((rtm)->outputs)
#endif

#ifndef rtmSetY
#define rtmSetY(rtm, val)              ((rtm)->outputs = (val))
#endif

#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#define test_M_TYPE                    RT_MODEL_test_T

/* External inputs (root inport signals with default storage) */
typedef struct {
  uint8_T state;                       /* '<Root>/state' */
  uint8_T state1;                      /* '<Root>/state1' */
  uint8_T state2;                      /* '<Root>/state2' */
  uint8_T state3;                      /* '<Root>/state3' */
  uint8_T state4;                      /* '<Root>/state4' */
  uint8_T state5;                      /* '<Root>/state5' */
  uint8_T state6;                      /* '<Root>/state6' */
  uint8_T state7;                      /* '<Root>/state7' */
  uint8_T state8;                      /* '<Root>/state8' */
  uint8_T state9;                      /* '<Root>/state9' */
  uint8_T state10;                     /* '<Root>/state10' */
  uint8_T state11;                     /* '<Root>/state11' */
  uint8_T state12;                     /* '<Root>/state12' */
  uint8_T state13;                     /* '<Root>/state13' */
  uint8_T state14;                     /* '<Root>/state14' */
  uint8_T state15;                     /* '<Root>/state15' */
} ExtU_test_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  uint32_T temp_state;                 /* '<Root>/temp_state' */
  uint32_T temp_state1;                /* '<Root>/temp_state1' */
  uint32_T temp_state2;                /* '<Root>/temp_state2' */
  uint32_T temp_state3;                /* '<Root>/temp_state3' */
  uint32_T temp_state4;                /* '<Root>/temp_state4' */
  uint32_T temp_state5;                /* '<Root>/temp_state5' */
  uint32_T temp_state6;                /* '<Root>/temp_state6' */
  uint32_T temp_state7;                /* '<Root>/temp_state7' */
  uint32_T temp_state8;                /* '<Root>/temp_state8' */
  uint32_T temp_state9;                /* '<Root>/temp_state9' */
  uint32_T temp_state10;               /* '<Root>/temp_state10' */
  uint32_T temp_state11;               /* '<Root>/temp_state11' */
  uint32_T temp_state12;               /* '<Root>/temp_state12' */
  uint32_T temp_state13;               /* '<Root>/temp_state13' */
  uint32_T temp_state14;               /* '<Root>/temp_state14' */
  uint32_T temp_state15;               /* '<Root>/temp_state15' */
  uint32_T temp_state16;               /* '<Root>/temp_state16' */
  uint32_T temp_state17;               /* '<Root>/temp_state17' */
  uint32_T temp_state18;               /* '<Root>/temp_state18' */
  uint32_T temp_state19;               /* '<Root>/temp_state19' */
  uint32_T temp_state20;               /* '<Root>/temp_state20' */
  uint32_T temp_state21;               /* '<Root>/temp_state21' */
  uint32_T temp_state22;               /* '<Root>/temp_state22' */
  uint32_T temp_state23;               /* '<Root>/temp_state23' */
  uint32_T temp_state24;               /* '<Root>/temp_state24' */
  uint32_T temp_state25;               /* '<Root>/temp_state25' */
  uint32_T temp_state26;               /* '<Root>/temp_state26' */
  uint32_T temp_state27;               /* '<Root>/temp_state27' */
  uint32_T temp_state28;               /* '<Root>/temp_state28' */
  uint32_T temp_state29;               /* '<Root>/temp_state29' */
  uint32_T temp_state30;               /* '<Root>/temp_state30' */
  uint32_T temp_state31;               /* '<Root>/temp_state31' */
  uint32_T temp_state32;               /* '<Root>/temp_state32' */
  uint32_T temp_state33;               /* '<Root>/temp_state33' */
  uint32_T temp_state34;               /* '<Root>/temp_state34' */
  uint32_T temp_state35;               /* '<Root>/temp_state35' */
  uint32_T temp_state36;               /* '<Root>/temp_state36' */
  uint32_T temp_state37;               /* '<Root>/temp_state37' */
  uint32_T temp_state38;               /* '<Root>/temp_state38' */
  uint32_T temp_state39;               /* '<Root>/temp_state39' */
  uint32_T temp_state40;               /* '<Root>/temp_state40' */
  uint32_T temp_state41;               /* '<Root>/temp_state41' */
  uint32_T temp_state42;               /* '<Root>/temp_state42' */
  uint32_T temp_state43;               /* '<Root>/temp_state43' */
} ExtY_test_T;

/* Real-time Model Data Structure */
struct tag_RTM_test_T {
  const char_T *errorStatus;
  ExtU_test_T *inputs;
  ExtY_test_T *outputs;

  /*
   * DataMapInfo:
   * The following substructure contains information regarding
   * structures generated in the model's C API.
   */
  struct {
    rtwCAPI_ModelMappingInfo mmi;
  } DataMapInfo;
};

/* External data declarations for dependent source files */
extern const char *RT_MEMORY_ALLOCATION_ERROR;

/* Model entry point functions */
extern RT_MODEL_test_T *test(void);
extern void test_initialize(RT_MODEL_test_T *const test_M);
extern void test_output(RT_MODEL_test_T *const test_M);
extern void test_update(RT_MODEL_test_T *const test_M);
extern void test_terminate(RT_MODEL_test_T * test_M);

/* Function to get C API Model Mapping Static Info */
extern const rtwCAPI_ModelMappingStaticInfo*
  test_GetCAPIStaticMap(void);

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'test'
 * '<S1>'   : 'test/MATLAB Function1'
 */
#endif                                 /* RTW_HEADER_test_h_ */
