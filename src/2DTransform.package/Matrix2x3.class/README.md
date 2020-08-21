I am a plugin-free adaptation of `MatrixTransform2x3`.
For much faster access to my components, I store them as separate instance variables instead of as fields in a FloatArray.

Why 2x3, not 3x3?
Bottom row is always the same when multiplying:
```
c := a * b
				b11 b12 b13
				b21 b22 b23
				0      0     1

a11 a12 a13	c11 c12 c13
a21 a22 a23	c21 c22 c23
0     0    1		0      0     1
```