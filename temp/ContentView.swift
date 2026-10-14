import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 30) {
          
            Text("Simple Counter")
                .font(.largeTitle)
                .fontWeight(.bold)
            
           
            Text("\(count)")
                .font(.system(size: 80, weight: .heavy, design: .rounded))
                .foregroundColor(count == 0 ? .primary : (count > 0 ? .green : .red))
                .animation(.default, value: count)
            
           
            HStack(spacing: 40) {
           
                Button(action: { count -= 1 }) {
                    Image(systemName: "minus.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.gray)
                }
            
                Button(action: { count += 1 }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.blue)
                }
            }
            
            if count != 0 {
                Button("Reset") {
                    count = 0
                }
                .font(.headline)
                .foregroundColor(.secondary)
                .transition(.opacity)
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
