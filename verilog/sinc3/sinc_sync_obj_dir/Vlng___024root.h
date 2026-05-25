// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vlng.h for the primary calling header

#ifndef VERILATED_VLNG___024ROOT_H_
#define VERILATED_VLNG___024ROOT_H_  // guard

#include "verilated.h"


class Vlng__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vlng___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst,0,0);
    VL_IN8(data_in,0,0);
    VL_IN8(enable_in,0,0);
    VL_OUT8(data_valid,0,0);
    CData/*7:0*/ sinc_sync__DOT__dec_cnt;
    CData/*0:0*/ sinc_sync__DOT__dec_en;
    CData/*0:0*/ sinc_sync__DOT__dec_en_d;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    VL_OUT16(data_out,11,0);
    IData/*31:0*/ sinc_sync__DOT__int1;
    IData/*31:0*/ sinc_sync__DOT__int2;
    IData/*31:0*/ sinc_sync__DOT__int3;
    IData/*31:0*/ sinc_sync__DOT__z1;
    IData/*31:0*/ sinc_sync__DOT__z2;
    IData/*31:0*/ sinc_sync__DOT__z3;
    IData/*31:0*/ sinc_sync__DOT__c1;
    IData/*31:0*/ sinc_sync__DOT__c2;
    IData/*31:0*/ sinc_sync__DOT__c3;
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vlng__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vlng___024root(Vlng__Syms* symsp, const char* v__name);
    ~Vlng___024root();
    VL_UNCOPYABLE(Vlng___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
