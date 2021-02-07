//
//  ViewController.swift
//  ImageViewer
//
//  Created by 으니 on 2021/02/07.
//

import UIKit

class ViewController: UIViewController {
    var numImage: Int?
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var prevButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numImage = 0
        
        imgView.image = UIImage(named: "\(String(numImage!+1)).png")
    }

    @IBAction func btnPrevImage(_ sender: UIButton) {
        numImage = (numImage! + 5) % 6
        
        imgView.image = UIImage(named: "\(String(numImage!+1)).png")
    }
    
    @IBAction func btnNextImage(_ sender: UIButton) {
        numImage = (numImage! + 1) % 6
        
        imgView.image = UIImage(named: "\(String(numImage!+1)).png")
    }
}

