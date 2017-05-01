//
//  GameScene.swift
//  Land of Plenty
//
//  Created by Ryan Lee on 4/1/17.
//  Copyright © 2017 Creaky-Door. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var player : SKSpriteNode!
    
    override func sceneDidLoad() {
        
    }
    
    override func didMove(to view: SKView) {
        self.view!.allowsTransparency = true
        self.view!.backgroundColor = UIColor.clear
    
        self.backgroundColor = UIColor.clear
        
        player = SKSpriteNode(imageNamed: "red_dot")
        player.size = CGSize(width: 50.0, height: 50.0)
        player.position = self.view!.center
    
        player.zPosition = 5
        player.physicsBody = SKPhysicsBody(texture: player.texture!, size: player.size)
        player.physicsBody?.affectedByGravity = false
        
        print("height\(view.frame.size.height) width\(view.frame.size.width)")
        
        addChild(player)
    }
}
