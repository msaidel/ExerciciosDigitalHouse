//
//  MainViewController.swift
//  Desafio_30_10_2020
//
//  Created by Marcela Saidel on 01/11/20.
//

import UIKit

class MainViewController: UIViewController {
    
    var listProducts = [Product]()
    var filterData = ListProduct()
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadInitial()
        
        searchBar.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func loadInitial() {
        
        listProducts.append(Product(name: "uva", isCompleted: false))
        listProducts.append(Product(name: "maça", isCompleted: false))
        listProducts.append(Product(name: "carne", isCompleted: true))
        listProducts.append(Product(name: "rabanete", isCompleted: true))
        
        loadFilter(search: "")
    }
    
    func loadFilter(search: String) {
        
        filterData.opened.removeAll()
        filterData.completed.removeAll()
        
        
        if search == "" {
            listProducts.filter { (product) -> Bool in
                if product.isCompleted {
                    filterData.completed.append(product)
                } else {
                    filterData.opened.append(product)
                }
                return true
            }
        } else {
            
            listProducts.filter { (product) -> Bool in
                
                if product.name.lowercased().contains(search.lowercased()) {
                    if product.isCompleted {
                        filterData.completed.append(product)
                    } else {
                        filterData.opened.append(product)
                    }
                    
                }
                
                return true
            }
            
        }
        
        tableView.reloadData()
    }
    
    func openAlertConfirmRemove(product: Product) {
        
        let alert = UIAlertController(title: "Atençãp", message: "Tem certeza que deseja apagar este item?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Sim", style: .default, handler: { _ in
            self.removeItem(item: product)
        }))
        alert.addAction(UIAlertAction(title: "Não", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
    func openAlertCell(item: Product){
        
        let alert = UIAlertController(title: "", message: "Selecione a opção desejada", preferredStyle: .actionSheet)
        
        let title = item.isCompleted ? "Marcar como aberto" : "Marcar como concluído"
        alert.addAction(UIAlertAction(title: title, style: .default, handler: { (action) in
            self.changeStatus(item: item)
        }))
        
        alert.addAction(UIAlertAction(title: "Editar", style: .default, handler: { (action) in
            self.openAlertForAddEditItem(item: item)
        }))
        
        alert.addAction(UIAlertAction(title: "Excluir", style: .destructive, handler: { (action) in
            self.openAlertConfirmRemove(product: item)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func removeItem(item: Product) {
        
        if let i = listProducts.firstIndex(where: { $0.name == item.name && $0.isCompleted == item.isCompleted}) {
            self.listProducts.remove(at: i)
            self.loadFilter(search: "")
        }
        
        
    }
    
    func changeStatus(item: Product) {
        
        
        if let i = listProducts.firstIndex(where: { $0.name == item.name && $0.isCompleted == item.isCompleted}) {
            self.listProducts[i].isCompleted = !item.isCompleted
            self.loadFilter(search: "")
        }
        
        
    }
    
    func openAlertForAddEditItem(item: Product?) {
        
        var title = "Editar"
        let placeholderTextField = "Ex: Maça"
        
        
        if item == nil {
            title = "Criar"
        }
        
        let alert = UIAlertController(title: title, message: "Digite o nome do item", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = placeholderTextField
            textField.text = item?.name
        }
        
        
        
        alert.addAction(UIAlertAction(title: "Salvar", style: .cancel, handler: { (action) in
            
            if let textField = alert.textFields?.first, let text = textField.text {
                
                if item != nil {
                    
                    for product in self.listProducts {
                        if item!.name == product.name && item!.isCompleted == product.isCompleted {
                            
                            product.name = text
                            break
                        }
                    }
                    self.loadFilter(search: "")
                    
                    
                } else {
                    
                    self.listProducts.append(Product(name: text, isCompleted: false))
                    self.loadFilter(search: "")
                    
                }
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    @IBAction func tapAdd(_ sender: Any) { openAlertForAddEditItem(item: nil) }
    
}

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            if filterData.opened.count > 0 {
                openAlertCell(item: filterData.opened[indexPath.row])
            } else if filterData.completed.count > 0 {
                openAlertCell(item: filterData.completed[indexPath.row])
            }
            
        } else {
            openAlertCell(item: filterData.completed[indexPath.row])
        }
        
    }
    
}
extension MainViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        if filterData.opened.count > 0 && filterData.completed.count > 0  {
            return 2
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            
            if filterData.opened.count > 0 {
                return filterData.opened.count
            } else if filterData.opened.count == 0 && filterData.completed.count == 0 {
                return 1
            } else {
                return filterData.completed.count
            }
            
            
        } else {
            return filterData.completed.count > 0 ? filterData.completed.count : 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            if filterData.opened.count > 0 {
                return "ABERTOS"
            } else if filterData.completed.count > 0 {
                return "CONCLUÍDOS"
            }
            
        } else {
            return "CONCLUÍDOS"
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            if filterData.opened.count > 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "ProductItemCell", for: indexPath) as! ProductItemCell
                cell.setup(product: filterData.opened[indexPath.row])
                return cell
            } else if filterData.completed.count > 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "ProductItemCell", for: indexPath) as! ProductItemCell
                cell.setup(product: filterData.completed[indexPath.row])
                return cell
            }
            else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "ProductItemEmptyCell", for: indexPath) as! ProductItemEmptyCell
                return cell
            }
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductItemCell", for: indexPath) as! ProductItemCell
            cell.setup(product: filterData.completed[indexPath.row])
            
            return cell
        }
        
    }
}

extension MainViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.loadFilter(search: searchText)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
}
