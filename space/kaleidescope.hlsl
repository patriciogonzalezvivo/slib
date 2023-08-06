#include "../math/const.hlsl"

/*
description: |
    It creates a kaleisdescope pattern
    Adapted from [Koch Snowflake tutorial](https://www.shadertoy.com/view/tdcGDj)
use: 
    - <float2> kaleidescope(<float2> st)
*/

#ifndef FNC_KALEIDESCOPE
#define FNC_KALEIDESCOPE
float2 kaleidescope( float2 st ) {
    st = st * 2.0 - 1.0;
    st = abs(st); 
    st.y += tan((5.0/6.0)*PI)*0.5;
    float2 n = float2(cos((5.0/6.0)*PI), sin((5.0/6.0)*PI));
    float d = dot(st- 0.5, n);
    st -= n * max(0.0, d) * 2.0;
    st.y -= tan((2.0/3.0)*PI) * 0.25; 
    n = float2(cos((2.0/3.0)*PI), sin((2.0/3.0)*PI));
    d = dot(st, n);
    st -= n * min(0.0, d) * 2.0;
    st.y -= tan((1.0/6.0)*PI) * 0.5; 
    return st;
}
#endif