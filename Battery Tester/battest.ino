#define R1 150.0
#define R2 120.0


// The Setup
void setup() {

   // Set the pin modes
   pinMode(2, OUTPUT);
   pinMode(3, OUTPUT);


}
void loop(){
float Vout;
float Vin;
//Calculate Output Voltage
Vout = analogRead(A0) * (5.0/1023.0);
Vin = (R1 + R2)/(R2) * Vout;

//output voltage determines which led to power. Red for low, Green for High
if (Vin >= 7)
   digitalWrite(2, HIGH);
else
   digitalWrite(2, LOW);


if(Vin <= 7)
   digitalWrite(3, HIGH);
else
   digitalWrite(3, LOW);
}
