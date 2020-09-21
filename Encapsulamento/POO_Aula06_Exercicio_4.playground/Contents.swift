import UIKit


class Funcionario {
    
     var nome: String
     var salario: Float
     var cpf: String
     var bonus: Float?
     
     init(nome: String, salario: Float, cpf: String) {
         self.nome = nome
         self.salario = salario
         self.cpf = cpf
     }
     
     func calculaBonus() {
     
         if let bonus = self.bonus {
           print("O bonus é de: RS \( (bonus * salario) + salario)")
         } else {
           print("Não tem bonus")
         }
         
     }
 }

class Programador: Funcionario {
    
    var plataforma: String
    
    init(nome: String, salario: Float, cpf: String, plataforma: String) {
        self.plataforma = plataforma
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calculaBonus() {
        super.bonus = 0.2
        super.calculaBonus()
    }
}

class Designer: Funcionario {
    
   var ferramentaPreferida: String
  
   init(nome: String, salario: Float, cpf: String, ferramentaPreferida: String) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
   }
    
    override func calculaBonus() {
        super.bonus = 0.15
        super.calculaBonus()
    }
}

var prog = Programador(nome: "Func Teste", salario: 15.00, cpf: "111111", plataforma: "XCode")
prog.calculaBonus()

var desig = Designer(nome: "Func Designer", salario: 25.00, cpf: "111111", ferramentaPreferida: "Sketch")
desig.calculaBonus()
