struct HorizontalContentView: View {
    var body: some View {
        HStack(alignment: .top) {
            Text("Leading")
                .frame(width: 100, height: 50)
                .background(Color.yellow)

            VStack(alignment: .leading) {
                Text("Aligned")
                Text("Text")
            }
            .frame(width: 100, height: 50)
            .background(Color.green)
            
            Text("Trailing")
                .frame(width: 100, height: 50)
                .background(Color.blue)
        }
    }
}

struct HorizontalContentView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalContentView()
    }
}
