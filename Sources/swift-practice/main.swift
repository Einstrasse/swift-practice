extension String {
	var length: Int {
		return self.count
	}

	mutating func reverse() {
		self = self.reversed().map { String($0) }.joined(separator: "")
	}
}

var str:String = "Public_Static_void_main";

print (str)

str.reverse()
print (str)