#include "fc980_bluepill.h"

bool led_update_kb(led_t led_state) {
    bool res = led_update_user(led_state);
    if(res) {
        setPinOutput(A10);
        writePin(A10, led_state.caps_lock);
    }
    return res;
}