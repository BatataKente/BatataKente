import Foundation

// func soma(_ a: Int,_ b: Int) -> Int {

//   return a + b
// }

// print(soma(2,3))

// print({(a: Int,b: Int) -> Int in
//   a + b
// })

class Service {

//    private let cowboy: (String) -> Void
    private let cowboy: (Int) -> Bool
    
//    init(cowboy: @escaping (String) -> Void){
    init(cowboy: @escaping (Int) -> Bool){
        
        self.cowboy = cowboy
    }
    
    func retornandoNoMesmoBloco(callBack: () -> Void){

        for i in 0...50 {
            
//            print(String(i))
            if cowboy(i) {
                
                break
            }
//            print(i)
        }
        callBack()
    }

//    func retornandoDepois(callBack: @escaping () -> Void) {
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
//
//        for i in 0...50 {
//
//            print(i)
//        }
//        callBack()
//        }
//    }
    
//    func retornandoDepois(callBack: @escaping () -> Void) {
//
//        for i in 0...50 {
//
//            print(i)
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
//
//            callBack()
//        }
//    }
    
    func retornandoDepois(callBack: @escaping (Int) -> Void) {

        for i in 0...50 {

            print(i)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {

            callBack(1000000)
        }
    }
}

//let service = Service()

//service.retornandoDepois(callBack: {
//    print("Toma!")
//})
//
//service.retornandoNoMesmoBloco(callBack: {
//    print("Toma!")
//})
//
//service.retornandoNoMesmoBloco(){
//    print("Toma!")
//}

//func executaRotina() {
//    print("Toma!")
//}

//service.retornandoNoMesmoBloco(callBack: executaRotina)

//func executaRotina(_ valeu: Int) {
//    print("Toma!")
//}
//
//service.retornandoDepois(callBack: executaRotina(_:))

//let service = Service(){index in
//    print("Cowboy esta rodando com o indice \(index)")
//}

let service = Service(){index in
    print("Cowboy esta rodando com o indice \(index)")
    return index == 10
}

service.retornandoNoMesmoBloco {
   print("Cowboy is dead")
}
