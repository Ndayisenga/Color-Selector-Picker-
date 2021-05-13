//
//  ViewController.swift
//  ColorWell
//
//  Created by Ndayisenga Jean Claude on 13/05/2021.
//

import UIKit

class ViewController: UIViewController {
    let colorWell: UIColorWell = {
        let colorWell = UIColorWell()
        colorWell.supportsAlpha = true
        colorWell.selectedColor = .systemRed
        colorWell.title = "Color Well"
        return colorWell
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        colorWell.backgroundColor = .systemBlue
        view.addSubview(colorWell)
        
        colorWell.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        colorWell.frame = CGRect(x: 20,
                                 y: view.safeAreaInsets.top,
                                 width: view.frame.size.width-40,
                                 height: 50)
    }
    @objc private func colorChanged() {
        view.backgroundColor = colorWell.selectedColor


    }
    
}

