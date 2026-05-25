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

void Vlng___024root___eval_nba(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vlng___024root___nba_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vlng___024root___nba_sequent__TOP__0(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___nba_sequent__TOP__0\n"); );
    // Init
    IData/*31:0*/ __Vdly__sinc_sync__DOT__int1;
    __Vdly__sinc_sync__DOT__int1 = 0;
    IData/*31:0*/ __Vdly__sinc_sync__DOT__int2;
    __Vdly__sinc_sync__DOT__int2 = 0;
    IData/*31:0*/ __Vdly__sinc_sync__DOT__int3;
    __Vdly__sinc_sync__DOT__int3 = 0;
    CData/*7:0*/ __Vdly__sinc_sync__DOT__dec_cnt;
    __Vdly__sinc_sync__DOT__dec_cnt = 0;
    IData/*31:0*/ __Vdly__sinc_sync__DOT__z2;
    __Vdly__sinc_sync__DOT__z2 = 0;
    IData/*31:0*/ __Vdly__sinc_sync__DOT__z3;
    __Vdly__sinc_sync__DOT__z3 = 0;
    // Body
    __Vdly__sinc_sync__DOT__dec_cnt = vlSelf->sinc_sync__DOT__dec_cnt;
    __Vdly__sinc_sync__DOT__int3 = vlSelf->sinc_sync__DOT__int3;
    __Vdly__sinc_sync__DOT__int2 = vlSelf->sinc_sync__DOT__int2;
    __Vdly__sinc_sync__DOT__int1 = vlSelf->sinc_sync__DOT__int1;
    __Vdly__sinc_sync__DOT__z2 = vlSelf->sinc_sync__DOT__z2;
    __Vdly__sinc_sync__DOT__z3 = vlSelf->sinc_sync__DOT__z3;
    vlSelf->data_valid = ((1U & (~ (IData)(vlSelf->rst))) 
                          && (IData)(vlSelf->sinc_sync__DOT__dec_en_d));
    if (vlSelf->rst) {
        __Vdly__sinc_sync__DOT__int1 = 0U;
        __Vdly__sinc_sync__DOT__int2 = 0U;
        __Vdly__sinc_sync__DOT__int3 = 0U;
        vlSelf->sinc_sync__DOT__int1 = __Vdly__sinc_sync__DOT__int1;
        vlSelf->sinc_sync__DOT__int2 = __Vdly__sinc_sync__DOT__int2;
        vlSelf->data_out = 0U;
    } else {
        if (vlSelf->enable_in) {
            __Vdly__sinc_sync__DOT__int1 = (vlSelf->sinc_sync__DOT__int1 
                                            + ((IData)(vlSelf->data_in)
                                                ? 1U
                                                : 0xffffffffU));
            __Vdly__sinc_sync__DOT__int2 = (vlSelf->sinc_sync__DOT__int2 
                                            + vlSelf->sinc_sync__DOT__int1);
            __Vdly__sinc_sync__DOT__int3 = (vlSelf->sinc_sync__DOT__int3 
                                            + vlSelf->sinc_sync__DOT__int2);
        }
        vlSelf->sinc_sync__DOT__int1 = __Vdly__sinc_sync__DOT__int1;
        vlSelf->sinc_sync__DOT__int2 = __Vdly__sinc_sync__DOT__int2;
        if (vlSelf->sinc_sync__DOT__dec_en_d) {
            vlSelf->data_out = (0xfffU & (vlSelf->sinc_sync__DOT__c3 
                                          >> 0xdU));
        }
    }
    vlSelf->sinc_sync__DOT__dec_en_d = ((1U & (~ (IData)(vlSelf->rst))) 
                                        && (IData)(vlSelf->sinc_sync__DOT__dec_en));
    if (vlSelf->rst) {
        __Vdly__sinc_sync__DOT__z3 = 0U;
        vlSelf->sinc_sync__DOT__c3 = 0U;
        __Vdly__sinc_sync__DOT__z2 = 0U;
        vlSelf->sinc_sync__DOT__c2 = 0U;
        vlSelf->sinc_sync__DOT__c1 = 0U;
        vlSelf->sinc_sync__DOT__z1 = 0U;
        __Vdly__sinc_sync__DOT__dec_cnt = 0U;
        vlSelf->sinc_sync__DOT__dec_en = 0U;
    } else {
        if (vlSelf->sinc_sync__DOT__dec_en) {
            vlSelf->sinc_sync__DOT__c3 = (vlSelf->sinc_sync__DOT__c2 
                                          - vlSelf->sinc_sync__DOT__z3);
            __Vdly__sinc_sync__DOT__z3 = vlSelf->sinc_sync__DOT__c2;
            vlSelf->sinc_sync__DOT__c2 = (vlSelf->sinc_sync__DOT__c1 
                                          - vlSelf->sinc_sync__DOT__z2);
            __Vdly__sinc_sync__DOT__z2 = vlSelf->sinc_sync__DOT__c1;
            vlSelf->sinc_sync__DOT__c1 = (vlSelf->sinc_sync__DOT__int3 
                                          - vlSelf->sinc_sync__DOT__z1);
            vlSelf->sinc_sync__DOT__z1 = vlSelf->sinc_sync__DOT__int3;
        }
        if (vlSelf->enable_in) {
            if ((0xffU == (IData)(vlSelf->sinc_sync__DOT__dec_cnt))) {
                __Vdly__sinc_sync__DOT__dec_cnt = 0U;
                vlSelf->sinc_sync__DOT__dec_en = 1U;
            } else {
                __Vdly__sinc_sync__DOT__dec_cnt = (0xffU 
                                                   & ((IData)(1U) 
                                                      + (IData)(vlSelf->sinc_sync__DOT__dec_cnt)));
                vlSelf->sinc_sync__DOT__dec_en = 0U;
            }
        } else {
            vlSelf->sinc_sync__DOT__dec_en = 0U;
        }
    }
    vlSelf->sinc_sync__DOT__z3 = __Vdly__sinc_sync__DOT__z3;
    vlSelf->sinc_sync__DOT__z2 = __Vdly__sinc_sync__DOT__z2;
    vlSelf->sinc_sync__DOT__int3 = __Vdly__sinc_sync__DOT__int3;
    vlSelf->sinc_sync__DOT__dec_cnt = __Vdly__sinc_sync__DOT__dec_cnt;
}

void Vlng___024root___eval_triggers__act(Vlng___024root* vlSelf);

bool Vlng___024root___eval_phase__act(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
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
            VL_FATAL_MT("sinc_sync.v", 1, "", "NBA region did not converge.");
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
                VL_FATAL_MT("sinc_sync.v", 1, "", "Active region did not converge.");
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
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
    if (VL_UNLIKELY((vlSelf->data_in & 0xfeU))) {
        Verilated::overWidthError("data_in");}
    if (VL_UNLIKELY((vlSelf->enable_in & 0xfeU))) {
        Verilated::overWidthError("enable_in");}
}
#endif  // VL_DEBUG
