//
//  TableViewCell.swift
//  Harry homework
//
//  Created by Chingiz on 10.03.2024.
//

import UIKit

/*class CharacterTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
*/
class CharacterTableViewCell: UITableViewCell {
    let nameLabel = UILabel()
    let houseLabel = UILabel()
    let wandLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        houseLabel.translatesAutoresizingMaskIntoConstraints = false
        wandLabel.translatesAutoresizingMaskIntoConstraints = false

        addSubview(nameLabel)
        addSubview(houseLabel)
        addSubview(wandLabel)

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            houseLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            houseLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            wandLabel.topAnchor.constraint(equalTo: houseLabel.bottomAnchor, constant: 4),
            wandLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
        ])
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
