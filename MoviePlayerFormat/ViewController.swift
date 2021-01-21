//
//  ViewController.swift
//  MoviePlayerFormat
//
//  Created by 김가영 on 2021/01/21.
//  Copyright © 2021 김가영. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func innerVideoMp4(_ sender: UIButton) {
        //앱 내부의 파일 경로 받아옴
        let filePath:String? = Bundle.main.path(forResource: "FastTyping", ofType:"mp4")
        
        //파일 경로를 NSURL형태로 바꿈
        let url = NSURL(fileURLWithPath: filePath!)
        
        playVideo(url: url)
    }
    
    
    @IBAction func innerVideoMov(_ sender: UIButton) {
        //앱 내부의 파일 경로 받아옴
        let filePath:String? = Bundle.main.path(forResource: "Mountaineering", ofType:"mov")
        
        //파일 경로를 NSURL형태로 바꿈
        let url = NSURL(fileURLWithPath: filePath!)
        
        playVideo(url: url)
    }
    
    
    @IBAction func outerVideoMp4(_ sender: UIButton) {
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz050w2mvud/Fireworks.mp4")!
        
        playVideo(url: url)
    }
    
    
    @IBAction func outerVideoMov(_ sender: UIButton) {
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/ijybpprsmx0bgre/Seascape.mov")!
        
        playVideo(url: url)
    }
    
    private func playVideo(url: NSURL){
        let playerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        
        self.present(playerController,animated: true){
            player.play()
        }
    }

}

