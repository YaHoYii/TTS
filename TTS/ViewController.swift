//
//  ViewController.swift
//  TTS
//
//  Created by 太阳在线YHY on 2017/6/28.
//  Copyright © 2017年 太阳在线. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
	@IBOutlet weak var textView: UITextView!
    let syntesizer = AVSpeechSynthesizer()
	var utterance = AVSpeechUtterance()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		syntesizer.delegate = self

	}

	@IBAction func play(_ sender: UIButton) {
		
		// 获取 textView 输入的文字
		let string = textView.text
		// 设置将要语音的文字
		utterance = AVSpeechUtterance(string: string!)
		// 语音的速度
		utterance.rate = 0.1
		// 开始朗读
		syntesizer.speak(utterance)
		
	}
	
	@IBAction func pause(_ sender: UIButton) {
		// 暂停朗读
		syntesizer.pauseSpeaking(at: .immediate)
		
	}
	
	@IBAction func continuePlay(_ sender: UIButton) {
		// 继续朗读
		syntesizer.continueSpeaking()
		
	}

	@IBAction func stopPlay(_ sender: UIButton) {
		// 停止之后，继续是无法继续播放的，因为不是暂停
		syntesizer.stopSpeaking(at: .immediate)
	}

}


extension ViewController: AVSpeechSynthesizerDelegate {
	
	func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
		print("开始")
	}
	
	func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
		 print("完成")
	}
	
	func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didPause utterance: AVSpeechUtterance) {
		 print("暂停")
	}
	
	func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didContinue utterance: AVSpeechUtterance) {
		 print("继续")
	}
	
	func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didCancel utterance: AVSpeechUtterance) {
		print("停止")
	}
	
	func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance) {
		print("阅读")
	}
	
	
}



