//
//  ViewController.swift
//  Jokenpo3.0
//
//  Created by Josicleison on 11/07/22.
//

import UIKit

class View: UIViewController {
    
    let defaultSze: CGFloat = 128
    let defaultColor = UIColor(red: 216/255, green: 37/255, blue: 84/255, alpha: 1)
    
    let titleLabel: UILabel = {
        
        let titleLabel = UILabel()
        titleLabel.defaultText(weight: .heavy)
        titleLabel.text = "Jokenpo"
        
        return titleLabel
    }()
    
    lazy var playerCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.itemSize = CGSize(width: defaultSze, height: defaultSze)
        
        let playerCollectionView = UICollectionView(frame: view.frame,
                                                    collectionViewLayout: layout)
        playerCollectionView.register(Cell.self, forCellWithReuseIdentifier: cellIdentifier)
        playerCollectionView.backgroundColor = defaultColor
        playerCollectionView.delegate = self
        playerCollectionView.dataSource = self
        
        return playerCollectionView
    }()
    
    let versusImage = UIImageView(image: UIImage(named: "VS"))
    
    lazy var cpuImage: (view: UIImageView, constraints: [NSLayoutConstraint]) = {
        
        let cpuImage = UIImageView(image: UIImage(named: "0"))
        cpuImage.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [
            
            NSLayoutConstraint(item: cpuImage,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: versusImage,
                               attribute: .bottom,
                               multiplier: 1,
                               constant: 0),
            NSLayoutConstraint(item: cpuImage,
                               attribute: .centerX,
                               relatedBy: .equal,
                               toItem: versusImage,
                               attribute: .centerX,
                               multiplier: 1,
                               constant: 0),
            cpuImage.heightAnchor.constraint(equalToConstant: defaultSze),
            cpuImage.widthAnchor.constraint(equalToConstant: defaultSze)
        ]
        
        return (view: cpuImage, constraints: constraints)
    }()
    
    let resultLabel: UILabel = {
        
        let resultLabel = UILabel()
        resultLabel.defaultText()
        
        return resultLabel
    }()
    
    let victoryLabel: UILabel = {
        
        let victoryLabel = UILabel()
        victoryLabel.defaultText(size: 20, weight: .heavy)
        victoryLabel.text = "Victory: 0"
        
        return victoryLabel
    }()
    
    let drawLabel: UILabel = {
        
        let drawLabel = UILabel()
        drawLabel.defaultText(size: 20, weight: .heavy)
        drawLabel.text = "Draw: 0"
        
        return drawLabel
    }()
    
    let loseLabel: UILabel = {
        
        let loseLabel = UILabel()
        loseLabel.defaultText(size: 20, weight: .heavy)
        loseLabel.text = "Lose: 0"
        
        return loseLabel
    }()
    
    lazy var scoreStackView: UIStackView = {
        
        let scoreStackView = UIStackView(arrangedSubviews: [victoryLabel, drawLabel, loseLabel])
        scoreStackView.distribution = .fillEqually
        
        return scoreStackView
    }()
    
    lazy var constraints: [NSLayoutConstraint] = {
        
        return [
            
            titleLabel.constraintInsideTo(view.safeAreaLayoutGuide, .top),
            titleLabel.constraintInsideTo(view, .leading),
            titleLabel.constraintInsideTo(view, .trailing),
            
            playerCollectionView.constraintOutsideTo(titleLabel, .top, 10),
            playerCollectionView.constraintInsideTo(view, .leading),
            playerCollectionView.constraintInsideTo(view, .trailing),
            playerCollectionView.heightAnchorOnSuperview(defaultSze),
            
            versusImage.constraintOutsideTo(playerCollectionView, .top),
            versusImage.constraintInsideTo(view, .leading),
            versusImage.constraintInsideTo(view, .trailing),
            versusImage.heightAnchorOnSuperview(defaultSze),
            
            resultLabel.constraintInsideTo(scoreStackView, .leading),
            resultLabel.constraintInsideTo(scoreStackView, .trailing),
            resultLabel.constraintOutsideTo(scoreStackView, .bottom, 20),
            
            scoreStackView.constraintInsideTo(view, .leading),
            scoreStackView.constraintInsideTo(view, .trailing),
            scoreStackView.constraintInsideTo(view.safeAreaLayoutGuide, .bottom, 20)
        ]
    }()
    
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        
        view.backgroundColor = defaultColor
        
        view.addSubviews([playerCollectionView, titleLabel, versusImage, cpuImage.view, resultLabel, scoreStackView])
        
        view.addConstraints(cpuImage.constraints + constraints)
        
        super.viewDidLoad()
    }
}

extension View: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell",
                                                      for: indexPath) as? Cell
        cell?.imageView.image = UIImage(named: "\(indexPath.row)")
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        viewModel.delegate = self
        viewModel.play(indexPath)
    }
}

extension View: ViewModelProtocol {
    
    func updateResult(_ result: String) {
        
        resultLabel.text = result
    }
    
    func updateLabels(_ victory: String,
                      _ draw: String,
                      _ lose: String) {
        
        victoryLabel.text = "Victory: \(victory)"
        drawLabel.text = "Draw: \(draw)"
        loseLabel.text = "Lose: \(lose)"
    }
    
    func updateImage(_ cpuTurn: String) {
        
        cpuImage.view.image = UIImage(named: cpuTurn)
    }
}
