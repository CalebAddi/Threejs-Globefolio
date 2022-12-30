uniform sampler2D moonTexture;
varying vec2 vertexUV;
varying vec3 vertexNormal;

void main() {
    float intensity = 1.05 - dot(vertexNormal, vec3(0, 0, 1));
    vec3 atmosphere = vec3(.65, 0.12, .12) * pow(intensity, 1.5);

    gl_FragColor = vec4(atmosphere + vec3(-.1, -.15, -.15) + texture2D(globeTexture, vertexUV).xyz, 1);