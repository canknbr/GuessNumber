//
//  GuessViewController.swift
//  GuessNumber
//
//  Created by Can Kanbur on 3.05.2023.
//

import UIKit

class GuessViewController: UIViewController {
    @IBOutlet var tahminTextField: UITextField!
    @IBOutlet var yardimLabel: UILabel!
    @IBOutlet var kalanHakLabel: UILabel!

    var rastgeleSayi: Int?
    var tahminHakki = 5
    override func viewDidLoad() {
        super.viewDidLoad()

        rastgeleSayi = Int(arc4random_uniform(100))
    }

    @IBAction func tahminClicked(_ sender: Any) {
        yardimLabel.isHidden = false
        tahminHakki -= 1

        if let veri = tahminTextField.text {
            if let tahmin = Int(veri) {
                if tahmin == rastgeleSayi! {
                    let sonuc = true
                    performSegue(withIdentifier: "toResultVC", sender: sonuc)
                }

                if tahmin < rastgeleSayi! {
                    yardimLabel.text = "Arttır"
                    kalanHakLabel.text = "Kalan Hak: \(tahminHakki)"
                }

                if tahmin > rastgeleSayi! {
                    yardimLabel.text = "Azalt"
                    kalanHakLabel.text = "Kalan Hak: \(tahminHakki)"
                }
                if tahminHakki == 0 {
                    let sonuc = false
                    performSegue(withIdentifier: "toResultVC", sender: sonuc)
                }

                tahminTextField.text = ""
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenSonuc = sender as? Bool {
            let destination = segue.destination as! ResultViewController
            destination.sonuc = gelenSonuc
        }
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
