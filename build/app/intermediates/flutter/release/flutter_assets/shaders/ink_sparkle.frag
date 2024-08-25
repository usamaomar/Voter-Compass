   IPLR              д$  Ш     Fлџџ             #pragma clang diagnostic ignored "-Wmissing-prototypes"

#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

// Implementation of the GLSL mod() function, which is slightly different than Metal fmod()
template<typename Tx, typename Ty>
inline Tx mod(Tx x, Ty y)
{
    return x - y * floor(x / y);
}

struct ink_sparkle_fragment_main_out
{
    float4 fragColor [[color(0)]];
};

struct ink_sparkle_fragment_main_in
{
    float2 _fragCoord [[user(locn0)]];
};

fragment ink_sparkle_fragment_main_out ink_sparkle_fragment_main(ink_sparkle_fragment_main_in in [[stage_in]], constant float4& u_color [[buffer(0)]], constant float4& u_composite_1 [[buffer(1)]], constant float2& u_center [[buffer(2)]], constant float& u_max_radius [[buffer(3)]], constant float2& u_resolution_scale [[buffer(4)]], constant float2& u_noise_scale [[buffer(5)]], constant float& u_noise_phase [[buffer(6)]], constant float2& u_circle1 [[buffer(7)]], constant float2& u_circle2 [[buffer(8)]], constant float2& u_circle3 [[buffer(9)]], constant float2& u_rotation1 [[buffer(10)]], constant float2& u_rotation2 [[buffer(11)]], constant float2& u_rotation3 [[buffer(12)]])
{
    ink_sparkle_fragment_main_out out = {};
    float2 _954 = -(in._fragCoord * u_resolution_scale);
    float _568 = 1.0 - smoothstep(-0.7265625, 2.7265625, distance(mod((float2x2(float2(u_rotation1.x, -u_rotation1.y), float2(u_rotation1.yx)) * fma(_954, float2(0.800000011920928955078125), u_circle1)) + u_circle1, float2(0.17000000178813934326171875)) * float2(1.25), float2(0.10625000298023223876953125)) * 14.47963809967041015625);
    float _746 = distance(in._fragCoord, u_center);
    float _748 = fma(-u_composite_1.z, 0.5, 1.0);
    float _750 = fma(u_composite_1.z, 0.5, 1.0);
    float2 _830 = fract(fma(in._fragCoord, u_resolution_scale, -mod(in._fragCoord, u_noise_scale)) * float2(5.398700237274169921875, 5.442100048065185546875));
    float2 _838 = _830 + float2(dot(_830.yx, _830 + float2(21.5351009368896484375, 14.3136997222900390625)));
    float _843 = _838.x * _838.y;
    float _851 = (fract(_843 * 95.43070220947265625) + fract(_843 * 75.0496063232421875)) - 1.0;
    float _800 = _851 + sin(3.1415927410125732421875 * (u_noise_phase + 0.3499999940395355224609375));
    float _809 = _851 + sin(3.1415927410125732421875 * (u_noise_phase + 0.699999988079071044921875));
    float _818 = _851 + sin(3.1415927410125732421875 * (u_noise_phase + 1.0499999523162841796875));
    float _409 = (((fast::clamp(fma(step(0.300000011920928955078125, _818), 1.0 - step(0.3499999940395355224609375, _818), fma(step(0.20000000298023223876953125, _809), 1.0 - step(0.25, _809), fma(step(0.0, _851), 1.0 - step(0.0500000007450580596923828125, _851), step(0.100000001490116119384765625, _800) * (1.0 - step(0.1500000059604644775390625, _800))))), 0.0, 1.0) * 0.550000011920928955078125) * fast::clamp((1.0 - smoothstep(_748, _750, _746 / fma(u_max_radius, u_composite_1.w, 0.0500000007450580596923828125 * u_max_radius))) - (1.0 - smoothstep(_748, _750, _746 / fast::max(fma(u_max_radius, u_composite_1.w, u_max_radius * (-0.0500000007450580596923828125)), 0.0))), 0.0, 1.0)) * fast::clamp(fma(fma(_568, _568, 1.0 - smoothstep(-1.03125, 3.03125, distance(mod((float2x2(float2(u_rotation2.x, -u_rotation2.y), float2(u_rotation2.yx)) * fma(_954, float2(0.800000011920928955078125), u_circle2)) + u_circle2, float2(0.20000000298023223876953125)) * float2(1.25), float2(0.125)) * 12.30769252777099609375)) - (1.0 - smoothstep(-1.7929685115814208984375, 3.7929685115814208984375, distance(mod((float2x2(float2(u_rotation3.x, -u_rotation3.y), float2(u_rotation3.yx)) * fma(_954, float2(0.800000011920928955078125), u_circle3)) + u_circle3, float2(0.2750000059604644775390625)) * float2(1.25), float2(0.171875)) * 8.9510498046875)), 0.4000000059604644775390625, 0.449999988079071044921875), 0.0, 1.0)) * u_composite_1.y;
    float _425 = ((1.0 - smoothstep(_748, _750, _746 / (u_max_radius * u_composite_1.w))) * u_composite_1.x) * u_color.w;
    out.fragColor = mix(float4(u_color.xyz * _425, _425), float4(1.0), float4(_409));
    return out;
}

     <  ј  Д  p  $  р    X    а      H      Ааџџ,   
                                       u_rotation3 №аџџ,   
                                       u_rotation2 0бџџ,   
   
                                    u_rotation1 pбџџ,   
   	                                 	   u_circle3   Абџџ,   
                                    	   u_circle2   №бџџ,   
                                    	   u_circle1   рбџџ(   
                                   u_noise_phase    вџџ(   
                                   u_noise_scale   Авџџ,   
                                       u_resolution_scale  Јвџџ(   
                                   u_max_radius    8гџџ,   
                                       u_center    (гџџ(   
                                   u_composite_1   гџџ$   
                                u_color    ink_sparkle_fragment_main   яџџ   д  P     B  #version 100
precision mediump float;
precision highp int;

uniform highp vec4 u_composite_1;
uniform highp vec2 u_circle1;
uniform highp vec2 u_rotation1;
uniform highp vec2 u_circle2;
uniform highp vec2 u_rotation2;
uniform highp vec2 u_circle3;
uniform highp vec2 u_rotation3;
uniform highp vec2 u_resolution_scale;
uniform highp vec2 u_noise_scale;
uniform highp float u_max_radius;
uniform highp vec2 u_center;
uniform highp float u_noise_phase;
uniform highp vec4 u_color;

varying highp vec2 _fragCoord;

void main()
{
    highp vec2 _954 = -(_fragCoord * u_resolution_scale);
    highp float _568 = 1.0 - smoothstep(-0.7265625, 2.7265625, distance(mod((mat2(vec2(u_rotation1.x, -u_rotation1.y), vec2(u_rotation1.yx)) * (_954 * vec2(0.800000011920928955078125) + u_circle1)) + u_circle1, vec2(0.17000000178813934326171875)) * vec2(1.25), vec2(0.10625000298023223876953125)) * 14.47963809967041015625);
    highp float _746 = distance(_fragCoord, u_center);
    highp float _748 = (-u_composite_1.z) * 0.5 + 1.0;
    highp float _750 = u_composite_1.z * 0.5 + 1.0;
    highp vec2 _830 = fract((_fragCoord * u_resolution_scale + (-mod(_fragCoord, u_noise_scale))) * vec2(5.398700237274169921875, 5.442100048065185546875));
    highp vec2 _838 = _830 + vec2(dot(_830.yx, _830 + vec2(21.5351009368896484375, 14.3136997222900390625)));
    highp float _843 = _838.x * _838.y;
    highp float _851 = (fract(_843 * 95.43070220947265625) + fract(_843 * 75.0496063232421875)) - 1.0;
    highp float _800 = _851 + sin(3.1415927410125732421875 * (u_noise_phase + 0.3499999940395355224609375));
    highp float _809 = _851 + sin(3.1415927410125732421875 * (u_noise_phase + 0.699999988079071044921875));
    highp float _818 = _851 + sin(3.1415927410125732421875 * (u_noise_phase + 1.0499999523162841796875));
    highp float _409 = (((clamp(step(0.300000011920928955078125, _818) * (1.0 - step(0.3499999940395355224609375, _818)) + (step(0.20000000298023223876953125, _809) * (1.0 - step(0.25, _809)) + (step(0.0, _851) * (1.0 - step(0.0500000007450580596923828125, _851)) + (step(0.100000001490116119384765625, _800) * (1.0 - step(0.1500000059604644775390625, _800))))), 0.0, 1.0) * 0.550000011920928955078125) * clamp((1.0 - smoothstep(_748, _750, _746 / (u_max_radius * u_composite_1.w + (0.0500000007450580596923828125 * u_max_radius)))) - (1.0 - smoothstep(_748, _750, _746 / max(u_max_radius * u_composite_1.w + (u_max_radius * (-0.0500000007450580596923828125)), 0.0))), 0.0, 1.0)) * clamp(((_568 * _568 + (1.0 - smoothstep(-1.03125, 3.03125, distance(mod((mat2(vec2(u_rotation2.x, -u_rotation2.y), vec2(u_rotation2.yx)) * (_954 * vec2(0.800000011920928955078125) + u_circle2)) + u_circle2, vec2(0.20000000298023223876953125)) * vec2(1.25), vec2(0.125)) * 12.30769252777099609375))) - (1.0 - smoothstep(-1.7929685115814208984375, 3.7929685115814208984375, distance(mod((mat2(vec2(u_rotation3.x, -u_rotation3.y), vec2(u_rotation3.yx)) * (_954 * vec2(0.800000011920928955078125) + u_circle3)) + u_circle3, vec2(0.2750000059604644775390625)) * vec2(1.25), vec2(0.171875)) * 8.9510498046875))) * 0.4000000059604644775390625 + 0.449999988079071044921875, 0.0, 1.0)) * u_composite_1.y;
    highp float _425 = ((1.0 - smoothstep(_748, _750, _746 / (u_max_radius * u_composite_1.w))) * u_composite_1.x) * u_color.w;
    gl_FragData[0] = mix(vec4(u_color.xyz * _425, _425), vec4(1.0), vec4(_409));
}

     L  ј  Д  p  $  р    X    а      H       сџџ,   
                                       u_rotation3 рсџџ,   
                                       u_rotation2  тџџ,   
   
                                    u_rotation1 `тџџ,   
   	                                 	   u_circle3    тџџ,   
                                    	   u_circle2   ртџџ,   
                                    	   u_circle1   атџџ(   
                                   u_noise_phase   уџџ(   
                                   u_noise_scale    уџџ,   
                                       u_resolution_scale  уџџ(   
                                   u_max_radius    (фџџ,   
                                       u_center    фџџ(   
                                   u_composite_1    $               
                            u_color    ink_sparkle_fragment_main               Ш          // This SkSL shader is autogenerated by spirv-cross.

float4 flutter_FragCoord;

uniform vec4 u_color;
uniform vec4 u_composite_1;
uniform vec2 u_center;
uniform float u_max_radius;
uniform vec2 u_resolution_scale;
uniform vec2 u_noise_scale;
uniform float u_noise_phase;
uniform vec2 u_circle1;
uniform vec2 u_circle2;
uniform vec2 u_circle3;
uniform vec2 u_rotation1;
uniform vec2 u_rotation2;
uniform vec2 u_rotation3;

vec4 fragColor;

float u_alpha;
float u_sparkle_alpha;
float u_blur;
float u_radius_scale;

vec2 FLT_flutter_local_FlutterFragCoord()
{
    return flutter_FragCoord.xy;
}

mat2 FLT_flutter_local_rotate2d(vec2 rad)
{
    return mat2(vec2(rad.x, -rad.y), vec2(rad.y, rad.x));
}

float FLT_flutter_local_soft_circle(vec2 uv, vec2 xy, float radius, float blur)
{
    float blur_half = blur * 0.5;
    float d = distance(uv, xy);
    return 1.0 - smoothstep(1.0 - blur_half, 1.0 + blur_half, d / radius);
}

float FLT_flutter_local_circle_grid(vec2 resolution, inout vec2 p, vec2 xy, vec2 rotation, float cell_diameter)
{
    vec2 param = rotation;
    p = (FLT_flutter_local_rotate2d(param) * (xy - p)) + xy;
    p = mod(p, vec2(cell_diameter)) / resolution;
    float cell_uv = (cell_diameter / resolution.y) * 0.5;
    float r = 0.64999997615814208984375 * cell_uv;
    vec2 param_1 = p;
    vec2 param_2 = vec2(cell_uv);
    float param_3 = r;
    float param_4 = r * 50.0;
    return FLT_flutter_local_soft_circle(param_1, param_2, param_3, param_4);
}

float FLT_flutter_local_turbulence(vec2 uv)
{
    vec2 uv_scale = uv * vec2(0.800000011920928955078125);
    vec2 param = vec2(0.800000011920928955078125);
    vec2 param_1 = uv_scale;
    vec2 param_2 = u_circle1;
    vec2 param_3 = u_rotation1;
    float param_4 = 0.17000000178813934326171875;
    float _319 = FLT_flutter_local_circle_grid(param, param_1, param_2, param_3, param_4);
    float g1 = _319;
    vec2 param_5 = vec2(0.800000011920928955078125);
    vec2 param_6 = uv_scale;
    vec2 param_7 = u_circle2;
    vec2 param_8 = u_rotation2;
    float param_9 = 0.20000000298023223876953125;
    float _331 = FLT_flutter_local_circle_grid(param_5, param_6, param_7, param_8, param_9);
    float g2 = _331;
    vec2 param_10 = vec2(0.800000011920928955078125);
    vec2 param_11 = uv_scale;
    vec2 param_12 = u_circle3;
    vec2 param_13 = u_rotation3;
    float param_14 = 0.2750000059604644775390625;
    float _344 = FLT_flutter_local_circle_grid(param_10, param_11, param_12, param_13, param_14);
    float g3 = _344;
    float v = (((g1 * g1) + g2) - g3) * 0.5;
    return clamp(0.449999988079071044921875 + (0.800000011920928955078125 * v), 0.0, 1.0);
}

float FLT_flutter_local_soft_ring(vec2 uv, vec2 xy, float radius, float thickness, float blur)
{
    vec2 param = uv;
    vec2 param_1 = xy;
    float param_2 = radius + thickness;
    float param_3 = blur;
    float circle_outer = FLT_flutter_local_soft_circle(param, param_1, param_2, param_3);
    vec2 param_4 = uv;
    vec2 param_5 = xy;
    float param_6 = max(radius - thickness, 0.0);
    float param_7 = blur;
    float circle_inner = FLT_flutter_local_soft_circle(param_4, param_5, param_6, param_7);
    return clamp(circle_outer - circle_inner, 0.0, 1.0);
}

float FLT_flutter_local_triangle_noise(inout vec2 n)
{
    n = fract(n * vec2(5.398700237274169921875, 5.442100048065185546875));
    n += vec2(dot(n.yx, n + vec2(21.5351009368896484375, 14.3136997222900390625)));
    float xy = n.x * n.y;
    return (fract(xy * 95.43070220947265625) + fract(xy * 75.0496063232421875)) - 1.0;
}

float FLT_flutter_local_threshold(float v, float l, float h)
{
    return step(l, v) * (1.0 - step(h, v));
}

float FLT_flutter_local_sparkle(vec2 uv, float t)
{
    vec2 param = uv;
    float _242 = FLT_flutter_local_triangle_noise(param);
    float n = _242;
    float param_1 = n;
    float param_2 = 0.0;
    float param_3 = 0.0500000007450580596923828125;
    float s = FLT_flutter_local_threshold(param_1, param_2, param_3);
    float param_4 = n + sin(3.1415927410125732421875 * (t + 0.3499999940395355224609375));
    float param_5 = 0.100000001490116119384765625;
    float param_6 = 0.1500000059604644775390625;
    s += FLT_flutter_local_threshold(param_4, param_5, param_6);
    float param_7 = n + sin(3.1415927410125732421875 * (t + 0.699999988079071044921875));
    float param_8 = 0.20000000298023223876953125;
    float param_9 = 0.25;
    s += FLT_flutter_local_threshold(param_7, param_8, param_9);
    float param_10 = n + sin(3.1415927410125732421875 * (t + 1.0499999523162841796875));
    float param_11 = 0.300000011920928955078125;
    float param_12 = 0.3499999940395355224609375;
    s += FLT_flutter_local_threshold(param_10, param_11, param_12);
    return clamp(s, 0.0, 1.0) * 0.550000011920928955078125;
}

void FLT_main()
{
    u_alpha = u_composite_1.x;
    u_sparkle_alpha = u_composite_1.y;
    u_blur = u_composite_1.z;
    u_radius_scale = u_composite_1.w;
    vec2 p = FLT_flutter_local_FlutterFragCoord();
    vec2 uv_1 = p * u_resolution_scale;
    vec2 density_uv = uv_1 - mod(p, u_noise_scale);
    float radius = u_max_radius * u_radius_scale;
    vec2 param_13 = uv_1;
    float turbulence = FLT_flutter_local_turbulence(param_13);
    vec2 param_14 = p;
    vec2 param_15 = u_center;
    float param_16 = radius;
    float param_17 = 0.0500000007450580596923828125 * u_max_radius;
    float param_18 = u_blur;
    float ring = FLT_flutter_local_soft_ring(param_14, param_15, param_16, param_17, param_18);
    vec2 param_19 = density_uv;
    float param_20 = u_noise_phase;
    float sparkle = ((FLT_flutter_local_sparkle(param_19, param_20) * ring) * turbulence) * u_sparkle_alpha;
    vec2 param_21 = p;
    vec2 param_22 = u_center;
    float param_23 = radius;
    float param_24 = u_blur;
    float wave_alpha = (FLT_flutter_local_soft_circle(param_21, param_22, param_23, param_24) * u_alpha) * u_color.w;
    vec4 wave_color = vec4(u_color.xyz * wave_alpha, wave_alpha);
    fragColor = mix(wave_color, vec4(1.0), vec4(sparkle));
}

half4 main(float2 iFragCoord)
{
      flutter_FragCoord = float4(iFragCoord, 0, 0);
      FLT_main();
      return fragColor;
}
    l    Ф  p  $  р    X    а      H      x§џџ,   
                                       u_rotation3 И§џџ,   
                                       u_rotation2 ј§џџ,   
   
                                    u_rotation1 8ўџџ,   
   	                                 	   u_circle3   xўџџ,   
                                    	   u_circle2   Иўџџ,   
                                    	   u_circle1   Јўџџ(   
                                   u_noise_phase   шўџџ(   
                                   u_noise_scale   xџџџ,   
                                       u_resolution_scale  pџџџ(   
                                   u_max_radius     0      $    ,   
                                       u_center     ,      $    (   
                                   u_composite_1    (           $   
                                u_color    ink_sparkle_fragment_main   