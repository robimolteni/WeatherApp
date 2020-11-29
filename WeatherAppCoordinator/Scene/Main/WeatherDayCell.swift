//
//  WeatherDayCell.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 29/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import UIKit

class WeatherDayCell: UITableViewCell {

    @IBOutlet weak var dayOfTheWeekLabel: UILabel!
    
    @IBOutlet weak var weatherConditionImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
