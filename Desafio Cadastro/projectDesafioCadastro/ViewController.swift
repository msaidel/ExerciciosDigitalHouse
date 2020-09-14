//
//  ViewController.swift
//  projectDesafioCadastro
//
//  Created by Marcela Saidel on 14/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

/*

Proposta

Fazer um app que tenha a classe usuário
Que possa trabalhar com email e senha
E a primeira vez que o usuário inserir o email e senha devemos habilitar o botão de cadastro
Ao clicar em cadastrar devemos limpar os campos, ao inserir os dados pela segunda vez, devemos validar se o usuário já foi previamente cadastrado, se sim, pintamos a tela de vermelho, se não, pintamos de verde.


*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var buttonCadastro: UIButton!
    @IBOutlet var contentView: UIView!
    
    var usuariosCadastrados = UsuariosCadastrados()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        contentView.backgroundColor = .darkGray
       
        textFieldEmail.delegate = self
        textFieldPassword.delegate = self
        
        habilitaBotao(habilitar: false)
       
        textFieldEmail.becomeFirstResponder()
    }

    //Validacao para os textField
    func validarDados() -> Bool {
        
        let email = textFieldEmail.text
        let password = textFieldPassword.text
        
        
        if (email == nil || email!.isEmpty) || (password == nil || password!.isEmpty){
            return false
        }
        
        return true
        
    }

    //Mostrar/ Esconder os botoes
    func habilitaBotao(habilitar: Bool) {
        
        if habilitar {
            buttonCadastro.isHidden = false
            buttonCadastro.isPointerInteractionEnabled = true
        } else {
            buttonCadastro.isHidden = true
            buttonCadastro.isPointerInteractionEnabled = false
        }
        
    }
    
    //tela vermelha caso esteja cadastrado
    @IBAction func tapCadastro(_ sender: Any) {
        
        let email = textFieldEmail.text!
        let password = textFieldPassword.text!
        
        let user = Usuario(uEmail: email, uSenha: password)
        
        if validaUsuario(usuario: user) {
            
           contentView.backgroundColor = .systemGreen
           cadastraUsuario(usuario: user)
            
        } else {
           contentView.backgroundColor = .red
        }
        
       
    }
    
     //verifica se o usuario ja esta cadastrado
    func validaUsuario(usuario: Usuario) -> Bool {
        return usuariosCadastrados.validaUsuario(usuario: usuario)
    }

    //realiza o cadastro
    func cadastraUsuario(usuario: Usuario) {
        
        usuariosCadastrados.cadastraUsuario(usuario: usuario)
        
        let apagaCampos = usuariosCadastrados.primeiroCadastro()
        
        if apagaCampos {
            clear()
        }
    }
    
    //limpa os campos
    func clear() {
       
       textFieldPassword.text = ""
       textFieldEmail.text = ""
       habilitaBotao(habilitar: false)
       
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == textFieldEmail {
            textFieldPassword.becomeFirstResponder()
        } else {
            textFieldPassword.resignFirstResponder()
            habilitaBotao(habilitar: validarDados())
       
        }
        
        
        return true
    }
}
