//
//  ResultViewController.swift
//  GuessNumber
//
//  Created by Can Kanbur on 3.05.2023.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var labelSonut: UILabel!
    @IBOutlet weak var imageSonuc: UIImageView!
    
    var sonuc:Bool?
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Sonuc Ekranı"
        navigationItem.hidesBackButton = true
        
        if sonuc == true {
            labelSonut.text = "Kazandınız"
            imageSonuc.image = UIImage(named: "mutlu_resim")
        }else{
            labelSonut.text = "Kaybettiniz"
            imageSonuc.image = UIImage(named: "uzgun_resim")
        }
            
    }
    
    @IBAction func gameStart(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
