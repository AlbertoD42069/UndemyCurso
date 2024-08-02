//
//  ViewHome.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 02/08/24.
//

import UIKit

class ViewHome: UIView {

    /*private let viewButton: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()*/
    
    private let textFieldCustom : UITextField = {
        let text : UITextField = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = .white
        text.layer.cornerRadius = 4
        text.placeholder = " Hola Mundo"
        return text
    }()
    private let buttonCustom: UIButton = {
        let button : UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Presionar", for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(presionar), for: .touchUpInside)
        return button
    }()
    private let pickers: UIPickerView = {
        let pick : UIPickerView = UIPickerView()
        pick.translatesAutoresizingMaskIntoConstraints = false
        pick.isHidden = true
        return pick
    }()
    
    private let pageControl : UIPageControl = {
        let page : UIPageControl = UIPageControl()
        page.translatesAutoresizingMaskIntoConstraints = false
        page.addTarget(self, action: #selector(deslizarPageControl), for: .valueChanged)
        page.isHidden = true
        return page
    }()
    
    private let segmentControl: UISegmentedControl = {
        let segment : UISegmentedControl = UISegmentedControl()
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.addTarget(self, action: #selector(deslizarSegmentControl), for: .valueChanged)
        segment.isHidden = true
        return segment
    }()
    private let slider: UISlider = {
        let slider : UISlider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self, action: #selector(accionDeSlider), for: .valueChanged)
        slider.isHidden = true
        return slider
    }()
    private let stepper: UIStepper = {
        let ste : UIStepper = UIStepper()
        ste.translatesAutoresizingMaskIntoConstraints = false
        ste.addTarget(self, action: #selector(accionStepper), for: .valueChanged)
        ste.isHidden = true
        return ste
    }()
    private let myswitch: UISwitch = {
        let mySwitch : UISwitch = UISwitch()
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        mySwitch.addTarget(self, action: #selector(accionSwitch), for: .valueChanged)
        return mySwitch
    }()
    private let progressView: UIProgressView = {
        let progress : UIProgressView = UIProgressView()
        progress.translatesAutoresizingMaskIntoConstraints = false
        return progress
    }()
    private let progressIndicador: UIActivityIndicatorView = {
        let indicator : UIActivityIndicatorView = UIActivityIndicatorView()
        indicator.translatesAutoresizingMaskIntoConstraints = false
        return indicator
    }()
    
    let pikkerValue: [String] = ["uno","dos","tres","cuatro","cinco"]

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addComponents()
        setLayout()
        setupTextField()
        setupSlider()
        setupSwitch()
        setupProgressIndicator()
        setUpSegmentControl()
        setUpPickerView()
        setUpPageControl()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func addComponents(){
        //addSubview(viewButton)
        addSubview(textFieldCustom)
        addSubview(buttonCustom)
        addSubview(pickers)
        addSubview(pageControl)
        addSubview(segmentControl)
        addSubview(slider)
        addSubview(stepper)
        addSubview(myswitch)
        addSubview(progressView)
        addSubview(progressIndicador)
    }
    func setLayout(){
        NSLayoutConstraint.activate([
            textFieldCustom.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            textFieldCustom.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            textFieldCustom.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            textFieldCustom.heightAnchor.constraint(equalToConstant: 30),
            
            buttonCustom.topAnchor.constraint(equalTo: textFieldCustom.bottomAnchor, constant: 10),
            buttonCustom.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            buttonCustom.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            buttonCustom.heightAnchor.constraint(equalToConstant: 30),
            
            pickers.topAnchor.constraint(equalTo: buttonCustom.bottomAnchor, constant: 5),
            pickers.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            pickers.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            pageControl.topAnchor.constraint(equalTo: pickers.bottomAnchor, constant: 5),
            pageControl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            pageControl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            segmentControl.topAnchor.constraint(equalTo: pageControl.bottomAnchor, constant: 5),
            segmentControl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            segmentControl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            
            slider.topAnchor.constraint(equalTo: segmentControl.bottomAnchor, constant: 5),
            slider.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            slider.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            
            stepper.topAnchor.constraint(equalTo: slider.bottomAnchor, constant: 5),
            stepper.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 5),
            
            myswitch.topAnchor.constraint(equalTo: stepper.bottomAnchor, constant: 5),
            myswitch.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 5),

            progressView.topAnchor.constraint(equalTo: myswitch.bottomAnchor, constant: 5),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            
            progressIndicador.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 10),
            progressIndicador.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            progressIndicador.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        ])
    }
    //-----
    func setupTextField(){
        textFieldCustom.delegate = self
    }
    func setupProgressIndicator(){
     progressIndicador.color = .red
     progressIndicador.startAnimating()
    }
    func setupSwitch(){
     myswitch.onTintColor = .red
     myswitch.isOn = false
    }
    func setupSlider(){
     slider.minimumTrackTintColor = .green
     slider.minimumValue = 1
     slider.maximumValue = Float(pikkerValue.count)
     slider.value = 1    }
    func setUpSegmentControl(){
     segmentControl.removeAllSegments()
     for (index, values) in pikkerValue.enumerated() {
         segmentControl.insertSegment(withTitle: values, at: index, animated: true)
     }
    }
    func setUpPageControl(){
     pageControl.numberOfPages = pikkerValue.count
     pageControl.currentPageIndicatorTintColor = .black
     pageControl.pageIndicatorTintColor = .lightGray
    }
    func setUpPickerView(){
     pickers.delegate = self
     pickers.dataSource = self
    }
    
    //-----
    @objc func presionar(){
        
    }
    
    @objc func deslizarPageControl(){
     pickers.selectRow(pageControl.currentPage, inComponent: 0, animated: true)
     let myStringPicker = pikkerValue[pageControl.currentPage]
     buttonCustom.setTitle(myStringPicker, for: .normal)
     print(myStringPicker)
    }
    @objc func deslizarSegmentControl(){
     pickers.selectRow(segmentControl.selectedSegmentIndex, inComponent: 0, animated: true)
     segmentControl.selectedSegmentIndex = pageControl.currentPage
    }
    @objc func accionDeSlider(){
     var progres : Float = 0
     switch slider.value {
     case 1..<2:
         segmentControl.selectedSegmentIndex = 0
         pickers.selectRow(Int(slider.value), inComponent: 0, animated: true)
         progres = 0.2
     case 2..<3:
         segmentControl.selectedSegmentIndex = 1
         pickers.selectRow(slider.hash, inComponent: 0, animated: true)
         progres = 0.4
     case 3..<4:
         segmentControl.selectedSegmentIndex = 2
         pickers.selectRow(Int(slider.value), inComponent: 0, animated: true)
         progres = 0.6
     case 4..<5:
         segmentControl.selectedSegmentIndex = 3
         pickers.selectRow(Int(slider.value), inComponent: 0, animated: true)
         progres = 0.8
     default:
         segmentControl.selectedSegmentIndex = 4
         pickers.selectRow(Int(slider.value), inComponent: 0, animated: true)
         progres = 1
     }
     progressView.progress = progres
     
    }
    @objc func accionStepper(){
     let value = stepper.value
     slider.value = Float(value)
    }
    @objc func accionSwitch(){
     if myswitch.isOn {
         pickers.isHidden = false
         segmentControl.isHidden = false
         pageControl.isHidden = false
         slider.isHidden = false
         stepper.isHidden = false
         progressIndicador.stopAnimating()
     }else {
         pickers.isHidden = true
         pageControl.isHidden = true
         slider.isHidden = true
         stepper.isHidden = true
         segmentControl.isHidden = true
         progressIndicador.startAnimating()
     }
    }
}
extension ViewHome : UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldCustom.resignFirstResponder()
}
    public func textFieldDidEndEditing(_ textField: UITextField) {
        buttonCustom.setTitle(textFieldCustom.text, for: .normal)
    print(textFieldCustom.text ?? "")
    }
}

extension ViewHome: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pikkerValue.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pikkerValue[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myStringPicker = pikkerValue[row]
        buttonCustom.setTitle(myStringPicker, for: .normal)
        print(myStringPicker)
        pageControl.currentPage = row
        segmentControl.selectedSegmentIndex = row
 //slider.minimumValue = Float(row)
    }
}
