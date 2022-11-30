//
//  ViewController.swift
//  UIScrollViewExample
//
//  Created by Shivam Prajapati on 30/11/22.
//

import UIKit

extension UIViewController {

    func showToast(message : String, font: UIFont) {

        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 2.0, delay: 0, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
}

class ViewController: UIViewController {
    let scrollView: UIScrollView = {
            let scrollView = UIScrollView()

            scrollView.translatesAutoresizingMaskIntoConstraints = false
            return scrollView
        }()

        let scrollViewContainer: UIStackView = {
            let view = UIStackView()

            view.axis = .vertical
            view.spacing = 10

            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()


        let blueView: UIView = {
            let view = UIView()
            view.heightAnchor.constraint(equalToConstant: 500).isActive = true
            view.backgroundColor = .blue
            return view
        }()

        let greenView: UIView = {
            let view = UIView()
            view.heightAnchor.constraint(equalToConstant: 500).isActive = true
            view.backgroundColor = .green
            return view
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        scrollView.addSubview(scrollViewContainer)

        scrollViewContainer.addArrangedSubview(blueView)
        scrollViewContainer.addArrangedSubview(greenView)

        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        scrollViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        scrollViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        scrollViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        scrollViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        scrollViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [self] in
            let view = UIView()
            view.heightAnchor.constraint(equalToConstant: 500).isActive = true
            view.backgroundColor = .red
            self.scrollViewContainer.addArrangedSubview(view)
            self.showToast(message: "New view added", font: .systemFont(ofSize: 12.0))

        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) { [self] in
            let view = UIView()
            view.heightAnchor.constraint(equalToConstant: 500).isActive = true
            view.backgroundColor = .red
            self.scrollViewContainer.addArrangedSubview(view)
            self.showToast(message: "New view added", font: .systemFont(ofSize: 12.0))
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) { [self] in
            let view = UIView()
            view.heightAnchor.constraint(equalToConstant: 500).isActive = true
            view.backgroundColor = .red
            self.scrollViewContainer.addArrangedSubview(view)
            self.showToast(message: "New view added", font: .systemFont(ofSize: 12.0))
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 8.0) { [self] in
            let view = UIView()
            view.heightAnchor.constraint(equalToConstant: 500).isActive = true
            view.backgroundColor = .red
            self.scrollViewContainer.addArrangedSubview(view)
            self.showToast(message: "New view added", font: .systemFont(ofSize: 12.0))
        }
                
    }


}

