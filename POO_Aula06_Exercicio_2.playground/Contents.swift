import UIKit

class Veiculo {
    var cor: String
    var preco: Float
    var quantidadePassageiros: Int
    
    init(cor: String, preco: Float, quantidadePassageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.quantidadePassageiros = quantidadePassageiros
    }
    
    func getQuantidadeCombustivel (distancia: Float) -> Float {
        return distancia * Float(quantidadePassageiros)
    }
    
}

class Carro: Veiculo {
    var tamanhoRodas: Int
    
    init(cor: String, preco: Float, quantidadePassageiros: Int, tamanhoRodas: Int) {
        self.tamanhoRodas = tamanhoRodas
        super.init(cor: cor, preco: preco, quantidadePassageiros: quantidadePassageiros)
    }
    
    override func getQuantidadeCombustivel(distancia: Float) -> Float {
        let qtdCombustivel = super.getQuantidadeCombustivel(distancia: distancia)
        return qtdCombustivel * Float(tamanhoRodas)
    }
    
}

class Aviao: Veiculo {
    var piloto: String
    var companhiaAerea: String
    
    init(cor: String, preco: Float, quantidadePassageiros: Int, tamanhoRodas: Int, piloto: String, companhiaAerea: String) {
           self.piloto = piloto
           self.companhiaAerea = companhiaAerea
           super.init(cor: cor, preco: preco, quantidadePassageiros: quantidadePassageiros)
       }
    
    
    
}

//var aviaoLatam = Aviao(cor: "Branco e Azul", preco: 3.50, quantidadePassageiros: 45, tamanhoRodas: 20, piloto: "João Pedro", companhiaAerea: "Latam")
//
//print("A quantidade de combustível do avião gasta é: \(aviaoLatam.getQuantidadeCombustivel(distancia: 1.56))")

//var carroGol = Carro(cor: "Preto", preco: 3.75, quantidadePassageiros: 4, tamanhoRodas: 17)
//
//print("A quantidade de combustível do carro gasta é: \(carroGol.getQuantidadeCombustivel(distancia: 1.56))")
