//
//  GCDViewController.swift
//  TestProj21
//
//  Created by Rahul Patel on 3/11/21.
//

import UIKit

class GCDViewController: UIViewController {

    let serialQueue = DispatchQueue(label: "Dispatch-Queue")
    let concurrentQueue = DispatchQueue(label: "Dispatch-Queue", attributes: .concurrent)

    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    let url0 = URL(string: "https://cdn.cocoacasts.com/3cbae1d5e178606580518a81da69e5af30a7bb5b/image-0.jpg")
    let url1 = URL(string: "https://cdn.cocoacasts.com/3cbae1d5e178606580518a81da69e5af30a7bb5b/image-1.jpg")
    let url2 = URL(string: "https://cdn.cocoacasts.com/3cbae1d5e178606580518a81da69e5af30a7bb5b/image-2.jpg")

    let serialDQ = DispatchQueue(label: "app-my_Serial")
    let conDQ = DispatchQueue(label: "dispatch", attributes: .concurrent)
    override func viewDidLoad() {
        super.viewDidLoad()
        let queue = OperationQueue()
        let operation1 = BlockOperation {
            print("block")
        }
        operation1.completionBlock = {
            print("completionBlock")
        }
        queue.addOperation(operation1)

    }
    
    @IBAction func concurrentAction(_ sender: Any) {
        imageView3.image = nil
        imageView2.image = nil
        imageView1.image = nil
        

        
        concurrentQueue.async { [weak self] in
            guard let url = self?.url0 else {return}

            guard let imgData = try? Data(contentsOf: url) else {
                return
            }
            let image = UIImage(data: imgData)
            DispatchQueue.main.async {
                self?.imageView1.image = image
            }
        }
        
        
        concurrentQueue.async { [weak self] in
            guard let url = self?.url1 else {return}
            guard let imgData = try? Data(contentsOf: url) else {
                return
            }
            let image = UIImage(data: imgData)
            DispatchQueue.main.async {
                self?.imageView2.image = image
            }
        }
        
        concurrentQueue.async { [weak self] in
            guard let url = self?.url2 else {return}
            guard let imgData = try? Data(contentsOf: url) else {
                return
            }
            let image = UIImage(data: imgData)
            DispatchQueue.main.async {
                self?.imageView3.image = image
            }
        }

    }
    @IBAction func serialAction(_ sender: Any) {
        imageView3.image = nil
        imageView2.image = nil
        imageView1.image = nil
        

        
        serialQueue.async { [weak self] in
            guard let url = self?.url0 else {return}

            guard let imgData = try? Data(contentsOf: url) else {
                return
            }
            let image = UIImage(data: imgData)
            DispatchQueue.main.async {
                self?.imageView1.image = image
            }
        }
        
        
        serialQueue.async { [weak self] in
            guard let url = self?.url1 else {return}
            guard let imgData = try? Data(contentsOf: url) else {
                return
            }
            let image = UIImage(data: imgData)
            DispatchQueue.main.async {
                self?.imageView2.image = image
            }
        }
        
        serialQueue.async { [weak self] in
            guard let url = self?.url2 else {return}
            guard let imgData = try? Data(contentsOf: url) else {
                return
            }
            let image = UIImage(data: imgData)
            DispatchQueue.main.async {
                self?.imageView3.image = image
            }
        }

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
