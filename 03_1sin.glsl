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
	gl_FragColor = vec4(abs(sin(u_time)), 0.0, 0.0, 1.0);
}
