import UIKit


public class Vendedor {
    
    var nome: String
    var idade: Int
    var cpf: String
    private var saldoConta: Float
    
    init(nome: String, idade: Int, cpf: String, saldoConta: Float) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoConta = saldoConta
    }
    
    func getSaldo() {
        
        print("O saldo é de R$ \(self.saldoConta)")
    }
    
    private func calculaTerno(qtdPecas: Int) {
       
        //Custo 400
       if qtdPecas >= 3 {
           
           let desconto = 50.00 * Float(qtdPecas)
           let valorVenda = (400.00  * Float(qtdPecas) ) - desconto
           self.saldoConta +=  valorVenda
           
           print("Parabéns você ganhou \(desconto) de desconto!!")
           
       } else {
         
           let valorVenda = (400.00 * Float(qtdPecas))
           self.saldoConta  = saldoConta + valorVenda
       }
        
    }
    
    private func calculaVestido(qtdPecas: Int) {
        
        //Custo 900
        if qtdPecas == 5 {
             
           let valorVenda = (900.00 * Float(qtdPecas) - 250.00)
           self.saldoConta  = saldoConta + valorVenda
         
           print("Você acaba de ganhar um véu de brinde!!")
        
        } else {
        
             let valorVenda = 900.00 * Float(qtdPecas)
             self.saldoConta  = saldoConta + valorVenda
        }
        
    }
    
    private func calculaBone(qtdPecas: Int) {
        
        if qtdPecas >= 2 {
          
            
            if qtdPecas % 2 == 0 {
               
                let qtdDoada = Float((qtdPecas/2))
                let valorVenda = Float(qtdPecas) * 50.00
                self.saldoConta  = saldoConta + valorVenda
                print("Parabéns você ganhou \(qtdDoada) bonés")
                
            } else {
             
                let valorVenda = Float(qtdPecas) * 50.00
                let qtdDoada = (qtdPecas/2)
              
                self.saldoConta  = saldoConta + valorVenda
             
                print("Parabéns você ganhou \(qtdDoada) bonés")
                
            }
          
            
        } else {
            
            let valorVenda = 50.00 * Float(qtdPecas)
            self.saldoConta  = saldoConta + valorVenda
            
        }
        
    }
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        
        if tipoDePeca == "terno" {
            self.calculaTerno(qtdPecas: quantidadeDePecas)
      
        } else if tipoDePeca == "vestido" {
            self.calculaVestido(qtdPecas: quantidadeDePecas)
    
        } else {
            self.calculaBone(qtdPecas: quantidadeDePecas)
        }
        
    }
    
}

let joao = Vendedor(nome: "Joao", idade: 25, cpf: "1111", saldoConta: 1000)
joao.vender(quantidadeDePecas: 7, tipoDePeca: "bone")
joao.getSaldo()

let maria = Vendedor(nome: "maria", idade: 25, cpf: "1111", saldoConta: 1000)
maria.vender(quantidadeDePecas: 5, tipoDePeca: "vestido")
maria.getSaldo()

let jose = Vendedor(nome: "Jose", idade: 25, cpf: "11231", saldoConta: 1500)
jose.vender(quantidadeDePecas: 7, tipoDePeca: "terno")
jose.getSaldo()

