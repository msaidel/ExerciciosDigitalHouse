import UIKit

protocol Voador {
   func voar()
}

class Pato: Voador {
    
    var energia: Int
    private let perdeEnergia = 5
    
    init(energia: Int) {
        self.energia = energia
        
    }
    
    func voar() {
        let energia = perdaDeEnergia()
        print("Estou voando como um pato. Estou com \(energia) de energia!")
    }
    
    private func perdaDeEnergia() -> Int {
        energia -= perdeEnergia
        return energia
    }
    
}

class Aviao: Voador {
    
    var horasVoo: Int = 0
    private let ganhoHoras = 13
    
    init (horasVoo: Int) {
        self.horasVoo = horasVoo
    }
    
    func voar() {
        let horas = acumularHorasVoo()
        print("Estou voando como um avião. Estou com \(horas) horas de voo!")
    }
    
    private func acumularHorasVoo() -> Int {
        horasVoo += ganhoHoras
        return horasVoo
    }
    
}

class SuperHomem: Voador {
    
    var experiencia: Int
    private let ganhoExperiencia = 3

    init (experiencia: Int) {
        self.experiencia = experiencia
    }
    
    func voar() {
       
        let experiencia = acumularExperiencia()
        print("Estou voando como um campeão. Minha experiência é de: \(experiencia)")
        
    }
    
    private func acumularExperiencia() -> Int {
        experiencia += ganhoExperiencia
        return experiencia
    }
    
}

class TorreDeControle {
    
    private var listaVoadores: [Voador] = []
    
    func voamTodos() {
        
        for item in listaVoadores {
            item.voar()
        }
        
    }
    
    func adicionarVoador(umVoador: Voador) {
        listaVoadores.append(umVoador)
    }
    
}

let patinho = Pato(energia: 20)
let aviaozinho = Aviao(horasVoo: 0)
let superHominho = SuperHomem(experiencia: 1)

var torre = TorreDeControle()
torre.adicionarVoador(umVoador: patinho)
torre.adicionarVoador(umVoador: aviaozinho)
torre.adicionarVoador(umVoador: superHominho)
torre.voamTodos()


