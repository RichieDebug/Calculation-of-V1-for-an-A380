# Calculation-of-V1-for-an-A380

Goal of the project:

Calculate the maximum rejected takeoff speed (also known as V1) and the corresponding position
the farthest along the runway from where an Airbus A380 with maximum takeoff weight can still
safely come to a full standstill before it runs over the end of runway 28R at San Francisco
International Airport.

Given information:
Airport information:
• Length of runway 28R at SFO: S28R = 3,618 m
• Elevation of the airport: sea level
• Normal coefficient of rolling friction: mu_r = 0.02
• Coefficient of rolling friction while braking: mu_r = 0.068
Aircraft weight, engine, and geometric information:
• Maximum Takeoff Weight MTOW: WMTOW = 575,000 kg * g0
• Maximum thrust for all 4 engines: Tmax = 974,400 N
• Maximum reverse thrust: Tr = 15% of Tmax
• Height of wingtip above the ground: hwingtip = 7.8 m
• Wingspan: b = 79.75 m
• Total wing surface area: S = 845 m2
• Span efficiency coefficient: e1 = 0.9
Aircraft aerodynamic properties:
• Maximum lift coefficient in takeoff configuration: CL,TO = 1.423
• Maximum lift coefficient in landing configuration: CL,L = 1.203
• Parasitic drag coefficient at takeoff: CD,0 TO = 0.013
• Parasitic drag coefficient with spoilers deployed: CD,0 spoilers = 1.1  CD,0 TO
