//
//  ViewController.swift
//  UISlider-Table
//
//  Created by D7703_18 on 2018. 5. 14..
//  Copyright © 2018년 201550057. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var tabel: UITableView!
    var i=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tabel.delegate=self
        tabel.dataSource=self
    }

    @IBAction func sliderMoved(_ sender: Any) {
        print("\(mySlider.value)slider moved!")
        myLabel.text=String(Int(mySlider.value))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tabel.dequeueReusableCell(withIdentifier: "re", for: indexPath)
        cell.textLabel?.text=String(Int(mySlider.value)+indexPath.row)
        //i=Int(mySlider.value)
        return cell
    }
    @IBAction func sli(_ sender: Any) {
        tabel.reloadData()
    }
}

