/*
contributors: Patricio Gonzalez Vivo
description: "Quaternion subtraction. \n"
use: <QUAT> quatNeg(<QUAT> a, <QUAT> b)
license:
    - Copyright (c) 2021 Patricio Gonzalez Vivo under Prosperity License - https://prosperitylicense.com/versions/3.0.0
    - Copyright (c) 2021 Patricio Gonzalez Vivo under Patron License - https://lygia.xyz/license
*/

fn quatSub(a: vec4f, b: vec4f) -> vec4f { return vec4f(a.xyz - b.xyz, a.w - b.w); }
