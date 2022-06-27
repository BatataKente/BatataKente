import Foundation

enum CustomError: Error {
  case loadingError
  case fetchingError
  case unknownError
}

func viewDidLoad(){
  do {
    let result = try doSomething()
    print(result)
  }
  catch{
    print("Got an error: \(error)")
  }
}

func doSomething() throws -> String {
  throw CustomError.loadingError
  return "Hello World"
}

viewDidLoad()