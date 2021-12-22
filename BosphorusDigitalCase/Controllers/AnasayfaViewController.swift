//
//  ViewController.swift
//  BosphorusDigitalCase
//
//  Created by Barış Can Akkaya on 17.12.2021.
//

import UIKit
import SnapKit

class AnasayfaViewController: UIViewController {
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var sanalMarketButton: UIButton!
    @IBOutlet weak var migrosHemenButton: UIButton!
    @IBOutlet weak var migrosExtraButton: UIButton!
    
    @IBOutlet weak var mainTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.delegate = self
        mainTableView.dataSource = self
        setLayout()
    }
    
    
    func setLayout() {
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        topViewLayout(width: width, height: height)
        tableViewLayout()
    }
    
    func topViewLayout(width: CGFloat, height: CGFloat) {
        topView.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(height * 0.2)
        }
        sanalMarketButton.snp.makeConstraints { make in
            make.left.equalTo(width * 0.04)
            make.bottom.equalTo(self.topView.snp.bottom).offset(10)
            make.width.equalTo(width * 0.2)
            make.top.equalTo(height * 0.12)
            make.height.equalTo(height * 0.08)
        }
        migrosHemenButton.snp.makeConstraints { make in
            make.left.equalTo(self.sanalMarketButton.snp.right).offset(width * 0.04)
            make.top.equalTo(self.sanalMarketButton).offset(0)
            make.width.equalTo(width * 0.2)
            make.top.equalTo(height * 0.12)
            make.height.equalTo(height * 0.06)
        }
        migrosExtraButton.snp.makeConstraints { make in
            make.left.equalTo(self.migrosHemenButton.snp.right).offset(width * 0.04)
            make.top.equalTo(self.sanalMarketButton).offset(0)
            make.width.equalTo(width * 0.2)
            make.top.equalTo(height * 0.12)
            make.height.equalTo(height * 0.06)
        }
    }
    
    func tableViewLayout(){
        mainTableView.snp.makeConstraints { make in
            make.top.equalTo(self.topView.snp.bottom).offset(0)
            make.width.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
    
    @IBAction func hemenButtonClicked(_ sender: UIButton) {
        topView.backgroundColor = .systemYellow
    }
    @IBAction func extraButton(_ sender: UIButton) {
        
        topView.backgroundColor = .systemBlue
    }
    @IBAction func sanalButton(_ sender: UIButton) {
        topView.backgroundColor = .systemOrange
    }
    
    
}

extension AnasayfaViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "searchCell", for: indexPath) as! SearchbarTableViewCell
            cell.mainViewi.clipsToBounds = true
            cell.mainViewi.layer.cornerRadius = 7
            cell.mainViewi.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.width.equalTo(width * 0.9)
                make.centerX.equalToSuperview()
                make.height.equalTo(height * 0.07)
            }
            cell.searchButton.snp.makeConstraints { make in
                make.left.equalTo(width * 0.03)
                make.centerY.equalToSuperview()
                make.width.equalTo(width * 0.1)
            }
            cell.textField.snp.makeConstraints { make in
                make.left.equalTo(cell.searchButton.snp.right).offset(width * 0.06)
                make.centerY.equalToSuperview()
                make.width.equalTo(width * 0.4)
            }
            cell.microphoneButton.snp.makeConstraints { make in
                make.left.equalTo(cell.textField.snp.right).offset(width * 0.04)
                make.centerY.equalToSuperview()
                make.width.equalTo(width * 0.1)
            }
            cell.barcodeButton.snp.makeConstraints { make in
                make.left.equalTo(cell.microphoneButton.snp.right).offset(width * 0.05)
                make.centerY.equalToSuperview()
                make.width.equalTo(width * 0.1)
            }
            return cell
        } else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell", for: indexPath) as! HeaderLabelTableViewCell
            cell.firsatLabel.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.width.equalTo(width * 0.9)
                make.centerX.equalToSuperview()
            }
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell", for: indexPath) as! HeaderLabelTableViewCell
            cell.firsatLabel.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.width.equalTo(width * 0.9)
                make.centerX.equalToSuperview()
            }
            cell.firsatLabel.text = ""
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return UIScreen.main.bounds.size.height * 0.12
        } else if indexPath.row == 2 {
            return UIScreen.main.bounds.size.height * 0.06
        } else {
            return UIScreen.main.bounds.size.height * 0.12
        }
    }
    
    
}

