
import UIKit

  var word = [String]()

class AddController: UITableViewController {
    
    @IBOutlet weak var TodoTextField: UITextField!
    
    
    @IBAction func TodoAddButton(_ sender: Any) {
        
        
       word.append(TodoTextField.text!)
        
       TodoTextField.text! = ""
        
        UserDefaults.standard.set( word, forKey: "Todolist")
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }


}
