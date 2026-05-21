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
    VL_IN8(X,0,0);
    VL_IN8(clk,0,0);
    VL_IN8(rst,0,0);
    CData/*0:0*/ CIC_verilog_v1__DOT__clk_div;
    CData/*5:0*/ CIC_verilog_v1__DOT__Decimator_clk__DOT__counter;
    CData/*0:0*/ CIC_verilog_v1__DOT__Decimator_clk__DOT__ovf_flag;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__rst__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__CIC_verilog_v1__DOT__clk_div__0;
    CData/*0:0*/ __VactContinue;
    VL_OUT16(ADC_out,13,0);
    SData/*13:0*/ CIC_verilog_v1__DOT__I1;
    SData/*13:0*/ CIC_verilog_v1__DOT__I2;
    SData/*13:0*/ CIC_verilog_v1__DOT__I3;
    SData/*13:0*/ CIC_verilog_v1__DOT__D1;
    SData/*13:0*/ CIC_verilog_v1__DOT__D2;
    SData/*13:0*/ CIC_verilog_v1__DOT__Y;
    SData/*13:0*/ CIC_verilog_v1__DOT__differentiator_0__DOT__Q;
    SData/*13:0*/ CIC_verilog_v1__DOT__differentiator_1__DOT__Q;
    SData/*13:0*/ CIC_verilog_v1__DOT__differentiator_2__DOT__Q;
    SData/*13:0*/ __Vdly__CIC_verilog_v1__DOT__I3;
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<2> __VactTriggered;
    VlTriggerVec<2> __VnbaTriggered;

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
