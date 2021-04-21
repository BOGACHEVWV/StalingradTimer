//
//  TimerSettingsScreen.swift
//  StalingradTimer
//
//  Created by mac on 21.04.2021.
//

import SwiftUI

struct TimerSettingsScreen: View {
    
    @State private var enableDarkMode = true
    
    @State private var currentDate = Date()
    
    var body: some View {
        NavigationView {
        Form {
         
            Section(header: Text("")){
               
                    DatePicker("Подготовка", selection: $currentDate, displayedComponents: .hourAndMinute)
//                        .datePickerStyle(FieldDatePickerStyle())
            }
            Section(header: Text("")){
                    DatePicker("Тренировка", selection: $currentDate, displayedComponents: .hourAndMinute)
//                        .datePickerStyle(FieldDatePickerStyle())
                DatePicker("Отдых", selection: $currentDate, displayedComponents: .hourAndMinute)
            
            }
                Section(header: Text("")){
                    DatePicker("Раунды", selection: $currentDate, displayedComponents: .hourAndMinute)
                    DatePicker("Циклы", selection: $currentDate, displayedComponents: .hourAndMinute)
                    DatePicker("Востановление", selection: $currentDate, displayedComponents: .hourAndMinute)
                
            }
        } .navigationBarTitle(Text("Установка таймера"), displayMode: .inline)
        }
    }
}

struct TimerSettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimerSettingsScreen()
    }
}