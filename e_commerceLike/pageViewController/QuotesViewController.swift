//
//  QuotesViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 11/05/23.
//

import UIKit

class QuotesViewController: UIViewController {

    static var quotes = [Product]()
    @IBOutlet weak var quotesTable: UITableView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quotesTable?.delegate = self
        quotesTable?.dataSource = self
        
    }

}
extension QuotesViewController:UITableViewDelegate,UITableViewDataSource
{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuotesViewController.quotes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = quotesTable?.dequeueReusableCell(withIdentifier: "quotesCell") as? quotesCell
        {
            let qR = QuotesViewController.quotes[indexPath.row]
            cell.quotesSetUpCell(_quotes: qR)
        cell.layer.cornerRadius = 20
            return cell
        }
        return quotesCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let category = DataService.instance.QuotesAnniversayGet()[indexPath.row]
         //   imageSelectViewController.ab = DataService.instance.QuotesAnniversayGet()
        CheckViewController.imag = category.productImgName
            performSegue(withIdentifier: "top", sender: category)
        }
    }
    

