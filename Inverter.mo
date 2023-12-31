model Inverter
  Modelica.Electrical.Analog.Ideal.IdealDiode d1 annotation(
    Placement(visible = true, transformation(origin = {20, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch s1 annotation(
    Placement(visible = true, transformation(origin = {-4, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Ideal.IdealDiode d2 annotation(
    Placement(visible = true, transformation(origin = {20, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch s2 annotation(
    Placement(visible = true, transformation(origin = {-4, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage v1(V = 100)  annotation(
    Placement(visible = true, transformation(origin = {-56, 58}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage v2(V = 100)  annotation(
    Placement(visible = true, transformation(origin = {-56, -6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor r1(R = 5e3)  annotation(
    Placement(visible = true, transformation(origin = {64, 34}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Capacitor c1(C(displayUnit = "F") = 318e-9)  annotation(
    Placement(visible = true, transformation(origin = {64, 8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.SawTooth saw1(amplitude = 1, period = 5e-5)  annotation(
    Placement(visible = true, transformation(origin = {-68, -86}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine1(amplitude = 0.8, f = 60)  annotation(
    Placement(visible = true, transformation(origin = {-68, -66}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = -1)  annotation(
    Placement(visible = true, transformation(origin = {-36, -66}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression bool_s1(y = greater1.y)  annotation(
    Placement(visible = true, transformation(origin = {-31, 58}, extent = {{-5, -10}, {5, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression bool_s2(y = greater2.y)  annotation(
    Placement(visible = true, transformation(origin = {-31, -6}, extent = {{-5, -10}, {5, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Greater greater1 annotation(
    Placement(visible = true, transformation(origin = {-36, -86}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Logical.Greater greater2 annotation(
    Placement(visible = true, transformation(origin = {6, -86}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-74, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {64, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 1e-3) annotation(
    Placement(visible = true, transformation(origin = {-42, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1e-3) annotation(
    Placement(visible = true, transformation(origin = {-42, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor vs1 annotation(
    Placement(visible = true, transformation(origin = {64, 68}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(s2.p, d2.p) annotation(
    Line(points = {{-4, -16}, {20, -16}}, color = {0, 0, 255}));
  connect(v2.p, v1.n) annotation(
    Line(points = {{-56, 4}, {-56, 48}}, color = {0, 0, 255}));
  connect(d1.n, s1.n) annotation(
    Line(points = {{20, 68}, {-4, 68}}, color = {0, 0, 255}));
  connect(s1.p, d1.p) annotation(
    Line(points = {{-4, 48}, {20, 48}}, color = {0, 0, 255}));
  connect(s2.n, s1.p) annotation(
    Line(points = {{-4, 4}, {-4, 48}}, color = {0, 0, 255}));
  connect(d2.n, s2.n) annotation(
    Line(points = {{20, 4}, {-4, 4}}, color = {0, 0, 255}));
  connect(d1.p, r1.p) annotation(
    Line(points = {{20, 48}, {64, 48}, {64, 44}}, color = {0, 0, 255}));
  connect(r1.n, c1.p) annotation(
    Line(points = {{64, 24}, {64, 18}}, color = {0, 0, 255}));
  connect(sine1.y, gain1.u) annotation(
    Line(points = {{-61.4, -66}, {-43.4, -66}}, color = {0, 0, 127}));
  connect(bool_s1.y, s1.control) annotation(
    Line(points = {{-25.5, 58}, {-16, 58}}, color = {255, 0, 255}));
  connect(bool_s2.y, s2.control) annotation(
    Line(points = {{-25.5, -6}, {-15.5, -6}}, color = {255, 0, 255}));
  connect(greater1.u1, sine1.y) annotation(
    Line(points = {{-43.2, -86}, {-50.9, -86}, {-50.9, -66}, {-61.2, -66}}, color = {0, 0, 127}));
  connect(greater2.u1, gain1.y) annotation(
    Line(points = {{-1, -86}, {-7.4, -86}, {-7.4, -66}, {-29.2, -66}}, color = {0, 0, 127}));
  connect(ground.p, v1.n) annotation(
    Line(points = {{-74, 26}, {-74, 48}, {-56, 48}}, color = {0, 0, 255}));
  connect(ground1.p, c1.n) annotation(
    Line(points = {{64, -8}, {64, -2}}, color = {0, 0, 255}));
  connect(resistor.p, s2.p) annotation(
    Line(points = {{-32, -22}, {-4, -22}, {-4, -16}}, color = {0, 0, 255}));
  connect(resistor.n, v2.n) annotation(
    Line(points = {{-52, -22}, {-56, -22}, {-56, -16}}, color = {0, 0, 255}));
  connect(resistor1.p, s1.n) annotation(
    Line(points = {{-32, 80}, {-4, 80}, {-4, 68}}, color = {0, 0, 255}));
  connect(resistor1.n, v1.p) annotation(
    Line(points = {{-52, 80}, {-56, 80}, {-56, 68}}, color = {0, 0, 255}));
  connect(vs1.n, r1.p) annotation(
    Line(points = {{64, 58}, {64, 44}}, color = {0, 0, 255}));
  connect(vs1.p, d1.n) annotation(
    Line(points = {{64, 78}, {20, 78}, {20, 68}}, color = {0, 0, 255}));
  connect(saw1.y, greater2.u2) annotation(
    Line(points = {{-62, -86}, {-56, -86}, {-56, -98}, {-8, -98}, {-8, -90}, {-2, -90}}, color = {0, 0, 127}));
  connect(greater1.u2, saw1.y) annotation(
    Line(points = {{-44, -90}, {-56, -90}, {-56, -86}, {-62, -86}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Inverter;
