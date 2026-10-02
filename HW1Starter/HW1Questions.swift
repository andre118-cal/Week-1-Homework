//
//  HW1Questions.swift
//  HW1Starter
//
//  Created by Justin Wong on 9/8/24.
//

import Foundation

class HW1Questions {
    
    // MARK: - Task 1A. File Names
    
    /// Get the file names of a certain given length, excluding the file type name.
    /// - Parameters:
    ///   - filenames: An array of file names
    ///   - count: Target length of file name (excluding the file type)
    /// - Returns: An array of file names whose excluded file type length matches `count`.
    func getFileNames(for filenames: [String], withCount count: Int) -> [String] {
        var files = [String]()
        
        for file in filenames{
            print(file)
            
            let splitName = file.split(separator: ".")
            
            let name = splitName[0]
            
            if name.count == count {
                files.append(file)
            }
        }
        return files
    }
    
    
    
    // MARK: - Task 1B. Escape
    
    enum Direction {
        case left
        case right
        case up
        case down
    }
    
    /// Returns a boolean if we can escape given the following list of instructions and locations.
    /// - Parameters:
    ///   - directions: An array of instructions detailing how to escape
    ///   - startingIndex: The starting index
    ///   - escapeIndex: The ending index
    /// - Returns: A boolean. True if we can escape. False otherwise.
    func canEscape(withDirections directions: [[Direction]], startingIndex: Int, escapeIndex: Int) -> Bool {
        
        for instructions in directions {
            var index = startingIndex
            
            if instructions.contains(.up) || instructions.contains(.down) {
                
                continue 
            }
            for dir in instructions {
                if dir == .right {
                    index += 1
                } else if dir == .left {
                    index -= 1
                } else if dir == .up {
                    index += 0
                } else if dir == .down {
                    index += 0
                }
                
                
                }
            if index == escapeIndex {
                return true
            }
            
            
        }
        return false
        
    }
    
}
