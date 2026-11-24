# Traffic Light Simulator
CDA 3104 "Comp Org'n & Assem Lang Prog" final project by
Mike Collison, Lance Vixler, and Sahar Holmes.
Two lanes of traffic; red, yellow, and green lights; independent crosswalk signals.

## Project Requirements
> Type an X inside a set of brackets below to mark the item completed :D

**1. Physical Input**
- [ ] At least one physical input that a person or the environment changes: pushbutton, switch, potentiometer, or sensor.

**2. Two Different Logical Decisions** 
- [ ] At least two separate decisions that change what the system does.
  - At least one decision is based on a physical input.
  - The other can be based on time, a count, a stored state, or another input.

**Example:** a crosswalk button press requests a walk signal (input decision); the light changes when the timer
count reaches 5 seconds (time decision). Two branches that test the same condition count as one decision.

**3. Hardware Timer**
- [ ] At least one AVR hardware timer. Polled or interrupt-driven are both fine.

**4. Hardware Interrupt**
- [ ] At least one hardware interrupt that is part of the system’s behavior: timer, external, or pin-change.

**5. Hardware Output**
- [ ] At least one external device: LEDs, LCD, or 7 segment display, motor or servo, buzzer.