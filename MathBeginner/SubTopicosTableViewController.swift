//
//  SubTopicosTableViewController.swift
//  MathBeginner
//
//  Created by Aluno Mack on 19/09/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class SubTopicosTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    var id:Int?
    var subtopicos = [["Triangulo","Triangulo Retangulo","Quadrado","Retangulo"],
                      ["Polinomios","Fração","Exponenciação","Radiação"],
                      ["Funções Trigonometrica","Lei das Tangentes" ,"Lei dos Senos" ,"Lei dos Cossenos"],
                      ["Equação Linear", "Equação de 2 Grau","Equação Exponencial"],
                      ["Limite","Derivada"]]
    
    @IBOutlet weak var tableView: UITableView!
    
    var setTitulo:String?
    
    @IBOutlet weak var TituloTela: UINavigationBar!
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = setTitulo
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let number_id = id{
            return subtopicos[number_id].count
        }
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubTopicosLabel", for: indexPath) as! SubTopicosTableViewCell
        
        if let number_id = id {
            cell.Titulo_SubTopico?.text = subtopicos[number_id][indexPath.row]
            cell.Imagem_SubTopico?.image = UIImage(named: "\(subtopicos[number_id][indexPath.row])Icon")
            
        }
        
//        cell.textLabel?.text = "Seção \(indexPath.section) Linha \(indexPath.row)"
//
//        cell.i?.text = foguetes[indexPath.row]
//        cell.DateRocket?.text = foguetes_data[indexPath.row]
//        cell.FlagRocket?.image = UIImage(named: "flag_\(foguetes_nacionalidade[indexPath.row])")
//        cell.ImageRocket?.image = UIImage(named:"rocket_\(foguetes_nacionalidade[indexPath.row])")
        
        
        
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IrFomulas" {
            if let indexPath = tableView.indexPathForSelectedRow{
                if let pag = segue.destination as? FormulaViewController{
                    pag.id = id
                    pag.subid = indexPath.row
                    
                }
            }
            
        }
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
