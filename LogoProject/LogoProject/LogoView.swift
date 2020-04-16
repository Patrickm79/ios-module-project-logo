//
//  LogoView.swift
//  LogoProject
//
//  Created by Patrick Millet on 12/11/19.
//  Copyright © 2019 Patrick Millet. All rights reserved.
//

import UIKit


    @IBDesignable class LogoView: UIView {
        
         let lambdaBgColor = UIColor.red
         let lambdaIconColor = UIColor.red

         let heightOffset: CGFloat = 70.0
         let logoHeight: CGFloat = 30.0
         let logoWidth: CGFloat = 10.0

        override func draw(_ rect: CGRect) {
            
            if let context = UIGraphicsGetCurrentContext() {
                
                //MARK: Main rect
                let backgroundRect = CGRect(x: rect.origin.x,
                                       y: rect.origin.y,
                                       width: rect.size.width,
                                       height: rect.size.height - heightOffset)
                context.beginPath()
                let backgroundRectPath = CGPath(roundedRect: backgroundRect, cornerWidth: 10.0, cornerHeight: 10.0, transform: nil)
                context.addPath(backgroundRectPath)

                context.setFillColor(lambdaBgColor.cgColor)
                context.fillPath()
                context.closePath()


                let viewCenter = CGPoint(x: rect.size.width / 2.0,
                                           y: (rect.size.height - heightOffset) / 2.0)

                let curveOffset: CGFloat = 5.0
                
                
                //MARK: Bottom Triangle
                context.beginPath()
                context.move(to: CGPoint(x: rect.origin.x + curveOffset,
                                         y: rect.size.height - heightOffset - 1.5))

                context.addLine(to: CGPoint(x: viewCenter.x - curveOffset * 2,
                                            y: (rect.size.height - heightOffset) + heightOffset - curveOffset))
                context.addQuadCurve(to: CGPoint(x: viewCenter.x + curveOffset * 2,
                                                   y: (rect.size.height - heightOffset) + heightOffset - curveOffset),
                                       control: CGPoint(x: viewCenter.x,
                                                        y: (rect.size.height - heightOffset) + heightOffset))

                context.addLine(to: CGPoint(x: rect.size.width - curveOffset,
                                            y: rect.size.height - heightOffset - 1.5))

                context.closePath()
                context.setFillColor(lambdaBgColor.cgColor)
                context.fillPath()

                //MARK: - Inner Logo
                context.beginPath()
                context.move(to: CGPoint(x: viewCenter.x,
                                         y: viewCenter.y + logoWidth))
                context.addLine(to: CGPoint(x: viewCenter.x - logoWidth * 3.5,
                                            y: viewCenter.y + logoHeight * 2))
                context.addLine(to: CGPoint(x: viewCenter.x - logoWidth * 7,
                                            y: viewCenter.y + logoHeight * 2))
                context.addLine(to: CGPoint(x: viewCenter.x - logoWidth * 1.25,
                                            y: viewCenter.y - logoHeight))
                context.addLine(to: CGPoint(x: viewCenter.x + logoWidth * 1.25,
                                            y: viewCenter.y - logoHeight))
                context.addLine(to: CGPoint(x: viewCenter.x + logoWidth * 7,
                                            y: viewCenter.y + logoHeight * 2))
                context.addLine(to: CGPoint(x: viewCenter.x + logoWidth * 3.5,
                                            y: viewCenter.y + logoHeight * 2))

                context.closePath()
                context.setFillColor(lambdaIconColor.cgColor)
                context.fillPath()
        
            }
        }
        //MARK: - Constraints
        
    
    }
