//
//  TableViewController.swift
//  Tablas
//
//  Created by Daniel Moya on 23/11/23.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var tabla: UITableView!
    var lista = [Lista]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lista.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabla.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        let list = lista[indexPath.row]
        cell.textLabel?.text = list.nombre
        cell.detailTextLabel?.text = list.email
        cell.imageView?.image = UIImage(systemName: "person.crop.circle.fill")
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
