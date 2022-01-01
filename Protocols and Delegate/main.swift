protocol AdvancedLifeSupport {
    func performCPR()
}

// Xử lý cuộc gọi khẩn cấp
class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?

    // đánh giá tình huống
    func assessSituational() {
        print("Can you tell me what happened?")
    }

    // cấp cứu y tế
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

// Y tế
struct Paramedic: AdvancedLifeSupport {
    // Người xử lý
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }

    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }

}

// Bác sĩ
class Doctor: AdvancedLifeSupport {

    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }

    func performCPR() {
        print("The Doctor does chest compressions, 30 per second.")
    }

    func useStethoscope() {
        print("Sings staying alive by the BeeGees.")
    }
}

// Bác sĩ phẩu thuật
class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings stay alive by the BeeGees.")
    }

    func useElectricDrill() {
        print("Whirr...")
    }
}

let mimi = EmergencyCallHandler()
// let quyet = Paramedic(handler: mimi)
let nhat = Surgeon(handler: mimi)

mimi.assessSituational()
mimi.medicalEmergency()

