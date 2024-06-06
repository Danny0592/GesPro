//
//  NewPpojectModel.swift
//  GesPro2
//
//  Created by daniel ortiz millan on 04/06/24.
//

import SwiftUI
import Combine

// Clase para el proyecto
struct Project: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var deadline: Date
    var assignedEmail: String
}

// Clase para gestionar los proyectos
class ProjectManager: ObservableObject {
    @Published var projects: [Project] = []

    func addProject(title: String, description: String, deadline: Date, assignedEmail: String) {
        let newProject = Project(title: title, description: description, deadline: deadline, assignedEmail: assignedEmail)
        projects.append(newProject)
    }
}

