usage
draw: aModeEnum from: startIndex count: count
	gl glBindBuffer: gl GL_ARRAY_BUFFER with: id.
	gl glDrawArrays: aModeEnum with: (startIndex - 1) with: count.