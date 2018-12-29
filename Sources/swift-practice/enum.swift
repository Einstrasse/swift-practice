class Enum {
	enum NetworkError {
		case invalidParameter(String, String)
		case timeout
		var message: String {
			switch self {
				case .invalidParameter(let field, let message): return field + " " + message
				case .timeout: return "타임아웃입니다."
			}
		}
	}

	let error: NetworkError = .invalidParameter("email", "이메일 형식이 올바르지 않습니다.")


	func go() {
		switch error {
			case .invalidParameter(let field, let message) :
				print (field)
				print (message)
			
			default:
			break
		}
		print (error.message)
	}
}
