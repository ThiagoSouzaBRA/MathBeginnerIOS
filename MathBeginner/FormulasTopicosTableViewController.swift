//
//  FormulasTopicosTableViewController.swift
//  MathBeginner
//
//  Created by Aluno Mack on 19/09/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class FormulasTopicosTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var topicos:[String] = ["Geometria","Algebra","Trigonometria","Equações","Derivadas"]
    var img_topicos:[String] = ["geometria_icon","algebra_icon","trigonometria_icon","equacoes_icon","derivadas_icon"]
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return topicos.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicosLabel", for: indexPath) as! FormulaTopicosTableViewCell
        
        //cell.textLabel?.text = "Seção \(indexPath.section) Linha \(indexPath.row)"
        
        cell.Nome_Topico?.text = topicos[indexPath.row]
        cell.Image_Topico?.image = UIImage(named: "\(img_topicos[indexPath.row])")
       
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IrSubTopicos" {
            if let indexPath = tableView.indexPathForSelectedRow{
                if let pag = segue.destination as? SubTopicosTableViewController{
                    //pag.id = indexPath.row
                    pag.id = indexPath.row
                    pag.setTitulo = topicos[indexPath.row]
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
