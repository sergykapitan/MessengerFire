//
//  MessengerCodeCell.swift
//  MessengerFire
//
//  Created by Sergey on 31.10.2020.
//

import Foundation
import UIKit

protocol MessengerViewModel {
    
    var name: String { get }
}



final class MessengerCodeCell: UITableViewCell {
    
    static let reuseId = "MessengerCodeCell"
    
    //MARK: - First layer in TopView
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //MARK: - Second layer in TopView
    let nameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        label.numberOfLines = 0
       // label.font = Constants.postLabelFont
        label.textColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return label
    }()
    
    //MARK: - init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
       //  backgroundColor = UIColor.systemTeal
     
         backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
         selectionStyle = .none
        
         cardView.layer.cornerRadius = 10
         cardView.clipsToBounds = true
        
      //  moreTextButton.addTarget(self, action: #selector(moreTextButtonTouch), for: .touchUpInside)
        
         overlayFirstLayer()  // First layer
         overlaySecondLayer() // Second layer
    }
    
    
    /*  @objc func moreTextButtonTouch() {
        delegate?.reavalPost(for: self)
    }
  */
    func set(viewModel: MessengerViewModel) {
        
        nameLabel.text = viewModel.name
       
        
    }
    
    private func overlayFirstLayer() {
        addSubview(cardView)
        
        
        
       // cardView = UIView.frame(<#T##self: UIView##UIView#>)
      //  cardView.fillSuperview(padding: Constants.cardInsets)
      //  let cardInsets = UIEdgeInsets(top: 0, left: 8, bottom: 12, right: 8)
      //  cardView.superview?.frame(forAlignmentRect: 10)
    }
    private func overlaySecondLayer() {
        cardView.addSubview(nameLabel)
      
        
        //topView constraints
        nameLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 8).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -8).isActive = true
        nameLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 8).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: Constants.topViewHeight).isActive = true
    }

    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
}
