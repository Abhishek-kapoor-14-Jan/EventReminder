import UIKit

class AddEventPopViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var startingDatePicker: UIDatePicker!
    @IBOutlet weak var endingDatePicker: UIDatePicker!
    @IBOutlet weak var addEventView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEventView.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }
    @IBAction func addEventButton(_ sender: UIButton) {
    }
}
