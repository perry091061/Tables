//
//  ModelView.swift
//  TableViews
//
//  Created by Perry Davies on 21/01/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import UIKit
class ModelView :NSObject, UITableViewDataSource, UITableViewDelegate
{
 
    var cellIdentifier = "cell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        var message = "Do you wish to delete row:\(indexPath.row) in section :\(indexPath.section)"
        
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        cell.title.text = "Anything title"
        cell.subTitle.text = "Sub title anything"
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(section) - Title Header)"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "\(section) Footer"
    }
    
}
