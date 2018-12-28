class Enum {
	enum NetworkError {
		case invalidParameter(String, String)
		case timeout
	}

	let temp: NetworkError = .invalidParameter("email", "이메일 형식이 올바르지 않습니다.")


	func go() {
		switch temp {
			case .invalidParameter(let field, let message) :
				print (field)
				print (message)
			
			default:
			break
		}
	}
}
