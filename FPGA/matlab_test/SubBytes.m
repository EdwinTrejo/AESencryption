function [out_state1,out_state2,out_state3,out_state4,out_state5,out_state6,out_state7,out_state8,out_state9,out_state10,out_state11,out_state12,out_state13,out_state14,out_state15,out_state16]  = SubBytes(state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11,state12,state13,state14,state15,state16)

	out_state1 = getSBoxValue(state1);
    out_state2 = getSBoxValue(state2);
    out_state3 = getSBoxValue(state3);
    out_state4 = getSBoxValue(state4);
    out_state5 = getSBoxValue(state5);
    out_state6 = getSBoxValue(state6);
    out_state7 = getSBoxValue(state7);
    out_state8 = getSBoxValue(state8);
    out_state9 = getSBoxValue(state9);
    out_state10 = getSBoxValue(state10);
    out_state11 = getSBoxValue(state11);
    out_state12 = getSBoxValue(state12);
    out_state13 = getSBoxValue(state13);
    out_state14 = getSBoxValue(state14);
    out_state15 = getSBoxValue(state15);
    out_state16 = getSBoxValue(state16);

end