//
//  ViewController.swift
//  ToDoList
//
//  Created by menna mostafa on 12/10/19.
//  Copyright © 2019 mennamostafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource
{
    
    @IBOutlet weak var todoTableView: UITableView!
    
    var todoText : [todoModel] = []
  //var arrtext:[String] = []
//    var todotext = ""
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "todo" , for : indexPath)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func addToDoPressed(_ sender: Any)
    {
        let alert = UIAlertController(title: "add  Todo", message: "enter uour todo", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "save", style: .default, handler: { (_) in
            if let title = alert.textFields?[0].text
            {
                self.addNewToDoItem(item: title)
            }
        
//            self.arrtext.append((alert.textFields?[0].text)!)
//            self.todoTableView.reloadData()
//
//            self.todotext = alert.textFields![0].text!

                
           
            
        }))
        present(alert, animated: true, completion: nil)
        
    }
    
    func addNewToDoItem(item :String)
    {
        let index = todoText.count
        todoText.append(todoModel(todoName: title!))
        todoTableView.insertRows(at: [IndexPath(row :index , section :0)], with: .top)
        
      
    }
    

}

