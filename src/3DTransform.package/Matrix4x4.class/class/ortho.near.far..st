instance creation
ortho: aRectangle near: aNumber far: anotherNumber

	" https://www.scratchapixel.com/lessons/3d-basic-rendering/perspective-and-orthographic-projection-matrix/orthographic-projection-matrix "
	^ self identity
		a11: 2 / aRectangle width;
		a22: 2 / aRectangle height;
    		a33: -2 / (anotherNumber - aNumber);
		a14: (aRectangle right + aRectangle left) negated / aRectangle width;
		a24: (aRectangle top + aRectangle bottom) negated / aRectangle height;
		a34: (anotherNumber + aNumber) negated / (anotherNumber - aNumber);
		yourself
"    M[3][0] = -(r + l) / (r - l); 
    M[3][1] = -(t + b) / (t - b); 
    M[3][2] = -(f + n) / (f - n); 
    M[3][3] = 1; "