import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        //white background
        var rect = CGRect(x: 55, y: 20, width: 300, height: 200)
        let backGroundView = UIView(frame: rect)
        backGroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        //redbanner
        rect = CGRect(x: 0, y: 0, width: 300, height: 100)
        let redBanner = UIView(frame: rect)
        redBanner.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        backGroundView.addSubview(redBanner)
        backGroundView.layer.borderWidth = 1
        view.addSubview(backGroundView)
        //moon
        //eclip
        let ecPath = UIBezierPath(ovalIn: CGRect(x:29, y: 11, width: 80 , height: 80))
        //moon circle
        let moonPath = UIBezierPath(ovalIn: CGRect(x: 43, y: 8, width: 83, height: 83))
        
        // startop
        let topPath = UIBezierPath()
        topPath.move(to: CGPoint(x: 74, y: 24))
        topPath.addLine(to: CGPoint(x: 75, y: 28))
        topPath.addLine(to: CGPoint(x: 80, y: 29 ))
        topPath.addLine(to: CGPoint(x: 77, y: 32))
        topPath.addLine(to: CGPoint(x: 78, y: 37))
        topPath.addLine(to: CGPoint(x: 74, y: 35))
        topPath.addLine(to: CGPoint(x: 70, y: 37))
        topPath.addLine(to: CGPoint(x: 71, y: 33))
        topPath.addLine(to: CGPoint(x: 69, y: 30))
        topPath.addLine(to: CGPoint(x: 74, y: 29))
        topPath.close()
        
        //but
        let butPath = UIBezierPath()
        butPath.move(to: CGPoint(x: 65, y: 61))
        butPath.addLine(to: CGPoint(x: 66, y: 63))
        butPath.addLine(to: CGPoint(x: 71, y: 65))
        butPath.addLine(to: CGPoint(x: 68, y: 67 ))
        butPath.addLine(to: CGPoint(x: 69, y: 73))
        butPath.addLine(to: CGPoint(x: 65, y: 69))
        butPath.addLine(to: CGPoint(x: 62, y: 72))
        butPath.addLine(to: CGPoint(x: 62, y: 68))
        butPath.addLine(to: CGPoint(x: 59, y: 65))
        butPath.addLine(to: CGPoint(x: 63, y: 64))
        butPath.close()
        
        
        //twin b
        let twinbPath = UIBezierPath()
        twinbPath.move(to: CGPoint(x: 83, y: 61))
        twinbPath.addLine(to: CGPoint(x:84, y: 63))
        twinbPath.addLine(to: CGPoint(x: 90, y: 65))
        twinbPath.addLine(to: CGPoint(x: 86, y: 67 ))
        twinbPath.addLine(to: CGPoint(x: 88, y: 73))
        twinbPath.addLine(to: CGPoint(x: 84, y: 69))
        twinbPath.addLine(to: CGPoint(x: 79, y: 72))
        twinbPath.addLine(to: CGPoint(x: 81, y: 68))
        twinbPath.addLine(to: CGPoint(x: 78, y: 65))
        twinbPath.addLine(to: CGPoint(x: 82, y: 64))
        twinbPath.close()
        
        // star mid start here
        let starPath = UIBezierPath()
        starPath.move(to: CGPoint(x: 60, y: 39))
        starPath.addLine(to: CGPoint(x: 61, y: 43))
        starPath.addLine(to: CGPoint(x: 65, y: 46))
        starPath.addLine(to: CGPoint(x: 62, y: 47))
        starPath.addLine(to: CGPoint(x: 64, y: 52))
        starPath.addLine(to: CGPoint(x: 60, y: 50))
        starPath.addLine(to: CGPoint(x: 55, y: 52))
        starPath.addLine(to: CGPoint(x: 57, y: 47))
        starPath.addLine(to: CGPoint(x: 54, y: 44))
        starPath.addLine(to: CGPoint(x: 58, y: 43))
        starPath.close()
        
        //twin m
        let twinmPath = UIBezierPath()
        twinmPath.move(to: CGPoint(x: 94, y: 39))
        twinmPath.addLine(to: CGPoint(x: 95, y: 43))
        twinmPath.addLine(to: CGPoint(x: 100, y: 46))
        twinmPath.addLine(to: CGPoint(x: 95, y: 47))
        twinmPath.addLine(to: CGPoint(x: 98, y: 52))
        twinmPath.addLine(to: CGPoint(x: 94, y: 50))
        twinmPath.addLine(to: CGPoint(x: 91, y: 52))
        twinmPath.addLine(to: CGPoint(x: 91, y: 47))
        twinmPath.addLine(to: CGPoint(x: 88, y: 44))
        twinmPath.addLine(to: CGPoint(x: 92, y: 43))
        twinmPath.close()
        
        //combine
        starPath.append(topPath)
        starPath.append(butPath)
        starPath.append(twinbPath)
        starPath.append(twinmPath)
        
        // show
        let starShape = CAShapeLayer()
        starShape.fillColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        starShape.strokeColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        starShape.lineWidth = 1
        starShape.path = starPath.cgPath
        let moonShape = CAShapeLayer()
        moonShape.fillColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
        moonShape.path = moonPath.cgPath
        let ecShape = CAShapeLayer()
        ecShape.fillColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        ecShape.path = ecPath.cgPath
        redBanner.layer.addSublayer(ecShape)
        redBanner.layer.addSublayer(moonShape)
        redBanner.layer.addSublayer(starShape)
     
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
