attribute vec4 aPosition;
uniform float theta;
uniform float scaleX;
uniform float scaleY;

void main() {
	gl_PointSize = 1.5;
  vec3 translate = vec3(-0.5, 0.5, 0.0);
  mat4 translationMatrix = mat4(
    1.0, 0.0, 0.0, 0.0,
    0.0, 1.0, 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    translate, 1.0
  );
  mat4 rotationMatrix = mat4(
    cos(theta), sin(theta), 0.0, 0.0,
    -sin(theta), cos(theta), 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );
  mat4 scalationMatrix = mat4(
    scaleX, 0.0, 0.0, 0.0,
    0.0, scaleY, 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );
  gl_Position = rotationMatrix * aPosition;
  gl_Position = scalationMatrix * gl_Position;
}