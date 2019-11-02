#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;  // Размер изображения (ширина, высота)
uniform vec2 u_mouse;       // Положение курсора мыши в пикселях
uniform float u_time;       // Время в секундах с момента загрузки

vec4 red(){
    return vec4(1.0,0.0,0.0,1.0);
}

void main() {
	vec2 st = u_mouse/u_resolution;
    float tm = abs(sin(u_time));
    gl_FragColor = vec4(st.x*tm, st.y*tm, tm, 1.0);
}
