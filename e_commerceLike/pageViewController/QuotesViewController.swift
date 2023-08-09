//
//  QuotesViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 11/05/23.
//

import UIKit

class QuotesViewController: UIViewController {

   // static var quotes = [Product]()
    @IBOutlet weak var quotesTable: UITableView?
    static var quotesTitle = [quotesModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quotesTable?.delegate = self
        quotesTable?.dataSource = self
        
    }

}
extension QuotesViewController:UITableViewDelegate,UITableViewDataSource
{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return QuotesViewController.quotes.count
            return QuotesViewController.quotesTitle.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = quotesTable?.dequeueReusableCell(withIdentifier: "quotesCell") as? quotesCell
        {
       //     let qR = QuotesViewController.quotes[indexPath.row]
        //       cell.quotesSetUpCell(_quotes: qR)
        let qrt = QuotesViewController.quotesTitle[indexPath.row]
        cell.quotesTitleSetUpCell(_quotes: qrt)
        cell.layer.cornerRadius = 20
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.borderWidth = 5
            return cell
        }
        return quotesCell()
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        let category = DataService.instance.QuotesAnniversayGet()[indexPath.row]
//        CheckViewController.imag = category.productImgName
//            performSegue(withIdentifier: "top", sender: category)
//        }
    }
    

