//
//  ViewController.swift
//  Tablas
//
//  Created by Daniel Moya on 20/11/23.
//

import UIKit

struct Lista {
    let nombre: String
    let email: String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tabla: UITableView!
    var lista = [Lista]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Agregamos UITableViewDelegate, UITableViewDataSource al controlador
        tabla.delegate = self
        tabla.dataSource = self
        
        //Cambio de color en el navigation controller
        let appearance = UINavigationBarAppearance()
                appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .systemBlue
                appearance.titleTextAttributes = [.font: UIFont.boldSystemFont(ofSize: 20.0),
                                                  .foregroundColor: UIColor.white]
                
                navigationController?.navigationBar.tintColor = .white
                navigationController?.navigationBar.standardAppearance = appearance
                navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        //Crear y Agregar datos a la lista
        let lista1 = Lista(nombre: "Daniel", email: "mail@email.com")
        let lista2 = Lista(nombre: "David", email: "mail@email.com")
        let lista3 = Lista(nombre: "Darian", email: "mail@email.com")
        let lista4 = Lista(nombre: "Daury", email: "mail@email.com")
        let lista5 = Lista(nombre: "Dairon", email: "mail@email.com")
        let lista6 = Lista(nombre: "Dawel", email: "mail@email.com")
        let lista7 = Lista(nombre: "Anthony", email: "mail@email.com")
        let lista8 = Lista(nombre: "Alberto", email: "mail@email.com")
        let lista9 = Lista(nombre: "Carlos", email: "mail@email.com")
        let lista10 = Lista(nombre: "Fabio", email: "mail@email.com")
        lista.append(lista1)
        lista.append(lista2)
        lista.append(lista3)
        lista.append(lista4)
        lista.append(lista5)
        lista.append(lista6)
        lista.append(lista7)
        lista.append(lista8)
        lista.append(lista9)
        lista.append(lista10)

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabla.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        let list = lista[indexPath.row]
        cell.textLabel?.text = list.nombre
        cell.detailTextLabel?.text = list.email
        cell.imageView?.image = UIImage(systemName: "person.crop.circle.fill")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "enviar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar" {
            if let id = tabla.indexPathForSelectedRow {
                let fila = lista[id.row]
                let destino = segue.destination as? DetalleViewController
                destino?.datosLista = fila
            }
        }
    }

}

