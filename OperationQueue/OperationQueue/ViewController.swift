//
//  ViewController.swift
//  OperationQueue
//
//  Created by SHANI SHAH on 16/06/18.
//  Copyright © 2018 SHANI SHAH. All rights reserved.
//

import UIKit
import CoreImage

let dataSourceURL = NSURL(string:"http://www.raywenderlich.com/downloads/ClassicPhotosDictionary.plist")

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var dataTableView: UITableView!
    var queue = OperationQueue()
    
    let imageURLs = ["https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc","https://media.treehugger.com/assets/images/2011/10/tiger-running-snow.jpg.600x315_q90_crop-smart.jpg", "https://www.w3schools.com/css/trolltunga.jpg", "https://www.w3schools.com/w3css/img_lights.jpg", "https://cdn.pixabay.com/photo/2015/04/28/20/55/aurora-borealis-744351_960_720.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2L0pETnybA5sld783iz1mgtOFS8vxBTjB4tYXeRtQWDxig3dc"]

    
    var photos = [PhotoRecord]()
    let pendingOperations = PendingOperations()

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        dataTableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
        fetchPhotoDetails()
    }
    
    func fetchPhotoDetails() {
        let request = URLRequest(url:dataSourceURL! as URL)
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        NSURLConnection.sendAsynchronousRequest(request, queue: OperationQueue.main) {response,data,error in
            if data != nil {
                let datasourceDictionary = try? PropertyListSerialization.propertyList(from: data!, options: [], format: nil) as! NSDictionary
                
                for(key ,value) in datasourceDictionary! {
                    let name = key as? String
                    let url = NSURL(string:value as? String ?? "")
                    if name != nil && url != nil {
                        let photoRecord = PhotoRecord(name:name!, url:url!)
                        self.photos.append(photoRecord)
                    }
                }
                
                self.dataTableView.reloadData()
            }
            
            if error != nil {
                let alert = UIAlertView(title:"Oops!",message:error?.localizedDescription, delegate:nil, cancelButtonTitle:"OK")
                alert.show()
            }
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell: ImagesTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ImagesTableViewCell", for: indexPath) as! ImagesTableViewCell
//        var img: UIImage!
//        let operation = BlockOperation(block: {
//            img  = Downloader.downloadImageWithURl(self.imageURLs[indexPath.row])
//        })
//
//        operation.completionBlock = {
//            DispatchQueue.main.async {
//                cell.imgView?.image = img
//            }
//
//        }
//        queue.addOperation(operation)
//
//        return cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath) as! UITableViewCell
        
        //1
        if cell.accessoryView == nil {
            let indicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
            cell.accessoryView = indicator
        }
        let indicator = cell.accessoryView as! UIActivityIndicatorView
        
        //2
        if let photoDetails = photos[indexPath.row] as? PhotoRecord {
            cell.textLabel?.text = photoDetails.name
            cell.imageView?.image = photoDetails.image
            
            //4
            switch (photoDetails.state){
            case .Filtered:
                indicator.stopAnimating()
            case .Failed:
                indicator.stopAnimating()
                cell.textLabel?.text = "Failed to load"
            case .New, .Downloaded:
                indicator.startAnimating()
                if (!dataTableView.isDragging && !dataTableView.isDecelerating) {
                    self.startOperationsForPhotoRecord(photoDetails: photoDetails, indexPath: indexPath )
                }
            }
            

        } else { print("no record") }
        
        //3
        return cell
    }
    
     func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        //1
        suspendAllOperations()
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        // 2
        if !decelerate {
            loadImagesForOnscreenCells()
            resumeAllOperations()
        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // 3
        loadImagesForOnscreenCells()
        resumeAllOperations()
    }
    
    func suspendAllOperations () {
        pendingOperations.downloadQueue.isSuspended = true
        pendingOperations.filtrationQueue.isSuspended = true
    }
    
    func resumeAllOperations () {
        pendingOperations.downloadQueue.isSuspended = false
        pendingOperations.filtrationQueue.isSuspended = false
    }
    
    func loadImagesForOnscreenCells () {
        //1
        if let pathsArray = dataTableView.indexPathsForVisibleRows {
            //2
            var allPendingOperations = Set(pendingOperations.downloadsInProgress.keys)//Set(pendingOperations.downloadsInProgress.keys.array)
            allPendingOperations.formUnion(pendingOperations.filtrationsInProgress.keys)//unionInPlace(pendingOperations.filtrationsInProgress.keys.array)
            
            //3
            var toBeCancelled = allPendingOperations
            let visiblePaths = Set(pathsArray as! [NSIndexPath])
            toBeCancelled.subtracting(visiblePaths)//subtractInPlace(visiblePaths)
            
            //4
            var toBeStarted = visiblePaths
            toBeStarted.subtracting(allPendingOperations)//subtractInPlace(allPendingOperations)
            
            // 5
            for indexPath in toBeCancelled {
                if let pendingDownload = pendingOperations.downloadsInProgress[indexPath] {
                    pendingDownload.cancel()
                }
                pendingOperations.downloadsInProgress.removeValue(forKey: indexPath)
                if let pendingFiltration = pendingOperations.filtrationsInProgress[indexPath] {
                    pendingFiltration.cancel()
                }
                pendingOperations.filtrationsInProgress.removeValue(forKey: indexPath)
            }
            
            // 6
            for indexPath in toBeStarted {
                let indexPath = indexPath as NSIndexPath
                let recordToProcess = self.photos[indexPath.row]
                startOperationsForPhotoRecord(photoDetails: recordToProcess, indexPath: indexPath as IndexPath)
            }
        }
    }
    
    func startOperationsForPhotoRecord(photoDetails: PhotoRecord, indexPath: IndexPath){
        switch (photoDetails.state) {
        case .New:
            startDownloadForRecord(photoDetails: photoDetails, indexPath: indexPath as NSIndexPath)
        case .Downloaded:
            NSLog("Downloaded")
//            startFiltrationForRecord(photoDetails: photoDetails, indexPath: indexPath)
        default:
            NSLog("do nothing")
        }
    }
    
    func startDownloadForRecord(photoDetails: PhotoRecord, indexPath: NSIndexPath){
        //1
        if let downloadOperation = pendingOperations.downloadsInProgress[indexPath] {
            return
        }
        
        //2
        let downloader = ImageDownloader(photoRecord: photoDetails)
        //3
        downloader.completionBlock = {
            if downloader.isCancelled {
                return
            }
            DispatchQueue.main.async {
                self.pendingOperations.downloadsInProgress.removeValue(forKey: indexPath)//downloadsInProgress.removeValueForKey(indexPath)
                self.dataTableView.reloadRows(at: [indexPath as IndexPath], with: .fade)
            }
        }
        //4
        pendingOperations.downloadsInProgress[indexPath] = downloader
        //5
        pendingOperations.downloadQueue.addOperation(downloader)
    }
    
//    func startFiltrationForRecord(photoDetails: PhotoRecord, indexPath: IndexPath){
//        if let filterOperation = pendingOperations.filtrationsInProgress[indexPath]{//filtrationsInProgress[indexPath]{
//            return
//        }
//
//        let filterer = ImageFiltration(photoRecord: photoDetails)
//        filterer.completionBlock = {
//            if filterer.isCancelled {
//                return
//            }
//            DispatchQueue.main.async {
//                self.pendingOperations.filtrationsInProgress.removeValue(forKey: indexPath)
//                self.dataTableView.reloadRows(at: [indexPath as IndexPath], with: .fade)
//            }
//        }
//        pendingOperations.filtrationsInProgress[indexPath] = filterer
//        pendingOperations.filtrationQueue.addOperation(filterer)
//    }
}

class Downloader {
    class func downloadImageWithURl(_ url: String) -> UIImage! {
        if let data = try? Data(contentsOf: URL(string: url)!) {
            return UIImage(data: data)!
        }
        return nil
    }
    
}

class ImagesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

