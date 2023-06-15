//
//  Prescription.swift
//  HeathApp
//
//  
//

import SwiftUI

struct Prescription: Identifiable {
    let id = UUID ()
    let name: String
    let notes: String
    let reminder: String
}
class PrescriptionManager: ObservableObject {
    @Published var prescriptions: [Prescription] = []
    
    func addPrescription(name: String, notes:String, reminder:String){
        let newPrescription = Prescription(name: name, notes: notes, reminder: reminder)
        prescriptions.append(newPrescription)
    }
    func removePrescription(at index: Int){
        prescriptions.remove(at: index)
    }
    
}

struct Prescriptions: View {
    @ObservedObject var prescriptionManager = PrescriptionManager()
    
    @State private var prescriptionName = ""
    @State private var prescriptionNotes = ""
    @State private var prescriptionReminder = ""
    @State private var textField = ""
    var body: some View {
        NavigationView {
            
            ZStack{
                Color(red: 1, green: 0.98, blue: 0.976)
                    .ignoresSafeArea()
                VStack {
                    Text("Prescription")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.3568627450980392, green: 0.4627450980392157, blue: 0.5019607843137255))
                    Form{
                        
                        
                        Section(header:Text("Add Prescription")
                            .foregroundColor(Color(red: 0.3568627450980392, green: 0.4627450980392157, blue: 0.5019607843137255))){
                                TextField("Name", text:$prescriptionName)
                                TextField("Notes", text:$prescriptionNotes)
                                TextField("Reminder", text:$prescriptionReminder)
                                
                                
                                Button(action: {
                                    prescriptionManager.addPrescription(name:prescriptionName, notes:prescriptionNotes,reminder:prescriptionReminder)
                                    prescriptionName = ""
                                    prescriptionNotes = ""
                                    prescriptionReminder = ""
                                    
                                }) {
                                    Text("Add")
                                        .foregroundColor(Color(red: 0.3568627450980392, green: 0.4627450980392157, blue: 0.5019607843137255))
                                }
                                
                            }
                        Section(header: Text("Prescriptions"))
                        {
                            ForEach(prescriptionManager.prescriptions) { prescription in VStack(alignment: .leading) {
                                Text(prescription.name)
                                
                                
                                
                            }
                            }
                            
                            
                        }
                        
                        
                        
                    }
                }
            }
            
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}



