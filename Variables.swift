//
//  Variables.swift
//  FlutterKeys
//
//  Created by Pheonix Clark on 6/29/24.
//
import SwiftUI
import AVFoundation
let synth = AVSpeechSynthesizer()

class Variables: NSObject, ObservableObject {
    static let shared = Variables()
    
    //speech synth and message row
    @Published var message: String = ""
    @Published var submittedTexts: [String] = []
    @Published var isTextFieldFocused: Bool = false
    @Published var availableVoices: [String] = []
    @Published var Voices: [AVSpeechSynthesisVoice] = []
    @Published var selectedVoice: AVSpeechSynthesisVoice? {
        didSet {
            if let selectedVoice = selectedVoice {
                UserDefaults.standard.set(selectedVoice.identifier, forKey: "selectedVoiceIdentifier")
            }
        }}
    @Published var r4te: Float {
        didSet {UserDefaults.standard.set(r4te, forKey: "speakRate")}
    }
    @Published var pi7ch: Float {
        didSet {UserDefaults.standard.set(pi7ch, forKey: "speakPitch")}
    }
    @Published var Play = true
    @Published var Pause = false
    @Published var resume = false
    var undoManager: UndoManager?
    @Published var Settings = false
    @Published var Expand = false
    
    //buttons expand page
    @Published var Flip = false
    @Published var ExpandedSize: CGFloat = 20
    
    //folder row buttons
    @Published var Hist0ry = false
    
    //message window font features
    @Published var FontSize: CGFloat {
        didSet {UserDefaults.standard.set(FontSize, forKey: "setFont")}}
    @Published var FontWeight: F0ntWeight {
        didSet {UserDefaults.standard.set(FontWeight.rawValue, forKey: "setWeight")}}
    @Published var FontDesign: F0ntDesign {
        didSet {UserDefaults.standard.set(FontDesign.rawValue, forKey: "setDesign")}}
  
    //Folder Row font features
    @Published var FontSizeFR: CGFloat {
        didSet {UserDefaults.standard.set(FontSizeFR, forKey: "setFontFR")}}
    @Published var FontWeightFR: F0ntWeight {
        didSet {UserDefaults.standard.set(FontWeightFR.rawValue, forKey: "setWeightFR")}}
    @Published var FontDesignFR: F0ntDesign {
        didSet {UserDefaults.standard.set(FontDesignFR.rawValue, forKey: "setDesignFR")}}
    
    //Grammer Row font features
    @Published var FontWeightGR: F0ntWeight {
        didSet {UserDefaults.standard.set(FontWeightGR.rawValue, forKey: "setWeightGR")}}
    @Published var FontDesignGR: F0ntDesign {
        didSet {UserDefaults.standard.set(FontDesignGR.rawValue, forKey: "setDesignGR")}}
    
    override private init() {
        if let savedFontDesignGR = UserDefaults.standard.object(forKey: "setDesignGR") as? String, let design = F0ntDesign (rawValue: savedFontDesignGR) {
            self.FontDesignGR = design
        } else {
            self.FontDesignGR = .regular
        }
        
        if let savedFontWeightGR = UserDefaults.standard.object(forKey: "setWeightGR") as? String, let weight = F0ntWeight (rawValue: savedFontWeightGR) {
            self.FontWeightGR = weight
        } else {
            self.FontWeightGR = .bold
        }
        
        if let savedFontDesign = UserDefaults.standard.object(forKey: "setDesign") as? String, let design = F0ntDesign (rawValue: savedFontDesign) {
            self.FontDesign = design
        } else {
            self.FontDesign = .regular
        }
        
        if let savedFontWeight = UserDefaults.standard.object(forKey: "setWeight") as? String, let weight = F0ntWeight (rawValue: savedFontWeight) {
            self.FontWeight = weight
        } else {
            self.FontWeight = .regular
        }
        
        if let savedFontDesignFR = UserDefaults.standard.object(forKey: "setDesignFR") as? String, let design = F0ntDesign (rawValue: savedFontDesignFR) {
            self.FontDesignFR = design
        } else {
            self.FontDesignFR = .regular
        }
        
        if let savedFontWeightFR = UserDefaults.standard.object(forKey: "setWeightFR") as? String, let weight = F0ntWeight (rawValue: savedFontWeightFR) {
            self.FontWeightFR = weight
        } else {
            self.FontWeightFR = .regular
        }
       
        if let savedFontSizeFR = UserDefaults.standard.object(forKey: "fontSizeFR") as? Float {
                  self.FontSizeFR = CGFloat(savedFontSizeFR)
              } else {
                  self.FontSizeFR = 13
              }
        
        if let savedRate = UserDefaults.standard.object(forKey: "speakRate") as? Float {
                  self.r4te = savedRate
              } else {
                  self.r4te = 0.5 // Default value
              }
        if let savedPitch = UserDefaults.standard.object(forKey: "speakPitch") as? Float {
            self.pi7ch = savedPitch
        }
        else {
            self.pi7ch = 1.0
        }
        
        if let voiceIdentifier = UserDefaults.standard.string(forKey: "selectedVoiceIdentifier"),
                let voice = AVSpeechSynthesisVoice(identifier: voiceIdentifier) {
                 self.selectedVoice = voice
             }
        if let savedFontSize = UserDefaults.standard.object(forKey: "fontSize") as? Float {
                  self.FontSize = CGFloat(savedFontSize)
              } else {
                  self.FontSize = 20
              }
        
         super.init()
         synth.delegate = self
        self.Voices = AVSpeechSynthesisVoice.speechVoices()
        
        listAvailableVoices()
     }
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    func listAvailableVoices() {
        let voices = AVSpeechSynthesisVoice.speechVoices()
        if voices.isEmpty {
            print("No voices")
        } else {
            DispatchQueue.main.async {
                self.availableVoices = voices.map { $0.name }
                print("Available voices: \(self.availableVoices)")
            }
        }
    }
        
    func speak() {
        let utterance = AVSpeechUtterance(string: message)
        if let v0ice = selectedVoice {
            utterance.voice = v0ice
        }
        utterance.rate = r4te
        utterance.pitchMultiplier = pi7ch
        synth.speak(utterance)
        submittedTexts.append(message)
    }
    
    func rewind(){
        synth.stopSpeaking(at: .immediate)
        speak()
    }
    func doSubmit() {
        speak()
    }
    
    func pause() {
        synth.pauseSpeaking(at: .immediate)
        resume = true
        Play = false
    }
    func unPause(){
        synth.continueSpeaking()
        resume = false
        Play = false
        Pause = true
    }
   
    func setText(_ newText: String) {
        let oldText = self.message
        self.message = newText
        
        undoManager?.registerUndo(withTarget: self) { target in
            target.setText(oldText)
        }
    }
    func appendText(_ text: String) {
        let oldText = self.message
        self.message += text
        
        undoManager?.registerUndo(withTarget: self) { target in
            target.setText(oldText)
        }
    }
}

extension Variables: AVSpeechSynthesizerDelegate {
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
        DispatchQueue.main.async {
            self.Pause = true
            self.Play = false
            self.resume = false
        }
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        DispatchQueue.main.async {
            self.Pause = false
            self.Play = true
            self.resume = false
        }
    }
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didContinue utterance: AVSpeechUtterance) {
           DispatchQueue.main.async {
               self.Pause = true
               self.Play = false
               self.resume = false
           }
       }
    
}

