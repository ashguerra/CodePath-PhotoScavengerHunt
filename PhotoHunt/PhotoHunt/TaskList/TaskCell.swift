//
//  TaskCell.swift
//  PhotoHunt
//
//  Created by Ashley Guerra on 3/19/23.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var completedImageView: UIImageView!
    
    
    func configure(with task: Task) {
        titleLabel.text = task.title
        titleLabel.textColor = task.isComplete ? .secondaryLabel : .label
        completedImageView.image = UIImage(systemName: task.isComplete ? "checkmark.circle" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedImageView.tintColor = task.isComplete ? .systemGreen : .tertiaryLabel
    }

}
