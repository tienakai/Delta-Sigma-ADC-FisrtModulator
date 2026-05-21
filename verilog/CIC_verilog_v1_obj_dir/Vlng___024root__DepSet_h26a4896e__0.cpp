// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vlng.h for the primary calling header

#include "Vlng__pch.h"
#include "Vlng___024root.h"

void Vlng___024root___eval_act(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_act\n"); );
}

void Vlng___024root___nba_sequent__TOP__0(Vlng___024root* vlSelf);
void Vlng___024root___nba_sequent__TOP__1(Vlng___024root* vlSelf);
void Vlng___024root___nba_sequent__TOP__2(Vlng___024root* vlSelf);

void Vlng___024root___eval_nba(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vlng___024root___nba_sequent__TOP__0(vlSelf);
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vlng___024root___nba_sequent__TOP__1(vlSelf);
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vlng___024root___nba_sequent__TOP__2(vlSelf);
    }
}

VL_INLINE_OPT void Vlng___024root___nba_sequent__TOP__0(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*0:0*/ __Vdly__CIC_verilog_v1__DOT__clk_div;
    __Vdly__CIC_verilog_v1__DOT__clk_div = 0;
    SData/*13:0*/ __Vdly__CIC_verilog_v1__DOT__I1;
    __Vdly__CIC_verilog_v1__DOT__I1 = 0;
    SData/*13:0*/ __Vdly__CIC_verilog_v1__DOT__I2;
    __Vdly__CIC_verilog_v1__DOT__I2 = 0;
    // Body
    __Vdly__CIC_verilog_v1__DOT__I1 = vlSelf->CIC_verilog_v1__DOT__I1;
    __Vdly__CIC_verilog_v1__DOT__I2 = vlSelf->CIC_verilog_v1__DOT__I2;
    __Vdly__CIC_verilog_v1__DOT__clk_div = vlSelf->CIC_verilog_v1__DOT__clk_div;
    vlSelf->__Vdly__CIC_verilog_v1__DOT__I3 = vlSelf->CIC_verilog_v1__DOT__I3;
    if (vlSelf->rst) {
        __Vdly__CIC_verilog_v1__DOT__I1 = 0U;
        __Vdly__CIC_verilog_v1__DOT__I2 = 0U;
        __Vdly__CIC_verilog_v1__DOT__clk_div = 0U;
        vlSelf->__Vdly__CIC_verilog_v1__DOT__I3 = 0U;
        vlSelf->CIC_verilog_v1__DOT__Decimator_clk__DOT__counter = 0U;
    } else {
        __Vdly__CIC_verilog_v1__DOT__I1 = (0x3fffU 
                                           & ((IData)(vlSelf->CIC_verilog_v1__DOT__I1) 
                                              + ((IData)(vlSelf->X)
                                                  ? 0U
                                                  : 0x3fffU)));
        __Vdly__CIC_verilog_v1__DOT__I2 = (0x3fffU 
                                           & ((IData)(vlSelf->CIC_verilog_v1__DOT__I2) 
                                              + (IData)(vlSelf->CIC_verilog_v1__DOT__I1)));
        if ((8U == (IData)(vlSelf->CIC_verilog_v1__DOT__Decimator_clk__DOT__counter))) {
            __Vdly__CIC_verilog_v1__DOT__clk_div = 
                (1U & (~ (IData)(vlSelf->CIC_verilog_v1__DOT__clk_div)));
        }
        vlSelf->__Vdly__CIC_verilog_v1__DOT__I3 = (0x3fffU 
                                                   & ((IData)(vlSelf->CIC_verilog_v1__DOT__I3) 
                                                      + (IData)(vlSelf->CIC_verilog_v1__DOT__I2)));
        vlSelf->CIC_verilog_v1__DOT__Decimator_clk__DOT__counter 
            = ((IData)(vlSelf->CIC_verilog_v1__DOT__Decimator_clk__DOT__ovf_flag)
                ? 0U : (0x3fU & ((IData)(1U) + (IData)(vlSelf->CIC_verilog_v1__DOT__Decimator_clk__DOT__counter))));
    }
    vlSelf->CIC_verilog_v1__DOT__I1 = __Vdly__CIC_verilog_v1__DOT__I1;
    vlSelf->CIC_verilog_v1__DOT__clk_div = __Vdly__CIC_verilog_v1__DOT__clk_div;
    vlSelf->CIC_verilog_v1__DOT__I2 = __Vdly__CIC_verilog_v1__DOT__I2;
    vlSelf->CIC_verilog_v1__DOT__Decimator_clk__DOT__ovf_flag 
        = (8U == (IData)(vlSelf->CIC_verilog_v1__DOT__Decimator_clk__DOT__counter));
}

VL_INLINE_OPT void Vlng___024root___nba_sequent__TOP__1(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___nba_sequent__TOP__1\n"); );
    // Body
    if (vlSelf->rst) {
        vlSelf->CIC_verilog_v1__DOT__Y = 0U;
        vlSelf->CIC_verilog_v1__DOT__differentiator_2__DOT__Q = 0U;
        vlSelf->CIC_verilog_v1__DOT__D2 = 0U;
        vlSelf->CIC_verilog_v1__DOT__differentiator_1__DOT__Q = 0U;
        vlSelf->CIC_verilog_v1__DOT__D1 = 0U;
        vlSelf->CIC_verilog_v1__DOT__differentiator_0__DOT__Q = 0U;
    } else {
        vlSelf->CIC_verilog_v1__DOT__Y = (0x3fffU & 
                                          ((IData)(vlSelf->CIC_verilog_v1__DOT__D2) 
                                           - (IData)(vlSelf->CIC_verilog_v1__DOT__differentiator_2__DOT__Q)));
        vlSelf->CIC_verilog_v1__DOT__differentiator_2__DOT__Q 
            = vlSelf->CIC_verilog_v1__DOT__D2;
        vlSelf->CIC_verilog_v1__DOT__D2 = (0x3fffU 
                                           & ((IData)(vlSelf->CIC_verilog_v1__DOT__D1) 
                                              - (IData)(vlSelf->CIC_verilog_v1__DOT__differentiator_1__DOT__Q)));
        vlSelf->CIC_verilog_v1__DOT__differentiator_1__DOT__Q 
            = vlSelf->CIC_verilog_v1__DOT__D1;
        vlSelf->CIC_verilog_v1__DOT__D1 = (0x3fffU 
                                           & ((IData)(vlSelf->CIC_verilog_v1__DOT__I3) 
                                              - (IData)(vlSelf->CIC_verilog_v1__DOT__differentiator_0__DOT__Q)));
        vlSelf->CIC_verilog_v1__DOT__differentiator_0__DOT__Q 
            = vlSelf->CIC_verilog_v1__DOT__I3;
    }
    vlSelf->ADC_out = (0x3fffU & (VL_EXTENDS_II(14,14, (IData)(vlSelf->CIC_verilog_v1__DOT__Y)) 
                                  - (IData)(0x2904U)));
}

VL_INLINE_OPT void Vlng___024root___nba_sequent__TOP__2(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___nba_sequent__TOP__2\n"); );
    // Body
    vlSelf->CIC_verilog_v1__DOT__I3 = vlSelf->__Vdly__CIC_verilog_v1__DOT__I3;
}

void Vlng___024root___eval_triggers__act(Vlng___024root* vlSelf);

bool Vlng___024root___eval_phase__act(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<2> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vlng___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vlng___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vlng___024root___eval_phase__nba(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vlng___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__nba(Vlng___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__act(Vlng___024root* vlSelf);
#endif  // VL_DEBUG

void Vlng___024root___eval(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vlng___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("CIC_verilog_v1.v", 2, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vlng___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("CIC_verilog_v1.v", 2, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vlng___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vlng___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vlng___024root___eval_debug_assertions(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->X & 0xfeU))) {
        Verilated::overWidthError("X");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
}
#endif  // VL_DEBUG
