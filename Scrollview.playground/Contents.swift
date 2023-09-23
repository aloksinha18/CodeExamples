//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    override func loadView() {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        let view = UIView()
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        
        // adding content on scroll view
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        for element in (1..<25) {
            let label = UILabel()
            label.numberOfLines = 0
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Number : \(element): This is label on stack view, which is being used to show a scroll view demo 🐰 \n \n"
            stackView.addArrangedSubview(label)
        }

        scrollView.addSubview(stackView)
        
        self.view = view
        
        // scrollview constraints
        NSLayoutConstraint.activate([ scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor), scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor), scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)])
        
        // stackview constraints
        let contentLayoutGuide = scrollView.contentLayoutGuide
          
          NSLayoutConstraint.activate([
            //3
            stackView.widthAnchor.constraint(equalTo:
              view.widthAnchor),
            stackView.leadingAnchor.constraint(equalTo:
              contentLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo:
              contentLayoutGuide.trailingAnchor),
            stackView.topAnchor.constraint(equalTo:
              contentLayoutGuide.topAnchor),
            //4
            stackView.bottomAnchor.constraint(equalTo:
              contentLayoutGuide.bottomAnchor)
          ])
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
