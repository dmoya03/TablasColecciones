//
//  ColeccionViewController.swift
//  Tablas
//
//  Created by Daniel Moya on 23/11/23.
//

import UIKit

class ColeccionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var coleccion: UICollectionView!
    var lista = [Lista]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coleccion.delegate = self
        coleccion.dataSource = self
        
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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coleccion.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! CeldaCollectionViewCell
        let list = lista[indexPath.row]
        cell.nombre.text = list.nombre
        cell.imagen.image = UIImage(systemName: "person.crop.circle.fill")
        return cell
    }

}
