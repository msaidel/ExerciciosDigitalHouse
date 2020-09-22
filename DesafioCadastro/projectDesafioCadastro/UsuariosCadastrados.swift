//
//  UsuariosCadastrados.swift
//  projectDesafioCadastro
//
//  Created by Marcela Saidel on 14/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import Foundation

class UsuariosCadastrados {
    
    private var listaUsuarios:[Usuario] = []
    
    init() {}
    
  
    func validaUsuario(usuario: Usuario) -> Bool {
        
        var retorno = false
        
        if listaUsuarios.count == 0 {
            retorno = true
            
        } else {
         
            for item in listaUsuarios {
              
                if (item.senha == usuario.senha && item.email == usuario.email) {
                    retorno = false
                } else {
                    retorno = true
                }
                
             }
            
        }
        
        return retorno
        
    }
    
    func primeiroCadastro() -> Bool {
        if listaUsuarios.count == 1 {
            return true
        } else {
            return false
        }
    }
    
    func cadastraUsuario(usuario: Usuario) {
        listaUsuarios.append(usuario)
    }
    
    
}
