//
//  CourseTable.swift
//  Vacation 360
//
//  Created by pramono wang on 10/14/16.
//  Copyright © 2016 RayWenderlich. All rights reserved.
//

import UIKit

class CourseTable: UITableViewController {

    var courses = ["GEOGRAPHY", "BIOLOGY", "PHYSICS", "HISTORY", "ZOOLOGY", "SPAIN", "CHEMISTRY", "GEOGRAPHY", "ENGLISH"]
    
    var links = ["https://s3-us-west-2.amazonaws.com/pramono-railsauth-assets/great+wall+.mp4","https://s3-us-west-2.amazonaws.com/pramono-railsauth-assets/The+Virtual+Plant+Cell+360%C2%B0+tour+-+Plant+Energy+Biology+VR.mp4","https://s3-us-west-2.amazonaws.com/pramono-railsauth-assets/Explore+The+Solar+System-+360+Degree+Interactive+Tour!+(1).mp4","https://s3-us-west-2.amazonaws.com/pramono-railsauth-assets/video+battle.mp4","https://s3.amazonaws.com/ray.wenderlich/elephant_safari.mp4","","","",""]
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("coursecell", forIndexPath: indexPath)
        
        cell.textLabel?.text = courses[indexPath.row]
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showcourse")
        {
            let svc = segue.destinationViewController as! VacationViewController
            
            let indexPath = tableView.indexPathForCell(sender as! UITableViewCell)
            
            svc.courseUrl = links[(indexPath?.row)!]
            
        }
    }
}
