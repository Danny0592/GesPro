//
//  NewProjectView.swift
//  GesPro2
//
//  Created by daniel ortiz millan on 03/06/24.
//

import SwiftUI

struct NewProjectView: View {
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var deadline: Date = Date()
    @State private var assignedEmail: String = ""
    
    @EnvironmentObject var projectManager: ProjectManager

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Título del Proyecto")) {
                    TextField("Título", text: $title)
                        .autocapitalization(.words)
                }
                
                Section(header: Text("Descripción del Proyecto")) {
                    TextEditor(text: $description)
                        .frame(height: 150) // Ajusta la altura del editor de texto
                }
                
                Section(header: Text("Fecha Límite")) {
                    DatePicker("Fecha Límite", selection: $deadline, displayedComponents: .date)
                }
                
                Section(header: Text("Asignado a")) {
                    TextField("Correo Electrónico", text: $assignedEmail)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                }
                
                Button(action: {
                    // Acción para guardar el nuevo proyecto
                    projectManager.addProject(title: title, description: description, deadline: deadline, assignedEmail: assignedEmail)
                    // Limpiar los campos después de guardar
                    title = ""
                    description = ""
                    deadline = Date()
                    assignedEmail = ""
                }) {
                    Text("Crear Proyecto")
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationTitle("Nuevo Proyecto")
        }
    }
}

struct NewProjectView_Previews: PreviewProvider {
    static var previews: some View {
        NewProjectView().environmentObject(ProjectManager())
    }
}





/*import SwiftUI

struct NewProjectView: View {
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var deadline: Date = Date()
    @State private var assignedEmail: String = ""

    var body: some View {
        NavigationView {
            
            Form {
                Section(header: Text("Título del Proyecto")) {
                    TextField("Título", text: $title)
                        .autocapitalization(.words)
                }
                
                Section(header: Text("Descripción del Proyecto")) {
                                   TextEditor(text: $description)
                                       .frame(height: 150) // Ajusta la altura del editor de texto
                                       
                               }
                
                Section(header: Text("Fecha Límite")) {
                    DatePicker("Fecha Límite", selection: $deadline, displayedComponents: .date)
                }
                
                Section(header: Text("Asignado a")) {
                    TextField("Correo Electrónico", text: $assignedEmail)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                }
                
                Button(action: {
                    // Acción para guardar el nuevo proyecto
                    print("Proyecto guardado")
                    print("Título: \(title)")
                    print("Descripción: \(description)")
                    print("Fecha Límite: \(deadline)")
                    print("Asignado a: \(assignedEmail)")
                }) {
                    Text("Crear Proyecto")
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationTitle("Nuevo Proyecto")
        }
        
    }
}

struct NewProjectView_Previews: PreviewProvider {
    static var previews: some View {
        NewProjectView()
    }
}*/





