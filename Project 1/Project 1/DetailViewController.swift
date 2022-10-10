//
//  DetailViewController.swift
//  Project 1
//
//  Created by Bryce Hawkins on 9/27/22.
//

import UIKit

struct ImageData {
	var imageName: String
	var index: Int
	var imageCount: Int
}

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
	var imageDetail: ImageData?

    override func viewDidLoad() {
        super.viewDidLoad()
        
		title = "Image \(imageDetail!.index) of \(imageDetail!.imageCount)"
        navigationItem.largeTitleDisplayMode = .never
		imageView.image = UIImage(named: imageDetail!.imageName)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
