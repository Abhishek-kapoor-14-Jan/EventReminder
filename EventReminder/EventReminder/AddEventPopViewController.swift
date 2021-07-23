import UIKit

class AddEventPopViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var startingDatePicker: UIDatePicker!
    @IBOutlet weak var endingDatePicker: UIDatePicker!
    @IBOutlet weak var addEventView: UIView!
    
    var appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEventView.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }
    @IBAction func addEventButton(_ sender: UIButton) {
        let startingDate = startingDatePicker.date
        let endingDate = endingDatePicker.date
        if let title = titleTextField.text{
            self.appDelegate?.scheduleNotification(notificationDetail: title, startDatetime: startingDate, endDateTime: endingDate)
            self.presentingViewController?.dismiss(animated: true, completion: nil)

        }
    }
    
}
